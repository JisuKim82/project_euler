require_relative 'spec_helper'
require_relative '../31-pandigital_products'

describe '#pandigital?' do
  describe 'checks to see if the multiplicand/multiplier/product identity can be written as a 1 through 9 pandigital' do
    it 'returns false when 12 and 23 is passed in' do
      expect(pandigital?([1,2],[2,3])).to eq false
    end

    it 'returns true when 39 and 186 is passed in' do
      expect(pandigital?([3,9],[1,8,6])).to eq true
    end
  end
end

