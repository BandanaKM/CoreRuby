=begin
PROBLEM
write a ruby program that tells you how many minutes there are in a year
(do not bother right now about leap years etc.)

PROBLEM APPROACH

units
60minutes/hr * 24hrs/day = 1_440 minutes
1_440 minutes * 365.242days/year = 525_948.48 minutes/year

TAKE 2 - no remainder on 365
def minutes_per_year(years)
  minutes = 60*24*365
  result = years*minutes
end

years = 2
puts "There are #{minutes_per_year(years)} minutes in #{years} year(s)"

=end


def minutes_per_year
    60*24*365
end

puts "There are #{minutes_per_year} minutes in a year"