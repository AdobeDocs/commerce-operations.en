# frozen_string_literal: true

# Copyright 2026 Adobe. All rights reserved.
# Licensed under the MIT License. See license.md for details.

require 'cgi'
require 'fileutils'
require 'net/http'
require 'tempfile'
require 'yaml'

class ConsolidatedWhatsnew
  class Error < StandardError; end

  CONFIG_PATH = File.expand_path('../_config.yml', __dir__)
  OUTPUT_PATH = File.expand_path('../../help/_includes/automated/whatsnew/consolidated.md', __dir__)
  FEEDBACK_OUTPUT_PATH = File.expand_path('../../help/_includes/automated/whatsnew/consolidated-feedback.md', __dir__)
  TITLE = "# Consolidated What's new"
  INTRO = 'These documentation updates come from Commerce projects. Each project defines the time period covered by its source list.'
  SOURCE_PREFIX = "These updates come from the *What's new* section of the "
  HEADER = "| Description | Type | Date/source |\n| --- | --- | --- |"
  EMPTY_MESSAGE = 'No significant documentation updates so far.'

  def initialize(fetcher: nil, config_path: CONFIG_PATH, output_path: OUTPUT_PATH)
    @fetcher = fetcher
    @config_path = config_path
    @output_path = output_path
  end

  def generate
    raise Error, 'A fetcher is required to generate the consolidated include' unless @fetcher

    sections = projects.filter_map do |project|
      repo = project.fetch('repo')
      exl = repo.end_with?('.en')
      path = exl ? 'help' : 'src/pages'
      url = "https://raw.githubusercontent.com/AdobeDocs/#{repo}/refs/heads/main/#{path}/_includes/templated/whats-new.md"
      begin
        rows = table_rows(@fetcher.call(url))
      rescue Error, RuntimeError, IOError, SystemCallError, SocketError, Timeout::Error, Net::ProtocolError, OpenSSL::SSL::SSLError => e
        raise Error, "#{repo} (#{url}): #{e.message}"
      end
      next if rows.nil?

      rows = rows.map { |row| row.gsub('\<br/\>', '<br/>') } unless exl
      title = CGI.escapeHTML(project.fetch('title').gsub(/[\\`*_\[\]{}()#!|]/) { |char| "\\#{char}" })
      source = "#{SOURCE_PREFIX}[#{title}](#{project.fetch('website')}) home page."
      "## #{title}\n\n#{source}\n\n#{HEADER}\n#{rows.join("\n")}"
    end

    content = [TITLE]
    if sections.empty?
      content << EMPTY_MESSAGE
    else
      content << INTRO
      content.concat(sections)
    end
    write_output("#{content.join("\n\n")}\n")
    @output_path
  end

  def filter_feedback(input_path: OUTPUT_PATH, output_path: FEEDBACK_OUTPUT_PATH)
    if File.expand_path(input_path) == File.expand_path(output_path) || File.identical?(input_path, output_path)
      raise Error, 'Feedback input and output paths must be different'
    end

    blocks = File.read(input_path).lines.map(&:chomp).slice_before { |line| line.start_with?('## ') }.to_a
    preamble = (blocks.shift || []).reject { |line| line.strip.empty? }
    expected_preamble = blocks.empty? ? [TITLE, EMPTY_MESSAGE] : [TITLE, INTRO]
    unless preamble == expected_preamble
      raise Error, "#{input_path}: invalid consolidated include structure"
    end

    sections = blocks.filter_map do |block|
      heading = block.first
      unless heading.match?(/\A## (?:\\[^\n]|[^\\\[\]])+\z/)
        raise Error, "#{input_path}: invalid project heading #{heading.inspect}"
      end
      begin
        body = block.drop(1)
        body.shift while body.first&.strip == ''
        source = body.shift if body.first&.start_with?("#{SOURCE_PREFIX}[")
        body.shift while body.first&.strip == ''
        raise Error, 'project section must start with a table' unless body.first&.start_with?('|')

        rows = table_rows(body.join("\n"))
        raise Error, 'project section has no table' unless rows
      rescue Error => e
        raise Error, "#{input_path}: #{heading}: #{e.message}"
      end
      matching = rows.select do |row|
        cells(row)[1].split(',').any? { |type| type.strip.casecmp?('feedback') }
      end
      next if matching.empty?

      [heading, source, "#{HEADER}\n#{matching.join("\n")}"].compact.join("\n\n")
    end

    content = ['# Feedback-driven documentation updates']
    if sections.empty?
      content << 'No feedback-driven documentation updates so far.'
    else
      content << 'These documentation updates were made in response to feedback. Each project defines the time period covered by its source list.'
      content.concat(sections)
    end
    write_output("#{content.join("\n\n")}\n", output_path: output_path)
    output_path
  end

  private

  def projects
    site_config = YAML.safe_load_file(@config_path)
    config = site_config['whatsnew_consolidated'] if site_config.is_a?(Hash)
    unless config.is_a?(Hash) && config.keys == ['projects'] &&
           config['projects'].is_a?(Array) && !config['projects'].empty?
      raise Error, "#{@config_path}: expected a nonempty whatsnew_consolidated.projects list"
    end

    seen = []
    config.fetch('projects').each_with_index do |project, index|
      label = "#{@config_path}: whatsnew_consolidated project #{index + 1}"
      unless project.is_a?(Hash) && project.keys.length == 3 && (project.keys - %w[repo title website]).empty? &&
             project.values.all? { |value| value.is_a?(String) && !value.strip.empty? && !value.match?(/[\r\n]/) }
        raise Error, "#{label}: require nonempty repo, title, and website strings"
      end
      repo = project.fetch('repo')
      unless repo.match?(/\A[A-Za-z0-9][A-Za-z0-9_.-]*\z/)
        raise Error, "#{label}: invalid repository name #{repo.inspect}"
      end
      raise Error, "#{label}: duplicate repository #{repo}" if seen.include?(repo.downcase)

      seen << repo.downcase
      begin
        website = URI.parse(project.fetch('website'))
      rescue URI::InvalidURIError => e
        raise Error, "#{label}: invalid website URL (#{e.message})"
      end
      unless website.is_a?(URI::HTTP) && website.host && !website.host.empty?
        raise Error, "#{label}: website must be an absolute HTTP(S) URL"
      end
    end
    config.fetch('projects')
  rescue Psych::Exception => e
    raise Error, "#{@config_path}: invalid YAML (#{e.message})"
  end

  def table_rows(markdown)
    lines = markdown.lines.map(&:chomp)
    empty = lines.any? { |line| ["__#{EMPTY_MESSAGE}__", "**#{EMPTY_MESSAGE}**"].include?(line.strip) }
    start = lines.index { |line| line.lstrip.start_with?('|') }
    if start.nil?
      return nil if empty

      raise Error, 'expected a What\'s new table or the no-updates message'
    end
    raise Error, 'found both a table and a no-updates message' if empty

    table = lines.drop(start)
    table.pop while table.last&.strip == ''
    header = cells(table[0])
    unless [%w[Description Type Date/source], %w[Description Type Date]].include?(header)
      raise Error, 'unexpected table header'
    end
    separator = cells(table[1])
    unless separator&.all? { |cell| cell.match?(/\A:?-{3,}:?\z/) }
      raise Error, 'invalid or missing table separator'
    end
    rows = table.drop(2)
    raise Error, 'table has no body rows' if rows.empty?

    rows.each_with_index do |row, index|
      values = cells(row)
      unless values && values.none?(&:empty?)
        raise Error, "malformed table body row #{index + 1}"
      end
    end
    rows
  end

  def cells(line)
    return nil unless line

    # Mask escaped characters only for validation; emit the original body rows.
    parts = line.strip.gsub(/\\[^\n]/, 'xx').split('|', -1)
    return nil unless parts.length == 5 && parts.first.empty? && parts.last.empty?

    parts[1..3].map(&:strip)
  end

  def write_output(content, output_path: @output_path)
    directory = File.dirname(output_path)
    FileUtils.mkdir_p(directory)
    Tempfile.create(['.consolidated-', '.md'], directory) do |file|
      file.write(content)
      file.flush
      file.chmod(File.exist?(output_path) ? File.stat(output_path).mode & 0o777 : 0o644)
      file.close
      File.rename(file.path, output_path)
    end
  end
end
