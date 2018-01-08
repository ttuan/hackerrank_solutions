#!/bin/ruby

n, m = gets.strip.split(' ').map(&:to_i)
arr = Array.new(n + 1, 0)

m.times do
  a, b, k = gets.strip.split(' ').map(&:to_i)

  # Increase value at first position
  arr[a -1] += k
  # Decrease value at first out of range postion
  arr[b] -= k
end

tmp = 0
max = 0

arr.each do |a|
  tmp += a
  max = tmp if tmp > max
end

p max
