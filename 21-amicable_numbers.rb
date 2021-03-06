# Amicable numbers
# Problem 21
# Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
# If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and each of a and b are called amicable numbers.

# For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.

# Evaluate the sum of all the amicable numbers under 10000.

def sum_divisors(num)
  divisors=[]
  (1...num).each do |x|
    divisors<<x if num%x==0
  end
  divisors.inject(&:+)
end


def amicable_numbers_sum(num)
  results=[]
  (2..num).each do |x|
    results<<[x,sum_divisors(x)] 
  end

  comparison=[]
  results.each do |arr|
    comparison<<[arr[1],arr[0]] unless arr[1]==arr[0]
  end

  results.select{|arr| comparison.include?(arr)}.flatten.inject(&:+)/2

end