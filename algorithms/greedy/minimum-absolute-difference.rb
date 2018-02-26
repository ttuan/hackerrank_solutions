#!/bin/ruby

def minimumAbsoluteDifference(n, arr)
  rs = 2 * 10**9
  arr.sort!

  for i in (1...n) do
    t = (a[i] - a[i-1]).abs
    rs = t if rs > t
    return rs if rs == 0
  end
  rs
end

n = gets.strip.to_i
arr = gets.strip
arr = arr.split(' ').map(&:to_i)
result = minimumAbsoluteDifference(n, arr)
puts result
