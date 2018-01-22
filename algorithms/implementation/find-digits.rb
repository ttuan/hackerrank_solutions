#!/bin/ruby

def findDigits(n)
  n.to_s.split('').map(&:to_i).count {|x| x != 0 and n % x == 0}
end

t = gets.strip.to_i
for a0 in (0..t-1)
    n = gets.strip.to_i
    result = findDigits(n)
    puts result
end
