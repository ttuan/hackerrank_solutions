#!/bin/ruby

def introTutorial(v, arr)
  arr.find_index(v)
end

v = gets.strip.to_i
n = gets.strip.to_i
arr = gets.strip
arr = arr.split(' ').map(&:to_i)
result = introTutorial(v, arr)
puts result
