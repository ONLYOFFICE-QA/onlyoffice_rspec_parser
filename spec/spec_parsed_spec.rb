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
end
