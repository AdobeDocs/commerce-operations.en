#
# Copyright 2025 Adobe All Rights Reserved.
# NOTICE:  All information contained herein is, and remains the property of Adobe and its suppliers, if any.
# The intellectual and technical concepts contained herein are proprietary to Adobe and its suppliers and are protected by all applicable intellectual property laws, including trade secret and copyright laws.
# Dissemination of this information or reproduction of this material is strictly forbidden unless prior written permission is obtained from Adobe.
#

# frozen_string_literal: true

# Include Management Tasks
# This file contains rake tasks for managing include relationships and timestamps

require 'yaml'
require 'colorator'
require 'date'
require 'tzinfo'

namespace :includes do
  desc 'Maintain include-relationships.yml by discovering include relationships in markdown files.'
  task :maintain_relationships do
    puts 'Running task to maintain include-relationships.yml'.magenta
    
    relationships_file = 'include-relationships.yml'
    current_relationships = {}
    
    # Load existing relationships if file exists
    if File.exist?(relationships_file)
      current_relationships = YAML.load_file(relationships_file)
      puts "Loaded existing relationships from #{relationships_file}".blue
    end
    
    # Initialize new relationships structure
    new_relationships = {
      'metadata' => {
        'last_updated' => TZInfo::Timezone.get('America/Chicago').now.strftime('%Y-%m-%d %H:%M:%S %Z'),
        'description' => 'Index of main files and their included files for automatic timestamp updates',
        'total_relationships' => 0,
        'auto_discovered' => true,
        'discovery_date' => TZInfo::Timezone.get('America/Chicago').now.strftime('%Y-%m-%d %H:%M:%S %Z')
      },
      'relationships' => {}
    }
    
    # Get list of existing include files from help/_includes directory
    include_files = Dir['../help/_includes/**/*'].select { |f| File.file?(f) && f.end_with?('.md') }
    puts "Found #{include_files.size} include files in help/_includes directory".blue
    
    # Find all markdown files in the help directory (excluding _includes)
    markdown_files = Dir['../help/**/*.md'].reject { |f| f.include?('/_includes/') }
    puts "Scanning #{markdown_files.size} main markdown files for include references...".blue
    
    # For each include file, search for main files that reference it
    include_files.each do |include_file|
      # Get relative path from help/_includes for searching
      include_relative_path = include_file.sub('../help/_includes/', '')
      
      # Search for files that reference this include
      referencing_files = []
      
      markdown_files.each do |main_file|
        next if File.symlink?(main_file)
        
        content = File.read(main_file)
        main_relative_path = main_file.sub('../help/', '')
        
        # Check if the main file references this include by filepath
        # Look for patterns like {{$include /help/_includes/filename.md}}
        include_pattern = /\{\{\$include\s+\/help\/_includes\/#{Regexp.escape(include_relative_path)}\}\}/
        
        if content.match?(include_pattern)
          referencing_files << main_relative_path
        end
      end
      
      if referencing_files.any?
        # Add relationships for each main file that references this include
        referencing_files.each do |main_file|
          include_absolute_path = "/help/_includes/#{include_relative_path}"
          
          if new_relationships['relationships'][main_file]
            new_relationships['relationships'][main_file] << include_absolute_path
          else
            new_relationships['relationships'][main_file] = [include_absolute_path]
          end
        end
        
        puts "Found #{referencing_files.size} main files referencing #{include_relative_path}".green
      else
        puts "No main files reference #{include_relative_path}".yellow
      end
    end
    
    # Count total relationships
    new_relationships['metadata']['total_relationships'] = new_relationships['relationships'].size
    
    # Write the new relationships file
    File.write(relationships_file, new_relationships.to_yaml)
    
    puts "Updated #{relationships_file} with #{new_relationships['relationships'].size} relationships".green
    
    # Show summary of changes
    if current_relationships['relationships']
      old_count = current_relationships['relationships'].size
      new_count = new_relationships['relationships'].size
      
      puts "\nSummary:".blue
      puts "  Previous relationships: #{old_count}"
      puts "  New relationships: #{new_count}"
      
      if new_count > old_count
        puts "  Added: #{new_count - old_count} new relationships".green
      elsif new_count < old_count
        puts "  Removed: #{old_count - new_count} relationships".yellow
      else
        puts "  No change in relationship count".blue
      end
    end
    
    puts "\nTask completed successfully!".green
  end

  desc 'Maintain include timestamps by adding latest include file change timestamps to main files.'
  task :maintain_timestamps do
    puts 'Running task to maintain include timestamps...'.magenta
    
    relationships_file = 'include-relationships.yml'
    
    unless File.exist?(relationships_file)
      puts "Error: #{relationships_file} not found. Run 'rake includes:maintain_relationships' first.".red
      exit 1
    end
    
    relationships = YAML.load_file(relationships_file)
    puts "Loaded #{relationships['relationships'].size} relationships from #{relationships_file}".blue
    
    # Process each main file and its includes
    relationships['relationships'].each do |main_file, includes|
      puts "\nProcessing #{main_file}...".blue
      
      # Get the full path to the main file
      main_file_path = "../help/#{main_file}"
      
      unless File.exist?(main_file_path)
        puts "  Warning: Main file #{main_file} not found, skipping".yellow
        next
      end
      
      # Find the latest timestamp among all include files
      latest_timestamp = nil
      include_files_checked = []
      
      includes.each do |include_path|
        # Convert absolute path to relative path for git operations
        relative_include_path = include_path.sub('/help/_includes/', '../help/_includes/')
        
        # Get the latest git commit date for this include file
        # Run git from the repository root
        begin
          git_output = `git log -1 --format="%aI" -- "#{relative_include_path}" 2>/dev/null`
          if git_output.strip.empty?
            puts "  Warning: No git history found for #{relative_include_path}".yellow
            next
          end
          
          commit_date = DateTime.parse(git_output.strip).to_time
          include_files_checked << "#{relative_include_path} (#{commit_date.strftime('%Y-%m-%d %H:%M:%S')})"
          
          if latest_timestamp.nil? || commit_date > latest_timestamp
            latest_timestamp = commit_date
          end
        rescue => e
          puts "  Error processing #{relative_include_path}: #{e.message}".red
          next
        end
      end
      
      if latest_timestamp.nil?
        puts "  Warning: Could not determine timestamp for any include files".yellow
        next
      end
      
      puts "  Latest include change: #{latest_timestamp.strftime('%Y-%m-%d %H:%M:%S')}".green
      puts "  Include files checked: #{include_files_checked.join(', ')}".blue
      
      # Read the main file content
      content = File.read(main_file_path)
      
      # Check if timestamp already exists at the end
      timestamp_pattern = /<!--\s*Last updated from includes:\s*(\d{4}-\d{2}-\d{2} \d{2}:\d{2}:\d{2})\s*-->\s*$/
      
      if content.match?(timestamp_pattern)
        # Update existing timestamp
        new_content = content.sub(timestamp_pattern, "<!-- Last updated from includes: #{latest_timestamp.strftime('%Y-%m-%d %H:%M:%S')} -->\n")
        puts "  Updated existing timestamp".green
      else
        # Add new timestamp at the end
        new_content = content + "\n<!-- Last updated from includes: #{latest_timestamp.strftime('%Y-%m-%d %H:%M:%S')} -->\n"
        puts "  Added new timestamp".green
      end
      
      # Write the updated content back to the file
      File.write(main_file_path, new_content)
    end
    
    puts "\nInclude timestamp maintenance completed successfully!".green
  end

  desc 'Maintain both include relationships and timestamps in sequence.'
  task :maintain_all => [:maintain_relationships, :maintain_timestamps] do
    puts "\nInclude maintenance completed successfully!".green
  end

  desc 'Find unused includes.'
  task :unused do
    puts 'Running a task to find unused _includes'.magenta
    includes = FileList['../help/_includes/**/*']

    puts "The project contains a total of #{includes.size} includes"

    # snippets.md is expected and should not be removed based on the way the snippets functionality was designed for ExL.
    # See https://experienceleague.corp.adobe.com/docs/authoring-guide-exl/using/authoring/includes-snippets.html?lang=en#creating-snippets.
    exclude = '../help/_includes/snippets.md'
    includes.exclude(exclude) if exclude

    Dir['../help/**/*.{md}'].each do |file|
      next if File.symlink? file

      includes.delete_if { |include| File.read(file).include?(File.basename(include)) }
    end

    if includes.empty?
      puts 'No unlinked includes'.green
    else
      puts 'The following includes are not linked:'
      includes.each do |include|
        puts "No links for #{include}".yellow
      end
      puts "Found #{includes.size} unlinked includes".red
    end
  end
end
