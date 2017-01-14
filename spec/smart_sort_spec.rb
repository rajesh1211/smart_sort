require 'spec_helper'

describe SmartSort do
  it 'has a version number' do
    expect(SmartSort::VERSION).to eql("0.1.9")
  end

  describe 'quick_sort' do
    it "tests quick sort method" do
      arr = SmartSort.sort([3,4,6,5],'quick_sort')
      expect(arr).to eql([3,4,5,6])
    end
  end  
end
