=begin
Exercise4. Write a method leap_year?. It should accept a year value from the user, check whether it's a leap year, and then return true or false. With the help of this leap_year?() method calculate and display the number of minutes in a leap year (2000 and 2004) and the number of minutes in a non-leap year (1900 and 2005). Note: a century year, like 1900 and 2000, is a leap year only if it is divisible by 400.
=end

=begin 

APPROACH 1

def leap_year?(year_value)
  year_value % 400 == 0 ? true : false
end

def calc_min(year_type)
  leap_min = 366*24*60
  non_leap_min =  365*24*60  
  puts year_type ?  "#{leap_min} min. in leap year" : "#{non_leap_min} min. in non-leap year"
end
    

leap_year?(2004)
leap_year?(2000)

calc_min(leap_year?(2004))
calc_min(leap_year?(2000))

=end

=begin
APPROACH 2

def leap_year?(year)
  year % 4 == 0 unless year % 400 == 0
end

def calc_min(leap_year)
  leap_year ? calc_min=366*24*60 : calc_min=365*24*60  
end
    
year = [2000, 2004, 2005]

year.each {|years| puts "There are #{calc_min(leap_year?(years))} minutes in #{years}"}
=end


def leap_year?(year)
  year % 4 == 0 unless (year % 100 == 0 && year % 400 != 0)
end

def calc_min(leap_year)
 leap_year ? 366*24*60 : 365*24*60  
end
    
year = [2000, 2004, 2005, 1900, 1600]

year.each {|years| puts "There are #{calc_min(leap_year?(years))} minutes in #{years}"}
