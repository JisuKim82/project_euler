require_relative 'spec_helper'
require_relative '../19-counting_sundays'

describe '#normalize' do
  before :each do
   @date='1 Feb 1901'
  end

  it 'takes in a string and converts it to its integer value' do
    expect(normalize(@date)).to eq([1901,2,1])
  end

end

