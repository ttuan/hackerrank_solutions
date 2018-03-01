#!/bin/ruby
require "pry"
def angryChildren(k, arr)
  arr.sort!
  rs = arr[k-1]- arr[0]
  for i in (1..arr.size - k) do
    rs = arr[i+k-1] - arr[i] if arr[i+k-1] - arr[i] < rs
  end
  rs
end

n = gets.strip.to_i
k = gets.strip.to_i
arr = Array.new(n)
for arr_i in (0..n-1)
    arr[arr_i] = gets.strip.to_i
end
result = angryChildren(k, arr)
puts result
