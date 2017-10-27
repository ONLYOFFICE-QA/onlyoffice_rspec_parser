require 'spec_helper'

RSpec.describe OnlyofficeRspecParser::SpecParsed do
  it 'SpecParsed#it_nodes return correct number - 1' do
    spec = OnlyofficeRspecParser::SpecParsed.new('spec/spec_examples/single_it_spec.rb')
    expect(spec.it_nodes.length).to eq(1)
  end

  it 'SpecParsed#it_nodes return correct number - 2' do
    spec = OnlyofficeRspecParser::SpecParsed.new('spec/spec_examples/double_it_spec.rb')
    expect(spec.it_nodes.length).to eq(2)
  end

  it 'ItParsed#include_expect? correctly false for empty it' do
    spec = OnlyofficeRspecParser::SpecParsed.new('spec/spec_examples/single_it_spec.rb')
    expect(spec.it_nodes.first.include_expect?).to be_falsey
  end

  it 'ItParsed#include_expect? correctly false for it without expect' do
    spec = OnlyofficeRspecParser::SpecParsed.new('spec/spec_examples/double_it_spec.rb')
    expect(spec.it_nodes.first.include_expect?).to be_falsey
  end

  it 'ItParsed#include_expect? correctly true for it with expect' do
    spec = OnlyofficeRspecParser::SpecParsed.new('spec/spec_examples/double_it_spec.rb')
    expect(spec.it_nodes.last.include_expect?).to be_truthy
  end
end
