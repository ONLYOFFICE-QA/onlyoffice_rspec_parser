# frozen_string_literal: true

require 'rspec'

describe 'My behaviour' do
  after do
    expect(a).to eq(a)
  end

  it 'expect with block' do
    p 'a'
  end
end
