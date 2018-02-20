#!/bin/ruby

def fairRations(b)
  return "NO" if b.sum.odd?
  rs = 0
  b.each_with_index do |x, i|
    if x.odd?
      x += 1
      b[i+1] += 1
      rs += 2
    end
  end
  rs
end

n = gets.strip.to_i
b = gets.strip
b = b.split(' ').map(&:to_i)
result = fairRations(b)
puts result
