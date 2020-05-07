# frozen_string_literal: true

require 'spec_helper'

RSpec.describe OnlyofficeRspecParser::SpecParser do
  it 'has a version number' do
    expect(OnlyofficeRspecParser::VERSION).not_to be nil
  end

  it 'no_dublicates_spec' do
    file = "#{examples_path}/duplicates/no_dublicates_spec.rb"
    expect(described_class.check_for_doubles(file)).to be_empty
  end

  it 'one_dublicates_spec' do
    file = "#{examples_path}/duplicates/one_dublicates_spec.rb"
    expect(described_class.check_for_doubles(file).length).to eq(1)
  end

  it 'check_folder_for_spec_doubles works for folder' do
    path = "#{examples_path}/duplicates/"
    expect(described_class.check_folder_for_spec_doubles(path).length).to eq(2)
  end

  it 'check_folder_for_spec_doubles works for current folder' do
    expect(described_class.check_folder_for_spec_doubles('.').length).to be > 2
  end

  it 'ignore_non_rspec_files' do
    path = "#{examples_path}/spec_examples/duplicates/non_spec"
    expect(described_class.check_folder_for_spec_doubles(path).length)
      .to be_zero
  end
end
