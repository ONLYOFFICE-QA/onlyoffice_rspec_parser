# frozen_string_literal: true

require 'simplecov'
SimpleCov.start

if ENV['CI'] == 'true'
  require 'codecov'
  SimpleCov.formatter = SimpleCov::Formatter::Codecov
end
require 'onlyoffice_rspec_parser'

# @return [String] path to examples root folder
def examples_path
  "#{Dir.pwd}/spec/onlyoffice_rspec_parser/spec_examples"
end
