#!/bin/ruby

s = gets.strip
n = gets.strip.to_i

s_chars = s.split('')
d = []

prev = s_chars[0].ord - 96
d[prev] = true

for i in (1...s_chars.size) do
  if s_chars[i] == s_chars[i-1]
    prev = prev + s_chars[i].ord - 96
  else
    prev = s_chars[i].ord - 96
  end
  d[prev] = true
end

for a0 in (0..n-1)
  x = gets.strip.to_i
  puts d[x] ? "Yes" : "No"
end

