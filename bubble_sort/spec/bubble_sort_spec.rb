require_relative './spec_helper'
require_relative '../bubble_sort'

describe 'bubble_sort' do
  describe 'Sorts an array' do
    it "Sorts an array using the bubble sort algoritm" do
      array = [4, 3, 78, 2, 0, 2]
      expect(bubble_sort(array)).to eq(array.sort)
    end
  end
end
