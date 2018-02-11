#!/bin/ruby

def utopianTree(n)
  h = 1
  for i in 1..n do
    h = h * 2 if i.odd?
    h = h + 1 if i.even?
  end
  h
end

t = gets.strip.to_i
for a0 in (0..t-1)
  n = gets.strip.to_i
  result = utopianTree(n)
  puts result
end
