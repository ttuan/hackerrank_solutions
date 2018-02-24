#!/bin/ruby

def howManyGames(p, d, m, s)
  rs = 0
  sum = 0
  current_price = p
  loop do
    sum = sum + current_price
    break if sum > s
    rs += 1
    current_price = current_price - d > m ? current_price - d : m
  end
  rs
end

p, d, m, s = gets.strip.split(' ')
p = p.to_i
d = d.to_i
m = m.to_i
s = s.to_i
answer = howManyGames(p, d, m, s)
puts answer
