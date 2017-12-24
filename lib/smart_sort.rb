require "smart_sort/version"
require 'smart_sort/quick_sort'

module SmartSort
  def self.sort(arr, sorting_name)
    if sorting_name == 'quick_sort'
      QuickSort.new(arr).sort(0 , arr.size - 1)
    elsif sorting_name == 'merge_sort'
    else
      return QuickSort.new(arr).sort(0 , arr.size - 1)
    end
    return arr
  end
end
