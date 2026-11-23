# frozen_string_literal: true

# Copyright 2026 Adobe. All rights reserved.
# Licensed under the MIT License. See license.md for details.

require 'minitest/autorun'
require 'open3'
require 'tmpdir'
require_relative '../rakelib/consolidated_whatsnew'

class ConsolidatedWhatsnewTest < Minitest::Test
  ROW = '| Added [documentation](https://example.com/doc). | Technical | [November 1, 2026](https://github.com/AdobeDocs/project/pull/1) |'

  def setup
    @directory = Dir.mktmpdir('consolidated-whatsnew-test-')
    @config = File.join(@directory, '_config.yml')
    @input = File.join(@directory, 'consolidated.md')
    @output = File.join(@directory, 'generated', 'consolidated.md')
    @calls = []
    @responses = {}
  end

  def teardown
    FileUtils.remove_entry(@directory)
  end

  def project(repo, title: repo, website: 'https://example.com/')
    { 'repo' => repo, 'title' => title, 'website' => website }
  end

  def configure(*projects)
    File.write(@config, {
      'repo' => 'AdobeDocs/test',
      'exclude' => ['tmp'],
      'kramdown' => { 'syntax_highlighter' => 'none' },
      'whatsnew_consolidated' => { 'projects' => projects }
    }.to_yaml)
  end

  def table(header: 'Date/source', rows: [ROW])
    "# What's new template\n\n## What's new\n\nUpdates from the source window.\n\n" \
      "| Description | Type | #{header} |\n|---|---|---|\n#{rows.join("\n")}\n"
  end

  def generate
    fetcher = lambda do |url|
      @calls << url
      repo = URI.parse(url).path.split('/')[2]
      response = @responses.fetch(repo)
      raise response if response.is_a?(Exception)

      response
    end
    ConsolidatedWhatsnew.new(fetcher: fetcher, config_path: @config, output_path: @output).generate
  end

  def previous_output
    FileUtils.mkdir_p(File.dirname(@output))
    File.write(@output, 'previous include')
  end

  def project_section(title, rows)
    "## #{title}\n\n#{ConsolidatedWhatsnew::HEADER}\n#{rows.join("\n")}"
  end

  def feedback_input(*sections)
    [ConsolidatedWhatsnew::TITLE, ConsolidatedWhatsnew::INTRO, *sections].join("\n\n") + "\n"
  end

  def filter_feedback
    ConsolidatedWhatsnew.new(config_path: @config).filter_feedback(input_path: @input, output_path: @output)
  end

  def test_global_order_suffix_routing_plain_headings_without_project_links_and_standardized_headers
    projects = [
      project('first.en', title: 'First [guide] & tools', website: 'https://example.com/guide(v2)'),
      project('middle.en-tools', title: "Developer's guide"),
      project('last.en', title: 'Last guide')
    ]
    configure(*projects)
    @responses = projects.to_h { |entry| [entry['repo'], table(header: entry['repo'].end_with?('.en') ? 'Date/source' : 'Date')] }
    generate
    content = File.read(@output)
    headings = content.lines.select { |line| line.start_with?('## ') }
    assert_equal [
      "## First \\[guide\\] &amp; tools\n",
      "## Developer&#39;s guide\n",
      "## Last guide\n"
    ], headings
    assert_includes content, "## First \\[guide\\] &amp; tools\n\nThese updates come from the *What's new* section of the " \
                             "[First \\[guide\\] &amp; tools](https://example.com/guide(v2)) home page.\n\n#{ConsolidatedWhatsnew::HEADER}\n"
    assert_includes content, "## Developer&#39;s guide\n\nThese updates come from the *What's new* section of the " \
                             "[Developer&#39;s guide](https://example.com/) home page.\n\n#{ConsolidatedWhatsnew::HEADER}\n"
    assert_equal 3, content.scan("These updates come from the *What's new* section").length
    refute content.lines.any? { |line| line.start_with?('[') }
    assert_equal %w[help src/pages help], @calls.map { |url| url.split('/main/')[1].split('/_includes/')[0] }
    assert_equal 3, content.scan(ConsolidatedWhatsnew::HEADER).length
    assert_equal 3, content.scan(ROW).length
    configure(*projects.reverse)
    generate
    assert_equal headings.reverse, File.readlines(@output).select { |line| line.start_with?('## ') }
  end

  def test_body_rows_are_preserved_without_filtering_or_deduplication
    configure(project('project.en'))
    special = '| Updated [!DNL Commerce] with `a\|b` and &#124;.<br><i>Community contribution</i> | Feedback, technical | [January 1, 2000](https://github.com/AdobeDocs/project/pull/2) |'
    @responses['project.en'] = table(rows: [special, ROW, special])
    generate
    assert_includes File.read(@output), "#{special}\n#{ROW}\n#{special}\n"
    refute_includes File.read(@output), 'Updates from the source window.'
  end

  def test_empty_projects_are_omitted_and_all_empty_has_one_overall_message
    configure(project('empty.en'), project('present'), project('empty-dev'))
    @responses = {
      'empty.en' => "# What's new\n\n__#{ConsolidatedWhatsnew::EMPTY_MESSAGE}__\n",
      'present' => table(header: 'Date'),
      'empty-dev' => "**#{ConsolidatedWhatsnew::EMPTY_MESSAGE}**\n"
    }
    generate
    content = File.read(@output)
    assert_equal ["## present\n"], content.lines.grep(/\A## /)
    refute_includes content, ConsolidatedWhatsnew::EMPTY_MESSAGE
    @responses['present'] = @responses['empty-dev']
    generate
    assert_equal "# Consolidated What's new\n\n#{ConsolidatedWhatsnew::EMPTY_MESSAGE}\n", File.read(@output)
    assert_equal 6, @calls.length
  end

  def test_escaped_break_tags_are_normalized_only_for_devsite
    configure(project('devsite'), project('exl.en'))
    source_row = '| First\<br/\>Second\<br/\>Third<br/> and \<em\> and `a\|b`. | Feedback | November 1, 2026 |'
    expected_devsite_row = '| First<br/>Second<br/>Third<br/> and \<em\> and `a\|b`. | Feedback | November 1, 2026 |'
    @responses = {
      'devsite' => table(header: 'Date', rows: [source_row]),
      'exl.en' => table(rows: [source_row])
    }
    generate
    content = File.read(@output)
    assert_includes content, "#{ConsolidatedWhatsnew::HEADER}\n#{expected_devsite_row}\n"
    assert_includes content, "#{ConsolidatedWhatsnew::HEADER}\n#{source_row}\n"
  end

  def test_invalid_configuration_fails_before_fetching_and_preserves_output
    previous_output
    invalid = [
      [], [project('a'), project('A')], ['a'],
      [project('../a')], [project('a', title: '')],
      [project('a', website: 'javascript:alert(1)')],
      [project('a', website: 'https:///missing-host')],
      [project('a', website: "https://example.com/\n")],
      [project('a').reject { |key, _| key == 'repo' }],
      [project('a').reject { |key, _| key == 'title' }],
      [project('a').reject { |key, _| key == 'website' }],
      [project('a').merge('platform' => 'exl')]
    ]
    invalid.each do |entries|
      configure(*entries)
      assert_raises(ConsolidatedWhatsnew::Error) { generate }
      assert_equal 'previous include', File.read(@output)
    end
    [nil, [], { 'repo' => 'AdobeDocs/test' }, { 'whatsnew_consolidated' => [] }].each do |config|
      File.write(@config, config.to_yaml)
      error = assert_raises(ConsolidatedWhatsnew::Error) { generate }
      assert_includes error.message, 'whatsnew_consolidated.projects'
      assert_equal 'previous include', File.read(@output)
    end
    File.write(@config, "whatsnew_consolidated: [\n")
    assert_raises(ConsolidatedWhatsnew::Error) { generate }
    assert_empty @calls
  end

  def test_failed_fetches_preserve_output_and_identify_the_source
    configure(project('good.en'), project('failed'))
    @responses['good.en'] = table
    previous_output
    [RuntimeError.new('HTTP 404'), SocketError.new('offline'), Net::ReadTimeout.new].each do |failure|
      @responses['failed'] = failure
      error = assert_raises(ConsolidatedWhatsnew::Error) { generate }
      assert_includes error.message, 'failed (https://raw.githubusercontent.com/AdobeDocs/failed/refs/heads/main/src/pages/'
      assert_equal 'previous include', File.read(@output)
      assert_empty Dir.glob(File.join(File.dirname(@output), '.consolidated-*'))
    end
  end

  def test_malformed_content_never_publishes_partial_output
    configure(project('good.en'), project('invalid'))
    @responses['good.en'] = table
    invalid = [
      '', '<html>Not a source table</html>',
      table(rows: []), table.sub('|---|---|---|', '|---|---|'),
      table.sub('Description', 'Unexpected'),
      table(rows: ['| Missing | a column |']),
      table(rows: ['| Description | | Date |']),
      "#{table}\nUnexpected trailing content\n",
      "#{table}\n**#{ConsolidatedWhatsnew::EMPTY_MESSAGE}**\n"
    ]
    invalid.each do |source|
      @responses['invalid'] = source
      error = assert_raises(ConsolidatedWhatsnew::Error) { generate }
      assert_includes error.message, 'invalid (https://raw.githubusercontent.com/'
      refute File.exist?(@output)
    end
    previous_output
    assert_raises(ConsolidatedWhatsnew::Error) { generate }
    assert_equal 'previous include', File.read(@output)
  end

  def test_repeated_generation_is_identical_and_creates_directories
    configure(project('a'))
    @responses['a'] = table(header: 'Date')
    assert_equal @output, generate
    original = File.binread(@output)
    generate
    assert_equal original, File.binread(@output)
    assert_empty Dir.glob(File.join(File.dirname(@output), '.consolidated-*'))
  end

  def test_failed_atomic_publication_cleans_up_and_preserves_output
    configure(project('a'))
    @responses['a'] = table
    previous_output
    original_rename = File.method(:rename)
    begin
      File.define_singleton_method(:rename) { |*| raise Errno::EACCES, 'test publication failure' }
      assert_raises(Errno::EACCES) { generate }
    ensure
      File.define_singleton_method(:rename, original_rename)
    end
    assert_equal 'previous include', File.read(@output)
    assert_empty Dir.glob(File.join(File.dirname(@output), '.consolidated-*'))
  end

  def test_rake_entry_point_uses_the_generator
    configure(project('a.en'))
    script = <<~'RUBY'
      load 'Rakefile'
      define_method(:fetch_url) do |_url|
        "| Description | Type | Date |\n|---|---|---|\n| Update | Feedback | November 1, 2026 |\n"
      end
      original_new = ConsolidatedWhatsnew.method(:new)
      ConsolidatedWhatsnew.define_singleton_method(:new) do |fetcher:|
        original_new.call(fetcher: fetcher, config_path: ARGV[0], output_path: ARGV[1])
      end
      Rake::Task[:whatsnew_consolidated].invoke
    RUBY
    stdout, stderr, status = Open3.capture3('bundle', 'exec', 'ruby', '-rrake', '-e', script, @config, @output,
                                           chdir: File.expand_path('..', __dir__))
    assert status.success?, "#{stdout}\n#{stderr}"
    assert_includes stdout, @output
    assert_includes File.read(@output), "## a.en\n\nThese updates come from the *What's new* section"
  end

  def test_feedback_filter_preserves_generated_source_sentences
    configure(project('guide.en', website: 'https://example.com/guide(v2)'))
    @responses['guide.en'] = table(rows: [ROW, ROW.sub('Technical', 'Feedback')])
    generate
    FileUtils.cp(@output, @input)
    filter_feedback
    content = File.read(@output)
    assert_includes content, "## guide.en\n\nThese updates come from the *What's new* section of the " \
                             "[guide.en](https://example.com/guide(v2)) home page.\n\n#{ConsolidatedWhatsnew::HEADER}\n"
    assert_includes content, ROW.sub('Technical', 'Feedback')
    refute_includes content, ROW
  end

  def test_feedback_filter_matches_only_complete_type_tokens_and_preserves_rows
    types = ['Feedback', ' feedback ', 'Technical, FEEDBACK', 'Feedback, technical',
             'Technical', 'Non-feedback', 'Feedback-driven']
    rows = types.map do |type|
      "| Feedback in the description | #{type} | [Source](https://example.com/feedback) |"
    end
    special = '| [!DNL Commerce] uses `a\|b` and &#124;.<br/><i>Community</i> | Technical, feedback | [Source](https://example.com/) |'
    source = feedback_input(
      project_section('Omitted', [ROW]),
      project_section('First \[guide\]', rows + [rows.first, special]),
      project_section('Also omitted', [rows[4]]),
      project_section('Last guide', [special])
    )
    File.write(@input, source)
    assert_equal @output, filter_feedback
    content = File.read(@output)
    assert_equal [
      "## First \\[guide\\]",
      '## Last guide'
    ], content.lines.map(&:chomp).grep(/\A## /)
    assert_includes content, "## First \\[guide\\]\n\n#{ConsolidatedWhatsnew::HEADER}\n"
    assert_includes content, "## Last guide\n\n#{ConsolidatedWhatsnew::HEADER}\n"
    refute content.lines.any? { |line| line.start_with?('[') }
    expected_tables = ConsolidatedWhatsnew::HEADER.lines.map(&:chomp) + rows.first(4) + [rows.first, special] +
                      ConsolidatedWhatsnew::HEADER.lines.map(&:chomp) + [special]
    assert_equal expected_tables, content.lines.map(&:chomp).grep(/\A\|/)
    assert_equal source, File.binread(@input)
    refute File.exist?(@config)
    filter_feedback
    assert_equal content, File.binread(@output)
    assert_empty Dir.glob(File.join(File.dirname(@output), '.consolidated-*'))
  end

  def test_feedback_filter_handles_no_matches_and_valid_empty_input
    sources = [
      feedback_input(project_section('No matches', [ROW])),
      "#{ConsolidatedWhatsnew::TITLE}\n\n#{ConsolidatedWhatsnew::EMPTY_MESSAGE}\n"
    ]
    previous_output
    sources.each do |source|
      File.write(@input, source)
      filter_feedback
      assert_equal "# Feedback-driven documentation updates\n\nNo feedback-driven documentation updates so far.\n",
                   File.read(@output)
      assert_equal source, File.read(@input)
    end
  end

  def test_feedback_filter_preserves_output_when_input_is_missing_or_malformed
    previous_output
    assert_raises(Errno::ENOENT) { filter_feedback }
    assert_equal 'previous include', File.read(@output)
    invalid = [
      '', 'Not a consolidated include',
      feedback_input('| Orphaned | Feedback | source |'),
      feedback_input("## [Linked project](https://example.com/)\n\n#{ConsolidatedWhatsnew::HEADER}\n#{ROW}"),
      feedback_input(project_section('Guide', [ROW]).sub("\n\n", "\n\n[Guide](https://example.com/)\n\n")),
      feedback_input(project_section('Unexpected prose', [ROW]).sub("\n\n", "\n\nUnexpected prose\n\n")),
      feedback_input(project_section('Bad header', [ROW]).sub('Description', 'Unexpected')),
      feedback_input(project_section('Bad separator', [ROW]).sub('| --- | --- | --- |', '| --- | --- |')),
      feedback_input(project_section('No feedback but malformed', ['| Missing | a column |'])),
      feedback_input(project_section('Empty table', [])),
      feedback_input(
        project_section('Valid', [ROW.sub('Technical', 'Feedback')]),
        "## [Missing table](https://example.com/)\n\n__#{ConsolidatedWhatsnew::EMPTY_MESSAGE}__"
      )
    ]
    invalid.each do |source|
      File.write(@input, source)
      error = assert_raises(ConsolidatedWhatsnew::Error) { filter_feedback }
      assert_includes error.message, @input
      assert_equal 'previous include', File.read(@output)
    end
    File.unlink(@output)
    assert_raises(ConsolidatedWhatsnew::Error) { filter_feedback }
    refute File.exist?(@output)
  end

  def test_feedback_filter_rejects_overwriting_its_input
    source = feedback_input(project_section('Guide', [ROW]))
    File.write(@input, source)
    assert_raises(ConsolidatedWhatsnew::Error) do
      ConsolidatedWhatsnew.new.filter_feedback(input_path: @input, output_path: @input)
    end
    assert_equal source, File.read(@input)
  end

  def test_generation_requires_a_fetcher
    error = assert_raises(ConsolidatedWhatsnew::Error) { ConsolidatedWhatsnew.new.generate }
    assert_includes error.message, 'fetcher is required'
  end

  def test_feedback_rake_entry_point_does_not_fetch_or_regenerate_input
    source = feedback_input(project_section('Guide', [ROW.sub('Technical', 'Feedback')]))
    File.write(@input, source)
    script = <<~'RUBY'
      load 'Rakefile'
      define_method(:fetch_url) { |*| raise 'Must not fetch remote content' }
      ConsolidatedWhatsnew.define_method(:generate) { raise 'Must not regenerate input' }
      original_filter = ConsolidatedWhatsnew.instance_method(:filter_feedback)
      ConsolidatedWhatsnew.define_method(:filter_feedback) do
        original_filter.bind_call(self, input_path: ARGV[0], output_path: ARGV[1])
      end
      Rake::Task[:whatsnew_feedback].invoke
    RUBY
    stdout, stderr, status = Open3.capture3('bundle', 'exec', 'ruby', '-rrake', '-e', script, @input, @output,
                                           chdir: File.expand_path('..', __dir__))
    assert status.success?, "#{stdout}\n#{stderr}"
    assert_includes stdout, @output
    assert_includes File.read(@output), ROW.sub('Technical', 'Feedback')
    assert_equal source, File.read(@input)
  end
end
