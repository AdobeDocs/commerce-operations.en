#
# Copyright 2025 Adobe All Rights Reserved.
# NOTICE:  All information contained herein is, and remains the property of Adobe and its suppliers, if any.
# The intellectual and technical concepts contained herein are proprietary to Adobe and its suppliers and are protected by all applicable intellectual property laws, including trade secret and copyright laws.
# Dissemination of this information or reproduction of this material is strictly forbidden unless prior written permission is obtained from Adobe.
#

# frozen_string_literal: true

# Adobe Docs Rake Tasks
# This file contains common requires and shared functionality for Adobe documentation repositories
# Source: commerce-operations.en repository (most up-to-date)

# Common requires for all rake tasks
require 'yaml'
require 'colorator'
require 'date'
require 'json'
require 'tzinfo'

# Note: Individual namespace tasks have been moved to separate files:
# - includes.rake: Include management tasks
# - images.rake: Image management tasks  
# - whatsnew.rake: What's new tasks
# - utility.rake: Utility tasks
#
# Rake automatically loads all .rake files in this directory

# What's New Task
desc 'Generate data for a news digest.
      Default timeframe is since last update.
      For other period, use "since" argument, such as, rake whatsnew since="jul 4"'
task :whatsnew do
  since = ENV['since']
  current_file = '_data/whats-new.yml'
  generated_file = 'tmp/whats-new.yml'
  current_data = YAML.load_file current_file
  last_update = current_data['updated']
  print 'Generating data for the What\'s New digest: $ '.magenta

  # Generate tmp/whats-new.yml
  report =
    if since.nil? || since.empty?
      `TZ='America/Chicago' bundle exec whatsup_github since '#{last_update}'`
    elsif since.is_a? String
      `TZ='America/Chicago' bundle exec whatsup_github since '#{since}'`
    else
      abort 'The "since" argument must be a string. Example: "jul 4"'
    end

  # Merge generated tmp/whats-new.yml with existing src/_data/whats-new.yml
  generated_data = YAML.load_file generated_file
  current_data['entries'] = [] if current_data['entries'].nil?
  current_data['updated'] = generated_data['updated']
  current_data['entries'].prepend(generated_data['entries']).flatten!
  current_data['entries'].uniq! { |entry| entry['link'] }

  puts "Writing updates to #{current_file}"
  File.write current_file, current_data.to_yaml

  abort report if report.include? 'MISSING whatsnew'
  puts report
end

# Utility Tasks
desc 'Render the templated files.
  Renders the templated files in the "_jekyll/templates" directory. The result will be found in the "help/includes/templated" directory.'
task :render do
  sh '_scripts/render'
  Rake::Task['includes:maintain_all'].invoke
end
