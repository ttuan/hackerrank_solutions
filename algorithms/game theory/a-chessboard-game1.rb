#!/bin/ruby

def chessboardGame(x, y)
  x = x%4;
  y = y%4;
  [0,3].include?(x) || [0,3].include?(y) ? "First" : "Second"
end

t = gets.strip.to_i
for a0 in (0..t-1)
  x, y = gets.strip.split(' ')
  x = x.to_i
  y = y.to_i
  result = chessboardGame(x, y)
  puts result
end
