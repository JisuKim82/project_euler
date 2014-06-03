# Pandigital products
# Problem 32
# We shall say that an n-digit number is pandigital if it makes use of all the digits 1 to n exactly once; for example, the 5-digit number, 15234, is 1 through 5 pandigital.

# The product 7254 is unusual, as the identity, 39 × 186 = 7254, containing multiplicand, multiplier, and product is 1 through 9 pandigital.

# Find the sum of all products whose multiplicand/multiplier/product identity can be written as a 1 through 9 pandigital.

# HINT: Some products can be obtained in more than one way so be sure to only include it once in your sum.



#nine slots (1-9)
#different scenarios
#     _ _ * _ _ _ = _ _ _ _
#     _ _ _ * _ _ = _ _ _ _

#     _ _ _ _ * _  = _ _ _ _ 
#     _ * _ _ _ _  = _ _ _ _ 

# check only one of the two scenarios to avoid duplication

require 'pry'

def pandigital?(x,y)
  

  multiplicand = x.join('').to_i
  multiplier = y.join('').to_i

  product = multiplicand*multiplier

  #numbers used
  used_numbers = x+y+(product.to_s.split('').map(&:to_i))
  #binding.pry
  (1..9).each do |digit|
    return false if used_numbers.count(0)!=0 || used_numbers.count(digit) != 1
  end
  true
end


#Scenario 1 - multiplicand is 2 digits long and multiplier is 3 digits long
multiplicand_arr = (0..9).to_a.permutation(2).to_a
multiplier_arr = (0..9).to_a.permutation(3).to_a

products = []
multiplicand_arr.each do |x|
  multiplier_arr.each do |y|
    p "x: #{x}  y: #{y}"
    condition = pandigital?(x,y)
    p "#{condition}"
    if condition
      p 'inside!!!'
      products<<(x.join('').to_i)*(y.join('').to_i)
    end
  end
end

#Scenario 2 - multiplicant is 1 digit and multiplier is 4 digits long
multiplicand_arr = (0..9).to_a.permutation(1).to_a
multiplier_arr = (0..9).to_a.permutation(4).to_a

multiplicand_arr.each do |x|
  multiplier_arr.each do |y|
    p "x: #{x}  y: #{y}"
    condition = pandigital?(x,y)
    p "#{condition}"
    if condition
      p 'inside!!!'
      products<<(x.join('').to_i)*(y.join('').to_i)
    end
  end
end

products.uniq.inject(:+)

