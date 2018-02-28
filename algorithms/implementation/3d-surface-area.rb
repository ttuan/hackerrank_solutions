#!/bin/ruby
# require "pry"
def surfaceArea(a, w, h)
  rs = 2 * w * h
  rs += a.first.sum + a.last.sum
  a.each {|x| rs += (x.first + x.last)}

  for i in (0...h) do
    for j in (0...w-1) do
      rs += (a[i][j] - a[i][j+1]).abs
    end
  end

  for i in (0...w) do
    for j in (0...h-1) do
      rs += (a[j][i] - a[j+1][i]).abs
    end
  end
  rs
end

h, w = gets.strip.split(' ')
h = h.to_i
w = w.to_i
a = Array.new(h)
for a_i in (0..h-1)
  a_t = gets.strip
  a[a_i] = a_t.split(' ').map(&:to_i)
end
result = surfaceArea(a, w, h)
puts result
