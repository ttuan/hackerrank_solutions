#!/bin/ruby

def stones(n, a, b)
  i = n - 1
  j = 0
  rs = []
  while i > -1 and j < n
    rs << i * a + j * b
    i -= 1
    j += 1
  end
  rs.uniq.sort
end

t = gets.strip.to_i
for a0 in (0..t-1)
  n = gets.strip.to_i
  a = gets.strip.to_i
  b = gets.strip.to_i
  result = stones(n, a, b)
  puts result.join(" ")
end
