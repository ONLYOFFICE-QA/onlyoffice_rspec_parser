# frozen_string_literal: true

require 'rspec'

describe 'My behaviour' do
  it 'expect with block' do
    expect { a }.to raise_error(b)
  end
end
