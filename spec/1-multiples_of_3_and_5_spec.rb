require_relative 'spec_helper'
require_relative '../1-multiples_of_3_and_5'

describe 'sums all of the multiples of 3 or 5 below n' do
  it 'returns 23 for when n is 10' do
    expect(sum_of_multiples_3_5_below(10)).to eq 23
  end
end