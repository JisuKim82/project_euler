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

def prime?(number)
  (2...number).each do |x|
    return false if number % x == 0 && number != 2
  end
  true
end

circular_primes=[]

(2..1000000).each do |number|
  if circular_numbers(number).map{|x| prime?(x)}.all?{|x| x==true}
    circular_primes<<number
  end
end


