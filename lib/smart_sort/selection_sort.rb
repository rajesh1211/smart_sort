require 'byebug'
class SmartSort::SelectionSort
  attr_accessor :array
  def initialize(arr)
    @array = arr
  end

  def sort
    i = 0;
    while i < @array.size do
      min = @array[i]
      min_index = i
      j = i+1;
      while j < @array.size do
        if @array[j] < min
          min = @array[j]
          min_index = j
        end
        j += 1
      end
      swap(i , min_index)
      i += 1
    end
    @array
  end

  private

  def swap(i, j)
    temp = @array[i]
    @array[i] = @array[j]
    @array[j] = temp
  end
end

