# frozen_string_literal: true

require 'spec_helper'

RSpec.describe OnlyofficeRspecParser::SpecParser, '.get_it_mass_by_path' do
  it 'raise correct error if there is no such file' do
    fake_file_path = '/foo'
    expect { described_class.get_it_mass_by_path(fake_file_path) }
      .to raise_error(RuntimeError, /#{fake_file_path}/)
  end
end
