#!/bin/ruby

def lonelyinteger(a)
  a.inject :^
end

n = gets.strip.to_i
a = gets.strip
a = a.split(' ').map(&:to_i)
result = lonelyinteger(a)
puts result;
