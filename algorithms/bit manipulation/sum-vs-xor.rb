#!/bin/ruby

# This solution is based in discussion of this problem.
def solve(n)
  p = n.to_s(2).count('0')
  n > 0 ? 2**p : 1
end

n = gets.strip.to_i
result = solve(n)
puts result;
