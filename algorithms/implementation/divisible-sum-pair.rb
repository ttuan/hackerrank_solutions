#!/bin/ruby

def divisibleSumPairs(n, k, ar)
  rs = 0
  for i in (0...ar.size-1) do
    for j in (i+1...ar.size) do
      rs += 1 if (ar[i] + ar[j]) % k == 0
    end
  end
  rs
end

n, k = gets.strip.split(' ')
n = n.to_i
k = k.to_i
ar = gets.strip
ar = ar.split(' ').map(&:to_i)
result = divisibleSumPairs(n, k, ar)
puts result;
