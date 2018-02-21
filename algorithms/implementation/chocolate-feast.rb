#!/bin/ruby
require "pry"
def chocolateFeast(n, c, m)
  rs = n / c
  wrappers = rs
  while wrappers >= m
    new_chocolate = wrappers / m
    wrappers = wrappers % m + new_chocolate
    rs += new_chocolate
  end
  rs
end

t = gets.strip.to_i
for a0 in (0..t-1)
  n, c, m = gets.strip.split(' ')
  n = n.to_i
  c = c.to_i
  m = m.to_i
  result = chocolateFeast(n, c, m)
  puts result
end
