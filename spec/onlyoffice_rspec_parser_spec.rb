require 'spec_helper'

RSpec.describe OnlyofficeRspecParser do
  it 'has a version number' do
    expect(OnlyofficeRspecParser::VERSION).not_to be nil
  end

  it 'no_dublicates_spec' do
    expect(OnlyofficeRspecParser::SpecParser.check_for_doubles('spec/spec_examples/no_dublicates_spec.rb')).to be_empty
  end

  it 'one_dublicates_spec' do
    expect(OnlyofficeRspecParser::SpecParser.check_for_doubles('spec/spec_examples/one_dublicates_spec.rb').length).to eq(1)
  end

  it 'check_folder_for_spec_doubles works for folder' do
    expect(OnlyofficeRspecParser::SpecParser.check_folder_for_spec_doubles('spec/spec_examples/').length).to eq(2)
  end

  it 'check_folder_for_spec_doubles works for current folder' do
    expect(OnlyofficeRspecParser::SpecParser.check_folder_for_spec_doubles('.').length).to be > 2
  end

  it 'ignore_non_rspec_files' do
    expect(OnlyofficeRspecParser::SpecParser.check_folder_for_spec_doubles('spec/spec_parser/spec_examples/non_spec').length).to be_zero
  end
end
