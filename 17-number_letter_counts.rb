# Number letter counts
# Problem 17
# If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.

# If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?


# NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.

require 'numbers_and_words'

results=[]
(1..1000).each do |x|
  if x<=100
    results<<x.to_words.gsub(/ |-/,'').length
  else
    results<<x.to_words.gsub(/ |-/,'').length + 3 #3 to account for 'and'
  end
end

results.inject(:+)-(3*9)  #200,300,400,etc