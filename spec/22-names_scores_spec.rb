require_relative 'spec_helper'
require_relative '../22-names_scores'

describe '#name_value' do
  context 'calculates the point value of a name' do
    it 'returns 53 when "COLIN" is passed in' do
      expect(name_value("COLIN")).to eq 53
    end

    it 'returns 59 when "JISU" is passed in' do
      expect(name_value("JISU")).to eq 59
    end
  end
end

describe '#total_points' do
  context 'calculates the total points of an array of names' do
    it 'returns 171 when for ["COLIN","JISU"]' do
      expect(total_points(["COLIN","JISU"])).to eq 171
    end
  end
end