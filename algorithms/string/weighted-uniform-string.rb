#!/bin/ruby

# TODO Need more refactor algorithm to pass all testcase

s = gets.strip
n = gets.strip.to_i

s_chars = s.split('')
d = Array.new(s_chars.length, 0)
i = -1
previous_char = s_chars.last
while !s_chars.empty? do
  current_char = s_chars.pop
  i += 1
  d[i] = d[i-1] if previous_char == current_char
  d[i] += current_char.ord - 96
  previous_char = current_char
end

for a0 in (0..n-1)
  x = gets.strip.to_i
  puts d.include?(x) ? "Yes" : "No"
end

