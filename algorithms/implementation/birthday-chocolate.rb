#!/bin/ruby

def solve(n, s, d, m)
  rs = 0
  for i in (0..n-m) do
    rs += 1 if s[i..i+m-1].sum == d
  end
  rs
end

n = gets.strip.to_i
s = gets.strip
s = s.split(' ').map(&:to_i)
d, m = gets.strip.split(' ')
d = d.to_i
m = m.to_i
result = solve(n, s, d, m)
puts result;
