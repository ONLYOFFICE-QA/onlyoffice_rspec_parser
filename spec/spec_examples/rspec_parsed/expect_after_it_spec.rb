# frozen_string_literal: true

require 'rspec'

describe 'My behaviour' do
  it 'expect with block' do
    p 'a'
  end

  after do
    expect(a).to eq(a)
  end
end
