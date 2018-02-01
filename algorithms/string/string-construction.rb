#!/bin/ruby

def stringConstruction(s)
  s.split('').uniq.count
end

q = gets.strip.to_i
for a0 in (0..q-1)
  s = gets.strip
  result = stringConstruction(s)
  puts result
end
