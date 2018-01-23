#!/bin/ruby

def twoStrings(s1, s2)
  s1.count(s2) == 0 ? "NO" : "YES"
end

q = gets.strip.to_i
for a0 in (0..q-1)
    s1 = gets.strip
    s2 = gets.strip
    result = twoStrings(s1, s2)
    puts result;
end
