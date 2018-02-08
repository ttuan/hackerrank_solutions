#!/bin/ruby
require "pry"
def solve(a)
  s = a.size
  lsum = Array.new(s, 0)
  rsum = Array.new(s, 0)

  for i in (1...s) do
    lsum[i] = lsum[i-1] + a[i-1]
  end
  for i in (s-2).downto(0) do
    rsum[i] = rsum[i+1] + a[i+1]
  end

  for i in (0...s) do
    return "YES" if lsum[i] == rsum[i]
  end
  return "NO"
end

T = gets.strip.to_i
for a0 in (0..T-1)
  n = gets.strip.to_i
  a = gets.strip
  a = a.split(' ').map(&:to_i)
  result = solve(a)
  puts result;
end
