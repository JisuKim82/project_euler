require_relative 'spec_helper'
require_relative '../12-highly_divisible_triangular_number'

describe 'number_factors' do 

  context 'returns the total amount of factors' do
    it 'returns a count of 4 when six is passed in' do
      expect(number_factors(6)).to eq 4
    end

    it 'returns a count of 6 when twenty-eight is passed in' do
      expect(number_factors(28)).to eq 6
    end 
  end

end

describe 'triangle_number' do
  context 'returns the triangular number' do
    it 'returns 28 when seven is passed in' do
      expect(triangle_number(7)).to eq 28
    end

    it 'returns 1 when one is passed in' do
      expect(triangle_number(1)).to eq 1
    end
  end
end

describe 'triangle_number_with_over_x_factors' do
  it 'returns 28 when four is passed in' do
    expect(triangle_number_with_over_x_factors(4)).to eq 28
  end

  it 'returns 6 when three is passed in' do
    expect(triangle_number_with_over_x_factors(3)).to eq 6
  end
end