#Merge Sort

#find middle index of array
#split array in half and assign to left and right
#recursive call to itself with the left side passed in
#recursive call to itself with the right side passed in
#merge the left and right arrays
  #until either array is empty
    #if left.first <= right.first
      # result<<left.shift
    #else result<<right.shift
  #concatenate result with array elements left over
  #return result


def merge_sort(arr)
  return arr if arr.length<2

  middle_idx = arr.length/2
  left_arr = arr[0..(middle_idx-1)]
  right_arr = arr[middle_idx..-1]

  left_arr = merge_sort(left_arr)
  right_arr = merge_sort(right_arr)
  merge(left_arr,right_arr)
end

def merge(left, right)
  result = []
  until left.empty? || right.empty?
    if left.first <= right.first
      result<<left.shift
    else
      result<<right.shift
    end
  end
  result + left + right
end