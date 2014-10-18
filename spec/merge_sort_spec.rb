require 'spec_helper'
require_relative '../merge_sort'

describe '#merge_sort' do
  context 'for an array that is already sorted' do
    it 'returns itself for an odd number of elements' do
      expect(merge_sort([1,2,3,4,5])).to eq [1,2,3,4,5]
    end

    it 'returns itself for an even number of elements' do
      expect(merge_sort([2,3,4,5])).to eq [2,3,4,5]
    end

    it 'returns itself if an empty array is passed in' do
      expect(merge_sort([])).to eq []
    end
  end
  
  context 'for an unordered array' do
    it 'returns the sorted array in ascending order' do
      expect(merge_sort([3,2,1])).to eq [1,2,3]
    end
  end
end
