# Smallest multiple
# Problem 5
# 2520 is the smallest number that can be divided by each of the numbers
# from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all 
# of the numbers from 1 to 20?


#create a function that checks if value is divisible by numbers 1to20
#until true -> increment value and check if divisible by 1to20

def divisible?(number)
  [2,3,5,7,11,13,17,19].each do |x|
    return false if number % x != 0
  end
  true
end

def solution
  value=2520
  until divisible?(value)
    p value+=1
  end
  value
end