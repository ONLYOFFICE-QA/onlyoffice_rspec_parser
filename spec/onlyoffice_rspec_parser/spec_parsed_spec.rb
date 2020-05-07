# frozen_string_literal: true

require 'spec_helper'

RSpec.describe OnlyofficeRspecParser::SpecParsed do
  it 'SpecParsed#it_nodes return correct number - 1' do
    file = "#{examples_path}/rspec_parsed/single_it_spec.rb"
    spec = described_class.new(file)
    expect(spec.it_nodes.length).to eq(1)
  end

  it 'SpecParsed#it_nodes return correct number - 2' do
    file = "#{examples_path}/rspec_parsed/double_it_spec.rb"
    spec = described_class.new(file)
    expect(spec.it_nodes.length).to eq(2)
  end

  it 'ItParsed#to_s show meaningfull information' do
    file = "#{examples_path}/rspec_parsed/double_it_spec.rb"
    spec = described_class.new(file)
    expect(spec.it_nodes.last.to_s)
      .to eq("#{examples_path}/rspec_parsed/double_it_spec.rb:10")
  end

  it 'SpecParsed.find_spec_without_expect show data' do
    path = "#{examples_path}/rspec_parsed/"
    expect { described_class.find_spec_without_expect(path) }
      .to output.to_stdout
  end
end
