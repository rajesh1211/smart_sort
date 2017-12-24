require 'byebug'
class SmartSort::InsertionSort
  attr_accessor :array
  def initialize(arr)
    @array = arr
  end

  def sort
    i = 1;
    while i < @array.size do
      j = 0;
      temp = @array[i]
      while j < i do
        if @array[j] >= temp
          break
        end
        j += 1
      end

      if j != i
        p = i
        while p > j do
          @array[p] = @array[p-1]
          p -= 1
        end
        @array[p] = temp
      end
      i += 1
    end
    @array
  end
end

