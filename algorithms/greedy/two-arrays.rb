#!/bin/ruby

def twoArrays(k, a, b)
  a.sort!
  b.sort.reverse!
  for i in (0...a.size) do
    return "NO" if a[i] + b[i] < k
  end
  return "YES"
end

q = gets.strip.to_i
for a0 in (0..q-1)
  n, k = gets.strip.split(' ')
  n = n.to_i
  k = k.to_i
  a = gets.strip
  a = a.split(' ').map(&:to_i)
  b = gets.strip
  b = b.split(' ').map(&:to_i)
  result = twoArrays(k, a, b)
  puts result
end
