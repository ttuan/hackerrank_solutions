#!/bin/ruby

def theLoveLetterMystery(s)
  rs = 0
  l = s.length
  mid = l.even? ? l/2 -1 : l/2
  for i in (0..mid)
    rs += (s[i].ord - s[l-i-1].ord).abs
  end
  rs
end

q = gets.strip.to_i
for a0 in (0..q-1)
  s = gets.strip
  result = theLoveLetterMystery(s)
  puts result;
end
