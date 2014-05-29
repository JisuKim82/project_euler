require_relative 'spec_helper'
require_relative '../14-longest_collatz_sequence'

describe 'collatz_count' do
  context 'returns the number of terms in the collatz_sequence' do
   
    it 'returns 10 when collatz_count(13) is called' do
      expect(collatz_count(13)).to eq 10
    end

    it 'returns 3 when collatz_count(4) is called' do
      expect(collatz_count(4)).to eq 3
    end

    it 'returns 1 when collatz_count(1) is called' do
      expect(collatz_count(1)).to eq 1
    end

  end
end

describe 'num_with_largest_sequence' do
  context 'returns the value under 1 million with the most terms' do
    it 'returns value 837799' do
      expect(num_with_largest_sequence).to eq 837799
    end
  end
end