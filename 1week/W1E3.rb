=begin
PROBLEM
Write a ruby program that displays how old I am(in years), if am 979000000 seconds old. 
Display the results as a floating point (decimal) number to two
decimal places (for example, 17.23)

Notes: To format the output to say 2 decimal places, we can use the 
Kernel's format method. For example, if x = 45.5678 the format
("%.2f", x) will return the string 45.57
=end



=begin
PROBLEM APPROACH
units
60s/minute * 60minutes/hr = 3_600 seconds in an hour
3_600 seconds * 24hrs/day = 86_400 seconds in a day
86_400 secons * 365.242days/year = 31_556_908.8 seconds in a year

("%.2f", x) can also be written as 
"%.2f" % x

"%.2f" % years_in_seconds.quo(31_556_908.8)

=end

def calculate(years_in_seconds)
  sec_per_year = 60*60*24*365
  years = "%.2f" % years_in_seconds.quo(sec_per_year)
  puts years
end

calculate(979_000_000)
