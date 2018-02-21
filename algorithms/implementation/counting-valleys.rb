#!/bin/ruby

def countingValleys(n, s)
  valley = 0
  level = 0
  s.split("").each do |x|
    level += 1 if x == "U"
    level -= 1 if x == "D"
    if level == 0 && x == "U"
      valley += 1
    end
  end
  valley
end

n = gets.strip.to_i
s = gets.strip
result = countingValleys(n, s)
puts result
