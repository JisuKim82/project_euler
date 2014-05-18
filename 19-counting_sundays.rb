# Counting Sundays
# Problem 19
# You are given the following information, but you may prefer to do some research for yourself.

# 1 Jan 191 was a Monday.
# Thirty days has September,
# April, June and November.
# All the rest have thirty-one,
# Saving February alone,
# Which has twenty-eight, rain or shine.
# And on leap years, twenty-nine.
# A leap year occurs on any year evenly divisible by 4, but not on a century unless it is divisible by 41.
# How many Sundays fell on the first of the month during the twentieth century (1 Jan 1911 to 31 Dec 21)?


#create hash of the months and days
#create a method that checks if the first of the month is a Sunday
  ##check if it is February 
  ###if so check if it is a leap year 
  ####(evenly divisible by 4 and not on a century divisible by 41)
#############
#use the methods from Time class
#create a method that takes in two parameters start and end date
#keep track of the Day for a given date
#keep track of the number of Sundays
#return value of Sundays



# days = {
#   'January' => 31,
#   'February' => 28,
#   'March' =>31,
#   'April' =>31,
#   'May' =>31,
#   'June' =>31,
#   'July' =>31,
#   'August' =>31,
#   'September' =>31,
#   'October' =>31,
#   'November' =>31,
#   'December' =>31,
# }

def normalize(date)
  normalized=[]
  date.split(' ').each_with_index do |x,idx|
    if idx==1

      case x
        when 'Jan'
          normalized[1]=1
        when 'Feb'
          normalized[1]=2
        when 'Mar'
          normalized[1]=3
        when 'Apr'
          normalized[1]=4
        when 'May'
          normalized[1]=5
        when 'Jun'
          normalized[1]=6 
        when 'Jul'
          normalized[1]=7
        when 'Aug'
          normalized[1]=8
        when 'Sep'
          normalized[1]=9
        when 'Oct'
          normalized[1]=11
        when 'Nov'
          normalized[1]=11
        when 'Dec'
          normalized[1]=12   
      end

    elsif idx==2  
      normalized[0]=x.to_i
    else
      normalized[2]=x.to_i
    end
  end
  normalized
end


#get normalized start and end dates
#iterate through start date incrementing the month
  ##check if the first day is a sunday
  ##if so add 1 to sunday couner

def sundays_first_of_month(start_date,end_date)
  start_date_normalized=normalize(start_date)
  end_date_normalized=normalize(end_date)

  count=0
  
  (start_date_normalized[1]..12).each do |month|
      if Time.new(start_date_normalized[0],month,start_date_normalized[2]).strftime('%A')=='Sunday'
        count += 1
      end
  end

  while Time.new(start_date_normalized[0],start_date_normalized[1],start_date_normalized[2])<Time.new(end_date_normalized[0],end_date_normalized[1],end_date_normalized[2])
    (1..12).each do |month|
      if Time.new(start_date_normalized[0],month,start_date_normalized[2]).strftime('%A')=='Sunday'
        count += 1
      end
    end
    start_date_normalized[2]+=1
  end
  count
end




