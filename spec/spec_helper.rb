# frozen_string_literal: true

require 'simplecov'
SimpleCov.start do
  enable_coverage :branch
end

require 'onlyoffice_rspec_parser'

# @return [String] path to examples root folder
def examples_path
  "#{Dir.pwd}/spec/onlyoffice_rspec_parser/spec_examples"
end
