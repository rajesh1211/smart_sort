require 'byebug'
class SmartSort::BubbleSort
  attr_accessor :array
  def initialize(arr)
    @array = arr
  end

  def sort
    i = @array.size - 1;
    while i >= 0 do
      j = 0;
      while j <= (i - 1)  do
        if @array[j] > @array[j+1]
          swap(j, j+1)
        end
        j += 1
      end
      i -= 1
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

