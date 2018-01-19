#!/bin/ruby

def timeConversion(s)
  hour, ap = s[0..1].to_i, s[-2..-1]
  if ap == "AM"
    hour = 0 if hour == 12
  else
    hour = hour + 12 if hour != 12
  end
  "#{sprintf '%02d', hour}" + s[2..-3]
end

s = gets.strip
result = timeConversion(s)
puts result

