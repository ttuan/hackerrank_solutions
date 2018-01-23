#!/bin/ruby

def beautifulTriplets(d, arr)
  result = 0
  hash = {}
  arr.each do |a|
    hash[a] = a
    if hash[a -d] and hash[a-2*d]
      result += 1
    end
  end
  result
end

n, d = gets.strip.split(' ')
n = n.to_i
d = d.to_i
arr = gets.strip
arr = arr.split(' ').map(&:to_i)
result = beautifulTriplets(d, arr)
puts result
