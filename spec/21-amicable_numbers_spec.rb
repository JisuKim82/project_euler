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

describe '#amicable_numbers_sum' do
  
  context 'sums all amicable numbers under the value passed in' do
    it 'returns 284+220 when 284 is passed in' do
      expect(amicable_numbers_sum(284)).to eq 504
    end
  end
end