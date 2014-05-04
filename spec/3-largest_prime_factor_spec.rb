require_relative 'spec_helper'
require_relative '../3-largest_prime_factor'

describe 'largest_prime' do
  it 'returns the largest prime number' do 
    expect(largest_prime(38)).to eq(19)
  end

  it 'returns the largest prime number' do
    expect(largest_prime(5)).to eq(5)
  end  

  it 'returns the largest prime number' do
    expect(largest_prime(17)).to eq(17)
  end  
end