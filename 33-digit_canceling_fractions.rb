# Digit canceling fractions
# Problem 33
# The fraction 49/98 is a curious fraction, as an inexperienced 
# mathematician in attempting to simplify it may incorrectly believe
# that 49/98 = 4/8, which is correct, is obtained by cancelling the 9s.

# We shall consider fractions like, 30/50 = 3/5, to be trivial examples.

# There are exactly four non-trivial examples of this type of fraction,
# less than one in value, and containing two digits in the numerator 
# and denominator.

# If the product of these four fractions is given in its lowest common 
# terms, find the value of the denominator.

#numerator : 11..99
  ##denominator: 12..99

def curious_fraction(numerator,denominator)
  numerators = numerator.to_s.split('').map(&:to_i)
  denominators = denominator.to_s.split('').map(&:to_i)

  if numerators[0]==denominators[0] && numerators[0]!=0
    numerators.shift
    denominators.shift
    return (numerators[0].to_f)/denominators[0]
  
  elsif numerators[1]==denominators[0] && numerators[1]!=0
    numerators.pop
    denominators.shift
    return (numerators[0].to_f)/denominators[0]
  
  elsif numerators[0]==denominators[1] && numerators[0]!=0
    numerators.shift
    denominators.pop
    return (numerators[0].to_f)/denominators[0]

  elsif numerators[1]==denominators[1] && numerators[1]!=0
    numerators.pop
    denominators.pop
    return (numerators[0].to_f)/denominators[0]
  else
    false
  end

end

def solution
  results=[]
  (11..99).each do |numerator|
    (numerator+1..99).each do |denominator|
      if (numerator.to_f)/denominator == curious_fraction(numerator,denominator)
        results<<[numerator,denominator]
      end
    end
  end

  numerator=1
  denominator=1

  results.each do |arr|
    numerator = arr[0]*numerator
    denominator =arr[1]*denominator
  end

  (2..numerator).each do |x|
    while numerator % x == 0 && denominator % x ==0
      numerator = numerator/x
      denominator = denominator/x
    end
  end
  denominator
end

