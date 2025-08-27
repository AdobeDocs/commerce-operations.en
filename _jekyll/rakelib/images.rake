#
# Copyright 2025 Adobe All Rights Reserved.
# NOTICE:  All information contained herein is, and remains the property of Adobe and its suppliers, if any.
# The intellectual and technical concepts contained herein are proprietary to Adobe and its suppliers and are protected by all applicable intellectual property laws, including trade secret and copyright laws.
# Dissemination of this information or reproduction of this material is strictly forbidden unless prior written permission is obtained from Adobe.
#

# frozen_string_literal: true

# Image Management Tasks
# This file contains rake tasks for managing and optimizing images

require 'colorator'

namespace :images do
  desc 'Optimize images in modified uncommitted files. For other images, use "path" such as "rake images:optimize path=../path/to/dir/or/file".'
  task :optimize do
    puts
    puts 'Checking images ...'.magenta
    path = ENV['path']

    unless path
      puts 'Looking in uncommitted files ...'.blue
      modified_files = `git ls-files --modified --others --exclude-standard -- ..`.split("\n")
      deleted_files = `git ls-files --deleted -- ..`.split("\n")
      image_files_to_check = (modified_files - deleted_files).select do |file|
        File.extname(file) =~ /\.(png|jpg|jpeg|gif)/i
      end

      next puts 'No images to check.'.magenta if image_files_to_check.empty?

      path = image_files_to_check.join(' ')
    end

    system "bundle exec image_optim --recursive --no-svgo #{path}"
  end

  desc 'Find unused images.'
  task :unused do
    puts 'Running a task for finding unused images (png,svg,jpeg,jpg,ico)'.magenta
    images = FileList['../help/**/*.{png,svg,jpeg,jpg,ico}']

    puts "The project contains a total of #{images.size} images."

    puts 'Checking for unlinked images...'
    Dir['../help/**/*.{md}'].each do |file|
      # Exclude symlinks
      next if File.symlink? file

      images.delete_if { |image| File.read(file).include?(File.basename(image)) }
    end

    if images.empty?
      puts 'No unlinked images'.green
    else
      images.each do |image|
        puts "No links for #{image}".yellow
      end
      puts "Found #{images.size} dangling images".red
    end
  end
end
