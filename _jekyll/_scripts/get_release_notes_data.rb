# ADOBE CONFIDENTIAL
# Copyright 2025 Adobe All Rights Reserved.
# NOTICE:  All information contained herein is, and remains the property of Adobe and its suppliers, if any.
# The intellectual and technical concepts contained herein are proprietary to Adobe and its suppliers and are protected by all applicable intellectual property laws, including trade secret and copyright laws.
# Dissemination of this information or reproduction of this material is strictly forbidden unless prior written permission is obtained from Adobe.

# frozen_string_literal: true

require 'csv'

def csv_files
  ARGV.reject(&:empty?)
end

# Normalize encoding and convert to CSV::Table object
def serialize(csv_file)
  normalized_content = File.read(csv_file).encode(universal_newline: true)
  CSV.parse(normalized_content, headers: true, nil_value: "")
end

# Merge columns with same headers
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

# Prepare a table for merging
def prepare_necessary_columns(csv_table)
  necessary_columns = ['Issue key', 'Summary', 'Custom field (Release Note)', 'Components', 'Custom field (External Issue URL)', 'Custom field (Git Pull Request)']
  csv_table.by_col.delete_if { |column, _| necessary_columns.none? column }
end

def filter_github_links(text)
  public_links = text.scan(/https:\/\/github\.com\/magento\/[^\s]+/)
  private_links = text.scan(/https:\/\/github\.com\/magento-commerce\/magento2ce\/pull\/[0-9]+/) +
                  text.scan(/https:\/\/github\.com\/magento-commerce\/inventory\/pull\/[0-9]+/) +
                  text.scan(/https:\/\/github\.com\/magento-commerce\/magento2-page-builder\/pull\/[0-9]+/)
  links = public_links + convert_pr_to_merge_commit(private_links)
  links.map { |link| "<#{link}>" }.join(", ")
end

def convert_pr_to_merge_commit(links)
  converted_links = []
  links.map do |link|
    merge_commit = `gh pr view #{link} --json mergeCommit --jq .mergeCommit.oid`.rstrip.slice(0, 8)
    unless merge_commit.empty?
      converted_links << link.sub('-commerce', '').sub('ce', '').sub(/pull\/[0-9]+/, 'commit/' + merge_commit)
    else
      converted_links << link.sub('-commerce', '').sub('ce', '').sub(/pull\/[0-9]+/, ' ' + '(Internal, Unmerged)')
      puts "Failed to convert PR link to merge commit: #{link}"
    end
  end
  converted_links
end

def process_pr_field(csv_table)
  csv_table.each do |row|
    if row['Custom field (Git Pull Request)']
      row['Custom field (Git Pull Request)'] = filter_github_links(row['Custom field (Git Pull Request)'])
    end
  end
end

def delete_text(csv_table, header, text)
  csv_table[header] =
    csv_table[header].map do |field|
      next field unless field.match? text

      field.gsub text, ''
    end
end

def replace_empty(csv_table, header, text)
  csv_table[header] =
    csv_table[header].map do |field|
      next field unless field.empty?

      field.replace text
    end
end

def filter_table(table)
  table.uniq do |row|
    row['Custom field (External Issue URL)']
  end
end

def final_table_from_csv(csv)
  filtered_table = filter_table(merged_table(csv))

  CSV::Table.new(filtered_table)
end

def sort_by_key(data)
  data.sort_by { |row| row['Issue key'] }
end

def filter_issue_key_duplicates(csv)
  unique_keys = csv.uniq { |row| row['Issue key'] }
  sort_by_key(unique_keys)
end

def strip_blank_lines(csv_table, header)
  csv_table[header] =
    csv_table[header].map do |field|
      next field if field.nil? || field.empty?
      field.lines.reject { |line| line.strip.empty? }.join.strip
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
  csv_table.each do |row|
    combined_rows << row
  end
end

final_table = CSV::Table.new filter_issue_key_duplicates(combined_rows)

# Print resulted CSV table to 'tmp'
Dir.mkdir 'tmp' unless File.exist? 'tmp'
# File.open('tmp/jira_engcom.csv', 'w') { |f| f.write final_table.to_s }

File.write 'tmp/release-notes-data.csv', final_table.to_s

puts "Total number of issues: #{final_table.size}"
puts 'Find release notes data in "tmp/release-notes-data.csv"'
