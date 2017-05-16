require 'rspec/autorun'
require_relative 'password'
require 'pry'

describe 'password' do
  it 'should do something' do
    expect(PW.new(23).sum).to eq(73)
  end

  it 'should do something' do
    expect(PW.new(10).sum).to eq(18)
  end

  it 'should do something' do
    expect(PW.new(11).sum).to eq(18)
  end

  it 'should do something' do
    expect(PW.new(13).sum).to eq(31)
  end

  it 'should do something' do
    expect(PW.new(5).sum).to eq(1)
  end

  it 'should do something' do
    expect(PW.new(1_000_000).sum).to eq(70_601_040_511)
  end
end