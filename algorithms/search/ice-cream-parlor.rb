#!/bin/ruby

def icecreamParlor(m, arr)
  h = {}
  arr.each_with_index do |x, i|
    return [i+1, h[m-x] + 1].sort unless h[m-x].nil?
    h[x] = i
  end
  return []
end

t = gets.strip.to_i
for a0 in (0..t-1)
  m = gets.strip.to_i
  n = gets.strip.to_i
  arr = gets.strip
  arr = arr.split(' ').map(&:to_i)
  result = icecreamParlor(m, arr)
  puts result.join(" ")
end
