require_relative 'spec_helper'
require_relative '../25-1000_digit_Fibonacci_number'

describe '#fibonnacci_term_with_n_digits' do
  context 'the first term to contain n digits in a fibonnacci sequence is returned' do
    it 'returns 12 when n is 3' do
      expect(fibonnacci_term_with_n_digits(3)).to eq 12
    end

    it 'returns 1 when n is 1' do
      expect(fibonnacci_term_with_n_digits(1)).to eq 1
    end
  end
end