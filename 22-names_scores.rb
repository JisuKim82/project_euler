# Names scores
# Problem 22
# Using names.txt (right click and 'Save Link/Target As...'), a 46K text file containing over five-thousand first names, begin by sorting it into alphabetical order. Then working out the alphabetical value for each name, multiply this value by its alphabetical position in the list to obtain a name score.

# For example, when the list is sorted into alphabetical order, COLIN, which is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. So, COLIN would obtain a score of 938 × 53 = 49714.

# What is the total of all the name scores in the file?

def normalize
  names = File.read('22-names_scores_names.txt').gsub(/"|\n/,'').split(',').sort
end

def name_value(name)
  points=0
  name.split(//).each do |letter|
    case letter
    when 'A'
      points+=1
    when 'B'
      points+=2
    when 'C'
      points+=3
    when 'D'
      points+=4
    when 'E'
      points+=5
    when 'F'
      points+=6
    when 'G'
      points+=7
    when 'H'
      points+=8
    when 'I'
      points+=9
    when 'J'
      points+=10
    when 'K'
      points+=11
    when 'L'
      points+=12
    when 'M'
      points+=13
    when 'N'
      points+=14
    when 'O'
      points+=15
    when 'P'
      points+=16
    when 'Q'
      points+=17
    when 'R'
      points+=18
    when 'S'
      points+=19
    when 'T'
      points+=20
    when 'U'
      points+=21
    when 'V'
      points+=22
    when 'W'
      points+=23
    when 'X'
      points+=24
    when 'Y'
      points+=25
    when 'Z'
      points+=26
    end
  end
  points
end

def total_points(array)
  total=0
  array.each_with_index{|name,idx| total+=name_value(name)*(idx+1)}
  total
end

puts total_points(normalize)