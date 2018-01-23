#!/bin/ruby

def workbook(n, k, arr)
  page = []
  arr.each {|n| page += (1..n).each_slice(k).to_a}
  page.each_with_index.count {|a, i| a.include?(i+1)}
end

n, k = gets.strip.split(' ')
n = n.to_i
k = k.to_i
arr = gets.strip
arr = arr.split(' ').map(&:to_i)
result = workbook(n, k, arr)
puts result

