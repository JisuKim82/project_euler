require_relative 'spec_helper'
require_relative '../30-digit_fifth_powers'

describe '#sum_of_powers' do
  context 'it finds the sum of all numbers that can be written as the sum of nth power of their digits' do
    it 'returns 19316 for the 4th power' do
      expect(sum_of_powers(4)).to eq 19316
    end
  end 
end