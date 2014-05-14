require_relative 'spec_helper'
require_relative '../2-even_fibonacci_numbers'

describe '#sum_even_values_fibonacci' do
  context 'sums the even valued terms of a fibonacci sequence less than a value passed in' do
    it 'should return 10 when less_than 9 is passed in' do 
      expect(sum_even_values_fibonacci(9)).to eq 10
    end

    it 'should return 2 when less_than 8 is passed in' do 
      expect(sum_even_values_fibonacci(8)).to eq 2
    end

    it 'should return 10 when less_than 34 is passed in' do
      expect(sum_even_values_fibonacci(34)).to eq 10
    end  
  end  
end