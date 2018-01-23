#!/bin/ruby

def funnyString(s)
  r = s.reverse
  for i in (1...s.length-1) do
    return "Not Funny" if (s[i].ord - s[i-1].ord).abs != (r[i].ord - r[i-1].ord).abs
  end
  "Funny"
end

q = gets.strip.to_i
for a0 in (0..q-1)
  s = gets.strip
  result = funnyString(s)
  puts result;
end
