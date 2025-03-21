# ADOBE CONFIDENTIAL
# Copyright 2025 Adobe All Rights Reserved.
# NOTICE:  All information contained herein is, and remains the property of Adobe and its suppliers, if any.
# The intellectual and technical concepts contained herein are proprietary to Adobe and its suppliers and are protected by all applicable intellectual property laws, including trade secret and copyright laws.
# Dissemination of this information or reproduction of this material is strictly forbidden unless prior written permission is obtained from Adobe.

# frozen_string_literal: true

require 'csv'
require 'json'

CACHE_FILE = 'tmp/pr_merge_commit_cache.json'

NECESSARY_COLUMNS = [
  'Issue key',
  'Summary',
  'Custom field (Release Note)',
  'Components',
  'Custom field (External Issue URL)',
  'Custom field (Git Pull Request)',
  'is_magento'
].freeze

GITHUB_KEYWORDS = [
  '/magento2/',
  '/magento2ce/',
  '/inventory/',
  '/magento2-page-builder/',
  '/security-package/',
  '/magento2-sample-data/'
].freeze

# Load CSV files from arguments
def csv_files
  ARGV.reject(&:empty?)
end

# Normalize encoding and convert to CSV::Table object
def serialize(csv_file)
  normalized_content = File.read(csv_file).encode(universal_newline: true)
  CSV.parse(normalized_content, headers: true, nil_value: "")
end

# Merge columns with the same headers
def merge_dup_headers(csv_table, duplicate_header, merged_header)
  return if csv_table.headers.none? duplicate_header

  csv_table.each do |row|
    merged_field = []
    row.each do |header, field|
      merged_field << field if header.eql? duplicate_header
    end
    row << [merged_header, merged_field.compact.join(', ')]
    row.delete_if { |header, _| header.eql? duplicate_header }
  end
end

# Calculate the value of 'is_magento' for a row
def calculate_is_magento(row)
  contains_keywords = GITHUB_KEYWORDS.any? do |keyword|
    row['Custom field (Git Pull Request)']&.include?(keyword)
  end
  has_external_issue_url = !row['Custom field (External Issue URL)'].to_s.strip.empty?
  contains_keywords || has_external_issue_url
end

# Prepare necessary columns and add 'is_magento'
def prepare_necessary_columns(csv_table)
  csv_table.headers << 'is_magento' unless csv_table.headers.include?('is_magento')

  csv_table.each do |row|
    row['is_magento'] = calculate_is_magento(row)
  end

  csv_table.by_col.delete_if { |column, _| NECESSARY_COLUMNS.none?(column) }
end

# Convert GitHub links to public links
def convert_github_links_to_public(text)
  public_links = text.scan(%r{https://github\.com/magento/[^\s>]+})
  private_links = text.scan(%r{https://github\.com/magento-commerce/.+?/pull/\d+})
                     .select { |link| GITHUB_KEYWORDS.any? { |keyword| link.include?(keyword) } }

  links = public_links + convert_pr_to_merge_commit(private_links)
  links.map { |link| "<#{link}>" }.join(", ")
end

# Convert pull request links to merge commit links
def convert_pr_to_merge_commit(links)
  cache = load_cache
  converted_links = []

  links.each do |link|
    if cache.key?(link)
      merge_commit = cache[link]
    else
      merge_commit = `gh pr view #{link} --json mergeCommit --jq .mergeCommit.oid`.rstrip.slice(0, 8)
      cache[link] = merge_commit.empty? ? nil : merge_commit
    end

    if merge_commit
      converted_links << link.sub('-commerce', '').sub('ce', '').sub(%r{pull/\d+}, "commit/#{merge_commit}")
    else
      converted_links << link.sub('-commerce', '').sub('ce', '').sub(%r{pull/\d+}, ' ' + '(Internal, Unmerged)')
      puts "Failed to convert PR link to merge commit: #{link}"
    end
  end

  save_cache(cache)
  converted_links
end

# Load cache from file
def load_cache
  return {} unless File.exist?(CACHE_FILE)
  JSON.parse(File.read(CACHE_FILE))
end

# Save cache to file
def save_cache(cache)
  File.write(CACHE_FILE, JSON.pretty_generate(cache))
end

# Process 'Custom field (Git Pull Request)' column
def process_pr_field(csv_table)
  csv_table.each do |row|
    if row['Custom field (Git Pull Request)']
      row['Custom field (Git Pull Request)'] = convert_github_links_to_public(row['Custom field (Git Pull Request)'])
    end
  end
end

# Delete specific text from a column
def delete_text(csv_table, header, text)
  csv_table[header] =
    csv_table[header].map do |field|
      next field unless field.match? text
      field.gsub text, ''
    end
end

# Replace empty fields with a default value
def replace_empty(csv_table, header, text)
  csv_table[header] =
    csv_table[header].map do |field|
      next field unless field.empty?
      field.replace text
    end
end

# Remove duplicate rows based on 'Issue key'
def filter_issue_key_duplicates(csv)
  unique_keys = csv.uniq { |row| row['Issue key'] }
  unique_keys.sort_by { |row| row['Issue key'] }
end

# Strip blank lines from a column
def strip_blank_lines(csv_table, header)
  csv_table[header] =
    csv_table[header].map do |field|
      next field if field.nil? || field.empty?
      field.lines.reject { |line| line.strip.empty? }.join.strip
    end
end

# Replace hard tabs with spaces in specified columns
def replace_tabs_with_spaces(csv_table, headers)
  headers.each do |header|
    csv_table[header] = csv_table[header].map do |field|
      next field if field.nil?
      field.gsub("\t", ' ')
    end
  end
end

# Main script
combined_rows = []
csv_files.each do |csv_file|
  csv_table = serialize(csv_file)
  merge_dup_headers(csv_table, 'Component/s', 'Components')
  prepare_necessary_columns(csv_table)
  delete_text(csv_table, 'Components', 'Module/ ')
  delete_text(csv_table, 'Components', %r{(,\s)?,\s$})
  replace_empty(csv_table, 'Components', 'Other')
  process_pr_field(csv_table)
  strip_blank_lines(csv_table, 'Summary')
  strip_blank_lines(csv_table, 'Custom field (Release Note)')
  replace_tabs_with_spaces(csv_table, ['Summary', 'Custom field (Release Note)'])
  csv_table.each do |row|
    combined_rows << row
  end
end

final_table = CSV::Table.new(filter_issue_key_duplicates(combined_rows))

# Print resulted CSV table to 'tmp'
Dir.mkdir 'tmp' unless File.exist? 'tmp'
# File.open('tmp/jira_engcom.csv', 'w') { |f| f.write final_table.to_s }

File.write 'tmp/release-notes-data.csv', final_table.to_s

puts "Total number of issues: #{final_table.size}"
puts 'Find release notes data in "tmp/release-notes-data.csv"'
