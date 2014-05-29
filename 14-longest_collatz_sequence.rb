# Longest Collatz sequence
# Problem 14
# Published on Friday, 5th April 2002, 06:00 pm; Solved by 106121
# The following iterative sequence is defined for the set of positive integers:

# n → n/2 (n is even)
# n → 3n + 1 (n is odd)

# Using the rule above and starting with 13, we generate the following sequence:

# 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

# Which starting number, under one million, produces the longest chain?

# NOTE: Once the chain starts the terms are allowed to go above one million.


#iterate from 1 to 1,000,000 and get collatz sequence
#if even n -> n/2
#if odd  n -> 3n+1
#add 1 to counter
#loop until value equals 1

#return number with the highest counter value

#solution 1
# results=Hash.new

# (1..1000000).each do |x|
#   counter=0
#   num=x
#   until x==1
#     if x.even?
#       x=x/2
#       counter+=1
#     else
#       x=3*x+1
#       counter+=1
#     end
#   end
#   results[num]=counter
# end

# results.sort_by{|k,v| v}.last[0]


################solution 2############
def collatz_count(x)
  count = 1
  while x!=1 
    if x.even?
      x=x/2
      count+=1
    else
      x=3*x+1
      count+=1
    end
  end
  count
end

def num_with_largest_sequence
  count = 0
  value =0
  (2...1000000).each do |n|
    if collatz_count(n) > count
      count = collatz_count(n) 
      p value = n
    end
  end
  value
end