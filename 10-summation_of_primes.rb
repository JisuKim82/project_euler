require 'prime'

def summation_of_primes
  sum=0 
  Prime.each(2000000){|prime| sum+=prime }
  puts sum
end