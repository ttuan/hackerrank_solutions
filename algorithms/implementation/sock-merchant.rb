#!/bin/ruby

def sockMerchant(n, ar)
  rs = 0
  ar.uniq.each do |x|
    rs += ar.count(x) / 2
  end
  rs
end

n = gets.strip.to_i
ar = gets.strip
ar = ar.split(' ').map(&:to_i)
result = sockMerchant(n, ar)
puts result;
