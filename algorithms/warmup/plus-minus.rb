#!/bin/ruby

def plusMinus(arr, n)
  p arr.count {|x| x > 0}.fdiv(n)
  p arr.count {|x| x < 0}.fdiv(n)
  p arr.count {|x| x == 0}.fdiv(n)
end

n = gets.strip.to_i
arr = gets.strip
arr = arr.split(' ').map(&:to_i)
plusMinus(arr, n)
