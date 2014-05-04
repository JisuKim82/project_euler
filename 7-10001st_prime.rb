# 10001st prime
# Problem 7
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

# What is the 10001st prime number?


#make a prime? method to check
#until prime numbers array length is less than 10000 find the next prime number
  #iterate from 14 upto large number and keep track of the number and check if it is prime
  #if prime push value into prime numbers array


def prime?(x)
  (2..x-1).each{|num| return false if x%num==0 }
  true
end


def xth_prime_number(xth)
  prime_numbers=[]
  x=2

  until prime_numbers.length ==xth
    p prime_numbers<<x if prime?(x)
    x+=1
  end
  prime_numbers.last

end
