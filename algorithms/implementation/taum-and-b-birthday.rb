#!/bin/ruby

def taumBday(b, w, x, y, z)
  if x + z < y
    b * x + (x + z) * w
  elsif y + z < x
    w * y + (y + z) * b
  else
    b * x + w * y
  end
end

t = gets.strip.to_i
for a0 in (0..t-1)
  b, w = gets.strip.split(' ')
  b = b.to_i
  w = w.to_i
  x, y, z = gets.strip.split(' ')
  x = x.to_i
  y = y.to_i
  z = z.to_i
  result = taumBday(b, w, x, y, z)
  puts result
end
