#!/bin/ruby

def gameOfStones(n)
  n % 7 < 2 ? "Second" : "First"
end

t = gets.strip.to_i
for a0 in (0..t-1)
  n = gets.strip.to_i
  result = gameOfStones(n)
  puts result
end
