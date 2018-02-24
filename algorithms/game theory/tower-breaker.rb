#!/bin/ruby

def towerBreakers(n, m)
  return 2 if m == 1
  n % 2 == 1 ? 1 : 2
end

t = gets.strip.to_i
for a0 in (0..t-1)
    n, m = gets.strip.split(' ')
    n = n.to_i
    m = m.to_i
    result = towerBreakers(n, m)
    puts result
end
