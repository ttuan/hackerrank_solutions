#!/bin/ruby

def toys(w)
  w.sort!
  rs = 1
  min = w[0]
  w.each do |x|
    if x > min + 4
      rs += 1
      min = x
    end
  end
  rs
end

n = gets.strip.to_i
w = gets.strip
w = w.split(' ').map(&:to_i)
result = toys(w)
puts result
