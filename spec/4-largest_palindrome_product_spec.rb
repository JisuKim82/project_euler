require_relative 'spec_helper'
require_relative '../4-largest_palindrome_product'

describe '#palindrome' do
  context 'check if a value is a palindrome' do
    it 'returns true when x is 9009' do
      expect(palindrome?(9009)).to eq true
    end
    it 'returns true when x is 1111' do
      expect(palindrome?(1111)).to eq true
    end
    it 'returns false when x is 1122' do
      expect(palindrome?(1122)).to eq false
    end
  end
end

describe '#solution' do
  it 'returns 906609' do 
    expect(solution).to eq 906609
  end
end