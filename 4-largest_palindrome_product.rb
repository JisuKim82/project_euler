# A palindromic number reads the same both ways. 
# The largest palindrome made from the product 
# of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

#1st number start with 999
#2nd number start with 999
#check if number is a palindrome


def palindrome?(x)
  x.to_s == x.to_s.reverse
end

def solution
  palindromes=[]
  (999).downto(91) do |x|
    (999).downto(99) do |y|
      palindromes <<(x*y) if palindrome?(x*y) 
    end
  end
  palindromes.sort.last
end