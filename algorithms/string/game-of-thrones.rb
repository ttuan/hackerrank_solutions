#!/bin/ruby

def gameOfThrones(s)
  m = s.split('').map {|x| [x, s.count(x)]}.uniq
  m.count {|x| x[1] % 2 == 1} > 1 ? "NO" : "YES"
end

s = gets.strip
result = gameOfThrones(s)
puts result;
