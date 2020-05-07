# frozen_string_literal: true

require 'rspec'

describe 'My behaviour' do
  it 'does something' do
    p 'a'
  end

  it 'some other' do
    expect(stuff).to eq('a')
  end
end
