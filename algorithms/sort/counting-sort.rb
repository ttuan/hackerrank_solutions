#!/bin/ruby

def countingSort(arr)
  rs = Array.new(arr.size, 0)
  arr.each {|x| rs[x] += 1}
  rs[0...100]
end

n = gets.strip.to_i
arr = gets.strip
arr = arr.split(' ').map(&:to_i)
result = countingSort(arr)
print result.join(" ")
