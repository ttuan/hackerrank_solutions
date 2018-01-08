#!/bin/ruby

base_arr = []
lastAnswer = 0

n, q = gets.strip.split.map(&:to_i)
n.times {base_arr << []}

q.times do
  t, x, y = gets.strip.split.map(&:to_i)
  seq = (x ^ lastAnswer) % n
  if t == 1
    base_arr[seq] << y
  else
    index = y % base_arr[seq].size
    lastAnswer = base_arr[seq][index]
    p lastAnswer
  end
end
