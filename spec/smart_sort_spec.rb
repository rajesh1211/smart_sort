require 'spec_helper'

describe SmartSort do
  it 'has a version number' do
    expect(SmartSort::VERSION).to eql("1.0.0")
  end

  describe 'quick_sort' do
    it "tests quick sort method" do
      arr = [19, 28, 9, 10, 6, 16, 8, 1, 4, 24, 10, 2, 8, 3, 9, 13, 4, 10, 19, 1, 8, 18, 1, 5, 10, 17, 6, 26, 6, 10]
      sorted_arr = [1, 1, 1, 2, 3, 4, 4, 5, 6, 6, 6, 8, 8, 8, 9, 9, 10, 10, 10, 10, 10, 13, 16, 17, 18, 19, 19, 24, 26, 28]
      sorted_via_algo = SmartSort.sort(arr,'quick_sort')
      expect(sorted_via_algo).to eql(sorted_arr)
    end
  end
end
