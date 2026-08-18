# frozen_string_literal: true

# Copyright 2026 Adobe. All rights reserved.
# Licensed under the MIT License. See license.md for details.

# Pure helpers for deciding whether an oversized SVG is actually referenced as an image from a
# file in help/. Extracted from the pre-commit hook so the reference-resolution logic (the part
# that has repeatedly needed correcting) can be unit-tested without git, rake, or the filesystem.
module SvgLinkChecker
  module_function

  # A broad `git grep -E` (POSIX ERE) pattern that finds files mentioning `basename` inside a
  # Markdown or HTML image reference. Intentionally loose: it is only a cheap pre-filter to gather
  # candidate files. Because it matches on the basename alone, it can over-match (e.g. "icon.svg"
  # also matches a reference to "bigicon.svg", and a same-named file in another directory). Each
  # candidate must be confirmed with `reference_resolves_to?` before being treated as a real link.
  def candidate_grep_pattern(basename)
    escaped = Regexp.escape(basename)
    "!\\[[^]]*\\]\\([^)]*#{escaped}[^)]*\\)|<img[^>]+src=[\"'][^\"']*#{escaped}[\"']"
  end

  # True if any Markdown or HTML image reference in `content` whose URL ends in `basename` resolves
  # to `svg_abs`. Most references in help/*.md are relative (e.g. `./assets/icon.svg`) and resolve
  # against `md_dir` (the directory of the referencing file); this is what distinguishes the real
  # target from a same-named file in a different directory. Some references are repo-root-absolute
  # (e.g. `/help/assets/adobe-logo.svg` in help/_includes/snippets.md); since the published site
  # root maps to the repo root, those resolve against `repo_root` instead.
  #
  # `md_dir`, `svg_abs`, and `repo_root` must all be absolute paths. `File.expand_path` here is pure
  # string manipulation — it never touches the filesystem — so this method is safe to unit-test.
  def reference_resolves_to?(content, md_dir, basename, svg_abs, repo_root)
    escaped = Regexp.escape(basename)
    # The Markdown URL ends at whitespace or `)` — a trailing space allows an optional title,
    # e.g. `![alt](icon.svg "Title")`, without folding the title into the captured path.
    urls = content.scan(/!\[[^\]]*\]\(\s*([^)\s]*#{escaped})(?=[\s)])/).flatten
    urls += content.scan(/<img[^>]+src=["']([^"']*#{escaped})["']/).flatten
    urls.any? do |url|
      if url.start_with?('/')
        File.expand_path(url.sub(%r{\A/+}, ''), repo_root) == svg_abs
      else
        File.expand_path(url, md_dir) == svg_abs
      end
    end
  end
end
