require "smart_sort/version"
require 'smart_sort/quick_sort'
require 'smart_sort/merge_sort'
require 'smart_sort/insertion_sort'
require 'smart_sort/selection_sort'
require 'smart_sort/bubble_sort'

module SmartSort
  def self.sort(arr, sorting_name)
    arr = case sorting_name
          when 'quick_sort'
            QuickSort.new(arr).sort(0 , arr.size - 1)
          when 'merge_sort'
            MergeSort.new(arr).sort(0 , arr.size - 1)
          when 'insertion_sort'
            InsertionSort.new(arr).sort
          when 'selection_sort'
            SelectionSort.new(arr).sort
          when 'bubble_sort'
            BubbleSort.new(arr).sort
          else
            QuickSort.new.sort(arr, 0, arr.size - 1);
          end
    return arr
  end
end
