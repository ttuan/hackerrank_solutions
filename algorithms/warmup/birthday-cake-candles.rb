#!/bin/ruby

def birthdayCakeCandles(n, ar)
  ar.count(ar.max)
end

n = gets.strip.to_i
ar = gets.strip
ar = ar.split(' ').map(&:to_i)
result = birthdayCakeCandles(n, ar)
puts result;

