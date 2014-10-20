# Find the total number of inversions using the divide and conquer (Merge-Sort)

# array.txt contains all of the 100,000 integers between 1 and 100,000 (inclusive) 
# in some order, with no integer repeated.

# Compute the number of inversions in the file given, 
# where the ith row of the file indicates the ith entry of an array


$inversions = 0
arr = File.readlines('array.txt').map{|line| line.to_i}


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
      add_inversions(left.length)
    end
  end
  result + left + right
end

def add_inversions(num)
  puts "Running count of inversions is #{$inversions += num}"
end
