#!/bin/ruby

def maximumPerimeterTriangle(l)
  l.sort!
  i = l.length - 3
  while i >= 0 and l[i] + l[i+1] <= l[i+2]
    i -= 1
  end
  i >= 0 ? l[i..i+2] : [-1]
end

n = gets.strip.to_i
l = gets.strip
l = l.split(' ').map(&:to_i)
result = maximumPerimeterTriangle(l)
print result.join(" ")
