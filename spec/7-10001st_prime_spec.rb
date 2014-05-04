require_relative 'spec_helper'
require_relative '../7-10001st_prime'

describe 'prime?' do
  context 'it returns true for prime numbers' do
    it 'returns true if 5 is passed' do
      expect(prime?(5)).to eq true
    end

    it 'returns true if 19 is passed' do
      expect(prime?(19)).to eq true
    end
  end

  context 'it returns false for non prime numbers' do
    it 'returns false for even numbers' do
      expect(prime?(100)).to eq false
    end

    it 'returns false for 99' do 
      expect(prime?(99)).to eq false
    end
  end
end

describe 'xth_prime_number' do
  it 'returns 3 for the second prime number' do
    expect(xth_prime_number(2)).to eq 3
  end

  it 'returns 13 for the sixth prime number' do 
    expect(xth_prime_number(6)).to eq 13
  end
end