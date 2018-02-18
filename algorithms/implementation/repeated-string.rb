#!/bin/ruby

def repeatedString(s, n)
  repeated = n / s.size
  div = n % s.size
  s.count('a') * repeated + s[0...div].count('a')
end

s = gets.strip
n = gets.strip.to_i
result = repeatedString(s, n)
puts result
