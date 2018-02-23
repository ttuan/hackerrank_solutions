#!/bin/ruby

def maximizingXor(l, r)
  max = 0
  for i in (l..r) do
    for j in (i..r) do
      max = [i ^ j, max].max
    end
  end
  max
end

l = gets.strip.to_i
r = gets.strip.to_i
result = maximizingXor(l, r)
puts result
