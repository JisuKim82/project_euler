# Sum square difference
# Problem 6
# The sum of the squares of the first ten natural numbers is,

# 1^2 + 2^2 + ... + 10^2 = 385
# The square of the sum of the first ten natural numbers is,

# (1 + 2 + ... + 10)^2 = 55^2 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.



#iterate from 1 to 100 and square each value and store in an array
#get the sum of the array
#get sum from 1 to 100 and square it
#get the difference from array and the value from above

sum_of_squares=(1..100).map{|x| x**2}.inject(:+)
square_of_sum=(1..100).inject(:+) ** 2

difference = square_of_sum - sum_of_squares


