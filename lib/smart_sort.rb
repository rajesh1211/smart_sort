require "smart_sort/version"
require 'smart_sort/quick_sort'
require 'smart_sort/merge_sort'
require 'smart_sort/insertion_sort'
require 'smart_sort/selection_sort'

module SmartSort
  def self.sort(arr, sorting_name)
    if sorting_name == 'quick_sort'
      return QuickSort.new(arr).sort(0 , arr.size - 1)
    elsif sorting_name == 'merge_sort'
      return MergeSort.new(arr).sort(0 , arr.size - 1)
    elsif sorting_name == 'insertion_sort'
      return InsertionSort.new(arr).sort
    elsif sorting_name == 'selection_sort'
      return SelectionSort.new(arr).sort
    else
      return QuickSort.new.sort(arr, 0, arr.size - 1);
    end
    return arr
  end
end
