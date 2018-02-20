#!/bin/ruby

def solve(n, p)
  page = p.odd? ? ((p-1)/2 + 1) : (p/2 + 1)
  total_page = n.odd? ? ((n-1)/2 + 1) : (n/2 + 1)
  [page - 1, total_page - page].min
end

n = gets.strip.to_i
p = gets.strip.to_i
result = solve(n, p)
puts result;
