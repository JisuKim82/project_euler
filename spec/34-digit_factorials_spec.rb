require_relative 'spec_helper'
require_relative '../34-digit_factorials'

describe '#curious_number?' do
  describe 'the sum of all numbers which are equal to the sum of the factorial of their digits' do
    it 'returns true for 145' do
      expect(curious_number?(145)).to eq true
    end

    it 'returns false for 146' do
      expect(curious_number?(146)).to eq false
    end

    it 'returns false for 2' do
      expect(curious_number?(2)).to eq false
    end
  end
end