#!/bin/ruby

def jumpingOnClouds(c)
  rs = 0
  i = 0
  while i != c.size-1
    jumpStep = c[i+2] == 0 ? 2 : 1
    i += jumpStep
    rs +=1
  end
  rs
end

n = gets.strip.to_i
c = gets.strip
c = c.split(' ').map(&:to_i)
result = jumpingOnClouds(c)
puts result
