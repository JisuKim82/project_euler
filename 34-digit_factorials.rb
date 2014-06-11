# Digit factorials
# Problem 34
# Published on Friday, 3rd January 2003, 06:00 pm; Solved by 49113
# 145 is a curious number, as 1! + 4! + 5! = 1 + 24 + 120 = 145.

# Find the sum of all numbers which are equal to the sum of the factorial of their digits.

# Note: as 1! = 1 and 2! = 2 are not sums they are not included.

def curious_number?(x)
  return false if x==1 || x==2

  digits = x.to_s.split('').map(&:to_i)
  factorials_of_digits=[]
  digits.each do |x|  
    factorial = 1
    while(x>1)
      factorial = factorial*x
      x-=1
    end
    factorials_of_digits<<factorial
  end

  factorials_of_digits.inject(:+)==x ? true:false
end

def solution
  curious_numbers=[]
  (1..99999).each do |x|
    curious_numbers<<x if curious_number?(x)
  end
  curious_numbers.inject(:+)
end