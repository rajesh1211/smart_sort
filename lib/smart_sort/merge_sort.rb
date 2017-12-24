require 'byebug'
class SmartSort::MergeSort
  attr_accessor :array
  def initialize(arr)
    @array = arr
    @sorted_array = @array
  end

  def sort(low , high)
    _sort(low , high)
  end

  private

  def _sort(low , high)
    if low < high
      mid = low + ((high-low)/2)
      _sort(low, mid) if low <= mid
      _sort(mid + 1, high) if (mid + 1) <= high
      merge(low, mid, high)
    end
  end

  def merge(low, mid, high)
    i = 0
    p = low
    q = mid + 1
    @temp_array = @sorted_array.dup
    while p <= mid && q <= high do
      if @sorted_array[p] <= @sorted_array[q]
        @temp_array[low + i] = @sorted_array[p]
        p += 1
      else
        @temp_array[low + i] = @sorted_array[q]
        q += 1
      end
      i +=1
    end

    if p <= mid
      while p <= mid do
        @temp_array[low + i] = @sorted_array[p]
        p += 1
        i +=1
      end
    elsif q <= high
      while q <= high do
        @temp_array[low + i] = @sorted_array[q]
        q += 1
        i +=1
      end
    end
    @sorted_array = @temp_array
    @temp_array
  end
end

