#!/bin/ruby

def jumpingOnClouds(c, k, n)
  curr_e = 100
  i = 0
  while true do
    i = (i + k) %  n
    thunder = c[i] == 1 ? 2 : 0
    curr_e = curr_e - thunder - 1
    break if i == 0
  end
  curr_e
end

n, k = gets.strip.split(' ')
n = n.to_i
k = k.to_i
c = gets.strip
c = c.split(' ').map(&:to_i)
result = jumpingOnClouds(c, k, n)
puts result
