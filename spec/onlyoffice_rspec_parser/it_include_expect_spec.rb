# frozen_string_literal: true

require 'spec_helper'

RSpec.describe 'ItParsed#include_expect?' do
  it 'ItParsed#include_expect? correctly false for empty it' do
    spec = OnlyofficeRspecParser::SpecParsed.new("#{examples_path}/rspec_parsed/single_it_spec.rb")
    expect(spec.it_nodes.first).not_to be_include_expect
  end

  it 'ItParsed#include_expect? correctly false for it without expect' do
    spec = OnlyofficeRspecParser::SpecParsed.new("#{examples_path}/rspec_parsed/double_it_spec.rb")
    expect(spec.it_nodes.first).not_to be_include_expect
  end

  it 'ItParsed#include_expect? correctly true for it with expect' do
    spec = OnlyofficeRspecParser::SpecParsed.new("#{examples_path}/rspec_parsed/double_it_spec.rb")
    expect(spec.it_nodes.last).to be_include_expect
  end

  it 'ItParsed#include_expect? correctly true for expect with block' do
    spec = OnlyofficeRspecParser::SpecParsed.new("#{examples_path}/rspec_parsed/expect_types_spec.rb")
    expect(spec.it_nodes.last).to be_include_expect
  end

  it 'ItParsed#include_expect? correctly true for expect in after each' do
    pending('Parse expect in after each')
    spec = OnlyofficeRspecParser::SpecParsed.new("#{examples_path}/rspec_parsed/expect_after_it_spec.rb")
    expect(spec.it_nodes.last).to be_include_expect
  end
end
