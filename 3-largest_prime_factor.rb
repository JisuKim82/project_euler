# Largest prime factor
# Problem 3
# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?


# require 'prime'

# def largest_prime(x)
#   largest_primes_array=Prime.first(5000).reverse

#   largest_primes_array.each do |prime|
#   #p prime
#   return prime if x%prime == 0
#   end
# end


#solution without using the prime class

def largest_prime(x)
  prime_number = 2
  while (prime_number <= x) do
    if x%prime_number == 0
      x=x/prime_number
    else
      prime_number+=1
    end
  end
  prime_number
end