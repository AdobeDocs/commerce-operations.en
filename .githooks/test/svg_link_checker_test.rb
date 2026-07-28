# frozen_string_literal: true

# Copyright 2026 Adobe. All rights reserved.
# Licensed under the MIT License. See license.md for details.

# Unit tests for the pre-commit hook's SVG link-detection logic.
# Run with: ruby .githooks/test/svg_link_checker_test.rb
#
# Uses only Ruby's bundled minitest, so no gems or _jekyll setup are required.

require 'minitest/autorun'
require_relative '../svg_link_checker'

# Exercises SvgLinkChecker's pure candidate-matching and relative-reference-resolution logic.
class SvgLinkCheckerTest < Minitest::Test
  ROOT = '/repo'

  # Resolve an SVG repo-relative path to the absolute form the hook passes in.
  def svg_abs(repo_relative)
    File.expand_path(repo_relative, ROOT)
  end

  # Resolve a referencing file's directory to the absolute form the hook passes in.
  def md_dir_for(repo_relative_md)
    File.dirname(File.expand_path(repo_relative_md, ROOT))
  end

  def resolves?(content, md_path, basename, svg_repo_path)
    SvgLinkChecker.reference_resolves_to?(
      content, md_dir_for(md_path), basename, svg_abs(svg_repo_path), ROOT
    )
  end

  # The pattern targets POSIX ERE (git grep -E). Compiling it as a Ruby Regexp is a close-enough
  # proxy for a unit test; `[^]]` is valid in both but warns in Ruby, so silence that one warning.
  def candidate_regexp(basename)
    pattern = SvgLinkChecker.candidate_grep_pattern(basename)
    original = $VERBOSE
    $VERBOSE = nil
    Regexp.new(pattern)
  ensure
    $VERBOSE = original
  end

  # --- candidate_grep_pattern -------------------------------------------------

  def test_candidate_pattern_matches_markdown_reference
    assert_match candidate_regexp('icon.svg'), '![Alt](./assets/icon.svg)'
  end

  def test_candidate_pattern_matches_html_reference
    assert_match candidate_regexp('icon.svg'), '<img src="./assets/icon.svg" alt="x">'
  end

  def test_candidate_pattern_ignores_bare_prose_mention
    refute_match candidate_regexp('icon.svg'), 'The file icon.svg lives in the assets directory.'
  end

  # --- reference_resolves_to? -------------------------------------------------

  def test_resolves_relative_markdown_reference
    content = '![diagram](./assets/icon.svg){width="550"}'
    assert resolves?(content, 'help/catalog/intro.md', 'icon.svg', 'help/catalog/assets/icon.svg')
  end

  def test_resolves_html_img_reference
    content = '<img src="./assets/icon.svg" alt="x">'
    assert resolves?(content, 'help/catalog/intro.md', 'icon.svg', 'help/catalog/assets/icon.svg')
  end

  def test_resolves_parent_relative_reference
    content = '![diagram](../shared/icon.svg)'
    assert resolves?(content, 'help/catalog/intro.md', 'icon.svg', 'help/shared/icon.svg')
  end

  # Markdown allows an optional title after the URL: ![alt](url "title"). The title must not be
  # folded into the captured path, or the reference would fail to resolve.
  def test_resolves_markdown_reference_with_title
    content = '![diagram](./assets/icon.svg "Diagram title")'
    assert resolves?(content, 'help/catalog/intro.md', 'icon.svg', 'help/catalog/assets/icon.svg')
  end

  # Repo-root-absolute references (e.g. help/_includes/snippets.md's <img src="/help/assets/...">)
  # map the site root to the repo root, so they must resolve against the repo root, not md_dir.
  def test_resolves_repo_root_absolute_html_reference
    content = '<img alt="Adobe Commerce" src="/help/assets/adobe-logo.svg" width="20" />'
    assert resolves?(content, 'help/_includes/snippets.md', 'adobe-logo.svg', 'help/assets/adobe-logo.svg')
  end

  def test_resolves_repo_root_absolute_markdown_reference
    content = '![Adobe Commerce](/help/assets/adobe-logo.svg)'
    assert resolves?(content, 'help/_includes/persistent-cart-configuration.md', 'adobe-logo.svg',
                     'help/assets/adobe-logo.svg')
  end

  # A repo-root-absolute URL must not be resolved relative to the referencing file's directory.
  def test_repo_root_absolute_reference_does_not_resolve_against_md_dir
    content = '<img src="/help/assets/adobe-logo.svg" />'
    refute resolves?(content, 'help/_includes/snippets.md', 'adobe-logo.svg',
                     'help/_includes/help/assets/adobe-logo.svg')
  end

  # The reviewer's bug: two SVGs share a basename in different directories. A reference to one
  # must not count as a link to the other.
  def test_same_basename_in_different_directory_is_not_a_match
    content = '![diagram](./assets/icon.svg)' # lives in help/catalog, references help/catalog/assets
    refute resolves?(content, 'help/catalog/intro.md', 'icon.svg', 'help/stores/assets/icon.svg')
  end

  # The earlier suffix bug: "icon.svg" must not match a reference to "bigicon.svg".
  def test_suffix_collision_is_not_a_match
    content = '![diagram](./assets/bigicon.svg)'
    refute resolves?(content, 'help/catalog/intro.md', 'icon.svg', 'help/catalog/assets/icon.svg')
  end

  def test_prose_mention_without_image_reference_is_not_a_match
    content = 'See icon.svg for the diagram source.'
    refute resolves?(content, 'help/catalog/intro.md', 'icon.svg', 'help/catalog/assets/icon.svg')
  end

  def test_matches_when_multiple_references_and_one_resolves
    content = <<~MD
      ![wrong](./assets/bigicon.svg)
      ![right](./assets/icon.svg)
    MD
    assert resolves?(content, 'help/catalog/intro.md', 'icon.svg', 'help/catalog/assets/icon.svg')
  end
end
