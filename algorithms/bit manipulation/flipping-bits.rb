#!/bin/ruby

def flippingBits(n)
  n ^ 0xFFFFFFFF
end

t = gets.strip.to_i
for a0 in (0..T-1)
  n = gets.strip.to_i
  result = flippingBits(N)
  puts result
end
