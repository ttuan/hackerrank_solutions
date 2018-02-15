#!/bin/ruby

def angryProfessor(k, a)
  c = a.count {|x| x <= 0}
  puts c < k ? "YES" : "NO"
end

t = gets.strip.to_i
for a0 in (0..t-1)
  n, k = gets.strip.split(' ')
  n = n.to_i
  k = k.to_i
  a = gets.strip
  a = a.split(' ').map(&:to_i)
  result = angryProfessor(k, a)
  puts result
end
