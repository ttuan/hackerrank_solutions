#!/bin/ruby
require "pry"
def getMinimumCost(n, k, c)
  c.sort!
  l = c.size
  rs = 0
  if n <= k
    return c.sum
  elsif n > k
    t = l
    i = 1
    while t != 0
      m = (t - k) > 0 ? (t-k) : 0
      rs += c[m...t].sum * i
      i += 1
      t = m
    end
  end
  rs
end

n, k = gets.strip.split(' ')
n = n.to_i
k = k.to_i
c = gets.strip
c = c.split(' ').map(&:to_i)
minimumCost = getMinimumCost(n, k, c)
puts minimumCost;
