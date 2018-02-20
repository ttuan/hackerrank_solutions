#!/bin/ruby

def saveThePrisoner(n, m, s)
  k = (m % n == 0) ? (n + s - 1) : (m%n + s - 1)
  k <= n ? k : k % n
end

t = gets.strip.to_i
rs = []
for a0 in (0..t-1)
  n, m, s = gets.strip.split(' ')
  n = n.to_i
  m = m.to_i
  s = s.to_i
  result = saveThePrisoner(n, m, s)
  rs << result
end
puts rs.join "\n"
