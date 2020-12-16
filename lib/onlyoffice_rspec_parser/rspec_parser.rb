# frozen_string_literal: true

require 'onlyoffice_logger_helper'
module OnlyofficeRspecParser
  # Static parsing of _rspec.rb files
  class SpecParser
    def self.get_it_mass_by_path(path_to_spec)
      raise "File not exists: #{path_to_spec}!" unless File.exist?(path_to_spec)

      test_file = File.new(path_to_spec)
      file_tests = []
      test_file.each do |line|
        next unless /it ['"](.*)?['"] do/.match?(line)

        test_name = line.scan(/it ['"](.*?)['"] do/)
        file_tests << test_name.first.first
      end
      test_file.close
      file_tests
    end

    def self.uniq_duplicates(path_to_spec)
      case_names = get_it_mass_by_path(path_to_spec)
      duplicates = case_names.find_all { |e| case_names.count(e) > 1 }
      duplicates.uniq
    end

    def self.check_for_doubles(path_to_spec)
      duplicates = uniq_duplicates(path_to_spec)
      if duplicates.empty?
        OnlyofficeLoggerHelper.log("No duplicates in file #{path_to_spec}")
      else
        OnlyofficeLoggerHelper.log("Duplicate names in file #{path_to_spec}:")
        duplicates.each do |cur_dup|
          OnlyofficeLoggerHelper.log("\t#{cur_dup}")
        end
      end
      duplicates
    end

    def self.check_folder_for_spec_doubles(folder)
      files = Dir.glob("#{folder}/**/*_spec.*")
      files.each do |cur_file|
        check_for_doubles(cur_file)
      end
    end
  end
end
