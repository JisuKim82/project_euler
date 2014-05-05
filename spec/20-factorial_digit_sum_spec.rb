require_relative 'spec_helper'
require_relative '../20-factorial_digit_sum'

describe '#factorial' do
  
  context 'calculates the factorial value' do  
    it 'returns 3628800 for 10!' do
      expect(factorial(10)).to eq 3628800
    end

    it 'returns 1 for 1!' do
      expect(factorial(1)).to eq 1
    end
  end
end


describe '#find_sum' do

  context 'calculates the sum of the digits of the factorial number' do

    it 'returns 27 when 10 is passed in' do
      expect(find_sum(10)).to eq 27
    end
    
  end
end