#!/bin/ruby

def catAndMouse(x, y, z)
  if (z-x).abs == (z-y).abs
    "Mouse C"
  elsif (z-x).abs > (z-y).abs
    "Cat B"
  else
    "Cat A"
  end
end

q = gets.strip.to_i
for a0 in (0..q-1)
  x, y, z = gets.strip.split(' ')
  x = x.to_i
  y = y.to_i
  z = z.to_i
  result = catAndMouse(x, y, z)
  puts result
end

