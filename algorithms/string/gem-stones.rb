#!/bin/ruby

def gemstones(arr)
  arr.map {|x| x.split("")}.inject(:&).size
end

n = gets.strip.to_i
arr = Array.new(n)
for arr_i in (0..n-1)
    arr[arr_i] = gets.strip
end
result = gemstones(arr)
puts result;

