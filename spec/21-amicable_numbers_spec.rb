require_relative 'spec_helper'
require_relative '../21-amicable_numbers'

describe '#sum_divisors' do
  
  context 'sums all divisors of n less than n' do
    it 'returns 3 when 4 is passed in' do
      expect(sum_divisors(4)).to eq 3
    end

    it 'return 284 when 220 is passed in' do
      expect(sum_divisors(220)).to eq 284
    end
  end
end