Special Pythagorean triplet
Problem 9
A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

a^2 + b^2 = c^2
For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.

#starting from a=3, b+c= 1000-a = 997
  #b=a+1, c=1000-a-b
    #if a+b+c break out of loop and return product abc


(3..1000).each do |a|
  b=a+1
  (b..1000).each do |b|
    c=1000-a-b
    if(a+b+c==1000) && (a<b) && (b<c) && (a<c)
        p [a,b,c]
        return a*b*c if (a**2)+(b**2)==(c**2) && (a+b+c==1000)
    end 
  end
end
