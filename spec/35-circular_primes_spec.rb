require_relative 'spec_helper'
require_relative '../35-circular_primes'

describe '#circular_numbers' do
  describe 'returns an array of circular numbers' do
    it 'returns [196,961,619] when 196 is passed in' do
      expect(circular_numbers(196)).to eq [196,961,619]
    end

    it 'has length of 1 for single digits' do
      length = circular_numbers(1).count
      expect(length).to eq 1
    end

    it 'has length of 4 for four digit numbers' do
      length = circular_numbers(1234).count
      expect(length).to eq 4
    end
  end
end