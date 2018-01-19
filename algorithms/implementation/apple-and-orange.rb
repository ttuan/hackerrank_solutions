#!/bin/ruby

require 'pry'

def appleAndOrange(s, t, a, b, apple, orange)
  return apple.select{|x| (x + a).between?(s, t)}.size, orange.select{|x| (x + b).between?(s, t)}.size
end

s, t = gets.strip.split(' ')
s = s.to_i
t = t.to_i
a, b = gets.strip.split(' ')
a = a.to_i
b = b.to_i
m, n = gets.strip.split(' ')
m = m.to_i
n = n.to_i
apple = gets.strip
apple = apple.split(' ').map(&:to_i)
orange = gets.strip
orange = orange.split(' ').map(&:to_i)
result = appleAndOrange(s, t, a, b, apple, orange)
print result.join("\n")
