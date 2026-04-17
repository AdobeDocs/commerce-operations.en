#!/usr/bin/env python3
"""
Add languages to bare Markdown fenced code openings under help/ (ExL style).

Run from repo root:
  python3 help/_scripts/apply_exl_code_fence_languages.py

Idempotent for typical cases: does not double-prefix if language already present.
"""

from __future__ import annotations

import os
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]  # help/

FENCE = re.compile(r"^(\s*)(`{3,})(.*)$")
SAME_LINE_FENCE = re.compile(r"^(\s*)```(.+)```\s*$")


def infer_language(body_lines: list[str]) -> str:
    """Pick a fence language from the first lines of block content."""
    nonempty = [ln.rstrip("\n\r") for ln in body_lines if ln.strip()]
    joined = "\n".join(nonempty[:80])
    if not joined.strip():
        return "text"

    first = nonempty[0].strip() if nonempty else ""
    fl = first.lower()
    j = joined.lower()

    if first.startswith("diff --git") or "--- a/" in joined[:200] or "+++ b/" in joined[:200]:
        return "diff"
    if first.startswith("#!"):
        return "shell"
    if first.startswith("<?php") or first.startswith("<? "):
        return "php"
    if first.startswith("<?xml") or (first.startswith("<") and "</" in joined[:500]):
        if "<VirtualHost" in joined or "</VirtualHost>" in joined:
            return "xml"
        if first.startswith("<!DOCTYPE") or first.startswith("<html"):
            return "html"
        if re.match(r"^<[a-zA-Z][\w:.-]*(\s|>|/)", first):
            return "xml"
    if first.startswith("---") and "\n" in joined and re.search(r"^[\w.-]+:\s", joined, re.M):
        return "yaml"
    if re.match(r"^[\w.-]+:\s", first) and not first.startswith("http"):
        # Heuristic: YAML-like key — avoid bare URLs
        if "{" not in first.split(":")[0]:
            return "yaml"

    sql_kw = ("select ", "insert ", "update ", "delete ", "with ", "create ", "drop ", "alter ", "explain ", "describe ", "show tables", "show index")
    if fl.startswith(sql_kw):
        return "sql"

    if first.startswith("{") or first.startswith("["):
        if re.search(r"\b(query|mutation|subscription)\b", j) or "graphql" in j:
            return "graphql"
        if re.search(r"^\s*[\[{]\s*\"", joined) or re.search(r"'\s*:\s*", joined[:400]):
            return "json"
        if "categorylist" in j or "products(" in j or "customer(" in j or "cart(" in j:
            return "graphql"
        if re.search(r"\b(uid|sku|items)\b", j) and "(" in joined[:300]:
            return "graphql"

    if "query " in fl or fl.startswith("mutation ") or fl.startswith("subscription "):
        return "graphql"

    if first.startswith("(") and "graphql" in j:
        return "graphql"

    bash_hints = (
        "bin/magento ",
        "magento ",
        "composer ",
        "docker ",
        "kubectl ",
        "mysql ",
        "curl ",
        "wget ",
        "sudo ",
        "export ",
        "apt-get",
        "yum ",
        "dnf ",
        "systemctl ",
        "service ",
        "php ",
        "./",
        "grep ",
        "find ",
        "sed ",
        "awk ",
        "chmod ",
        "chown ",
        "ssh ",
        "redis-cli",
        "varnish",
        "nginx -t",
    )
    if any(h in j for h in bash_hints):
        return "shell"
    if first.startswith("$"):
        return "shell"

    if first.startswith("server {") or "listen " in fl and "server_name" in j:
        return "nginx"
    if "<VirtualHost" in joined[:300]:
        return "xml"

    if first.startswith("function ") or first.startswith("const ") or first.startswith("let ") or first.startswith("var "):
        return "javascript"
    if "require(" in joined[:200] or "module.exports" in joined[:200]:
        return "javascript"

    if first.startswith("@media") or (first.startswith(".") and "{" in first) or (first.startswith("#") and "{" in first):
        return "css"

    if first.startswith("<!--") or first.startswith("<!DOCTYPE"):
        return "html"

    if re.match(r"^\[[A-Za-z0-9_.-]+\]", first):
        return "ini"

    return "text"


def transform_content(text: str) -> tuple[str, dict[str, int]]:
    stats = {"same_line_fixed": 0, "bare_opening_fixed": 0}
    raw_lines = text.splitlines(keepends=True)

    # Pass 1: same-line ```content``` → inline `content`
    lines_out: list[str] = []
    for line in raw_lines:
        m = SAME_LINE_FENCE.match(line.rstrip("\n\r"))
        if m:
            indent, inner = m.group(1), m.group(2)
            inner_stripped = inner.strip()
            if inner_stripped and "```" not in inner_stripped:
                if "`" in inner_stripped:
                    # Use double backticks for inline code with single backticks inside
                    inline = f"{indent}``{inner_stripped}``\n"
                else:
                    inline = f"{indent}`{inner_stripped}`\n"
                lines_out.append(inline)
                stats["same_line_fixed"] += 1
                continue
        lines_out.append(line)

    # Pass 2: bare ``` openings only when NOT already inside a fenced block
    lines = lines_out
    out: list[str] = []
    in_code = False
    i = 0
    while i < len(lines):
        line = lines[i]
        m = FENCE.match(line.rstrip("\n\r"))
        if not m:
            out.append(line)
            i += 1
            continue

        indent, ticks, rest = m.group(1), m.group(2), m.group(3)
        if len(ticks) != 3:
            out.append(line)
            i += 1
            continue

        rest_stripped = rest.strip()

        if in_code:
            # Closing fence is ``` with no info string (optionally spaces only)
            if not rest_stripped:
                in_code = False
            out.append(line)
            i += 1
            continue

        # Not inside a fence
        if rest_stripped:
            in_code = True
            out.append(line)
            i += 1
            continue

        # Bare ``` opening (no language): collect body until closing ```
        opening_line = line
        body: list[str] = []
        i += 1
        while i < len(lines):
            lm = FENCE.match(lines[i].rstrip("\n\r"))
            if lm and len(lm.group(2)) == 3 and not lm.group(3).strip():
                closing = lines[i]
                lang = infer_language(body)
                out.append(f"{indent}```{lang}\n")
                out.extend(body)
                out.append(closing)
                stats["bare_opening_fixed"] += 1
                i += 1
                break
            body.append(lines[i])
            i += 1
        else:
            # No closing found; keep original opening and consumed lines
            out.append(opening_line)
            out.extend(body)
            break

    return "".join(out), stats


def main() -> int:
    total_stats = {"same_line_fixed": 0, "bare_opening_fixed": 0, "files_changed": 0}
    for dirpath, _, filenames in os.walk(ROOT):
        for name in filenames:
            if not name.endswith(".md"):
                continue
            if name == "apply_exl_code_fence_languages.py":
                continue
            path = Path(dirpath) / name
            if "_scripts" in path.parts:
                continue
            try:
                original = path.read_text(encoding="utf-8")
            except OSError:
                continue
            new, st = transform_content(original)
            for k in total_stats:
                if k in st:
                    total_stats[k] += st[k]
            if new != original:
                path.write_text(new, encoding="utf-8")
                total_stats["files_changed"] += 1

    print(
        "ExL fence fix complete:",
        f"files_changed={total_stats['files_changed']}",
        f"bare_opening_fixed={total_stats['bare_opening_fixed']}",
        f"same_line_fixed={total_stats['same_line_fixed']}",
    )
    return 0


if __name__ == "__main__":
    sys.exit(main())
