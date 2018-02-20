#!/bin/ruby

def hurdleRace(k, height)
  k > height.max ? 0 : height.max - k
end

n, k = gets.strip.split(' ')
n = n.to_i
k = k.to_i
height = gets.strip
height = height.split(' ').map(&:to_i)
result = hurdleRace(k, height)
puts result
