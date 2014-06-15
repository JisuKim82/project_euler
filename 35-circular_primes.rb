# Circular primes
# Problem 35
# The number, 197, is called a circular prime because all rotations of the digits: 197, 971, and 719, are themselves prime.

# There are thirteen such primes below 100: 2, 3, 5, 7, 11, 13, 17, 31, 37, 71, 73, 79, and 97.

# How many circular primes are there below one million?



#convert to string and get length of the digits
#split on '' and for length - 1 times shift and push

def circular_numbers(x)

  digits = x.to_s.split('')
  count = digits.length
  
  results = [x]
  (1...count).each do |x|
    value = results[-1].to_s.split('')
    first_digit = value.shift
    value = value.join + first_digit
    results << value.to_i
  end
  results
end


# Sieve of Eratosthenes to speed up th solution
# The algorithm needs to have an upper limit for the primes to find. Lets call this limit N
# The algorithm works as follows.

# Create a list l of consecutive integers {2,3,…,N}.
# Select p as the first prime number in the list, p=2.
# Remove all multiples of p from the l.
# set p equal to the next integer in l which has not been removed.
# Repeat steps 3 and 4 until p^2 > N, all the remaining numbers in the list are primes

def solution
  prime = 2
  index = 0

  list = (2..1000000).to_a

  while (prime**2 < 1000000)
    list = list.select{|x| (x % list[index] != 0) || (list[index] == x)}
    index += 1
    prime = list[index]
  end

  circular_primes = []
  
  list.each do |prime|
    if circular_numbers(prime).map{|x| list.include?(x)}.all?{|x| x==true}
      p circular_primes<<prime
    end
  end
  circular_primes
end



# def prime?(number)
#   (2...number).each do |x|
#     return false if number % x == 0 && number != 2
#   end
#   true
# end

# circular_primes=[]

# (2..1000000).each do |number|
#   if circular_numbers(number).map{|x| prime?(x)}.all?{|x| x==true}
#     circular_primes<<number
#   end
# end


