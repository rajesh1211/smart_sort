require 'byebug'
class SmartSort::QuickSort
  attr_accessor :array
  def initialize(arr)
    @array = arr
  end

  def sort(low , high)
    _sort(low , high)
    @array
  end

  private

  def _sort(low , high)
    if(low < high)
      pi = partition(low , high)
      _sort(low, pi - 1)
      _sort(pi + 1, high)
    end
  end

  def partition(low, high)
    i =  low-1
    j = low
    pivot = @array[high]
    while j <= high-1  do
      if @array[j] <= pivot
        i += 1
        swap(i , j)
      end
      j +=1
    end
    swap(i+1, high)
    i + 1
  end

  def swap(i, j)
    temp = @array[i]
    @array[i] = @array[j]
    @array[j] = temp
  end
end
