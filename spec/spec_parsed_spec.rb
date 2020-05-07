# frozen_string_literal: true

require 'spec_helper'

RSpec.describe OnlyofficeRspecParser::SpecParsed do
  it 'SpecParsed#it_nodes return correct number - 1' do
    spec = described_class.new('spec/spec_examples/rspec_parsed/single_it_spec.rb')
    expect(spec.it_nodes.length).to eq(1)
  end

  it 'SpecParsed#it_nodes return correct number - 2' do
    spec = described_class.new('spec/spec_examples/rspec_parsed/double_it_spec.rb')
    expect(spec.it_nodes.length).to eq(2)
  end

  it 'ItParsed#to_s show meaningfull information' do
    spec = described_class.new('spec/spec_examples/rspec_parsed/double_it_spec.rb')
    expect(spec.it_nodes.last.to_s).to eq('spec/spec_examples/rspec_parsed/double_it_spec.rb:10')
  end

  it 'SpecParsed.find_spec_without_expect show data' do
    expect { described_class.find_spec_without_expect('spec/spec_examples/rspec_parsed/') }
      .to output.to_stdout
  end
end
