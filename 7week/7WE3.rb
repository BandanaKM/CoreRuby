require 'Date'

def month_days(month, year=2013)
  date = Date.new(year, month, 1)
  count = 0
  until date.month == (month+1)
    date += 1 
    count += 1
  end
  "#{count} #{Date::MONTHNAMES[month]}"
end

puts month_days(5)
puts month_days(2, 2000)