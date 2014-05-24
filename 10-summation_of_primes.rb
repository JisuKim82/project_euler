# Summation of primes
# Problem 10
# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

# Find the sum of all the primes below two million.


# require 'prime'

# def summation_of_primes
#   sum=0 
#   Prime.each(2000000){|prime| sum+=prime }
#   puts sum
# end

#solution2 without using prime class
#create a prime? function and store value if it is prime
#iterate through numbers 2..2 million and call prime function on it

def prime?(number)
  (2...number).each do |x|
    return false if number % x == 0  
  end
  true
end

def sum_primes
  primes = []
  (2...2000000).each do |x|
    p primes<<x if prime?(x)
  end
  primes.inject(:+)
end