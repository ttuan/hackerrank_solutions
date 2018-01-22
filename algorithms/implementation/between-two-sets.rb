#!/bin/ruby

def getTotalX(a, b)
  result = 0
  for i in (a.min..b.min) do
    if a.count {|x| i % x == 0} == a.size and b.count {|y| y % i == 0} == b.size
      result += 1
    end
  end
  result
end

n, m = gets.strip.split(' ')
n = n.to_i
m = m.to_i
a = gets.strip
a = a.split(' ').map(&:to_i)
b = gets.strip
b = b.split(' ').map(&:to_i)
total = getTotalX(a, b)
puts total

