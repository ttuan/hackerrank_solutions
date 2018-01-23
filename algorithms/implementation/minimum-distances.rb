#!/bin/ruby

def minimumDistances(a)
  h = {}
  min = 10001
  a.each_with_index do |e, i|
    if h[e]
      min = [min, (h[e]-i).abs].min
    else
      h[e] = i
    end
  end
  min == 10001 ? -1 : min
end

n = gets.strip.to_i
a = gets.strip
a = a.split(' ').map(&:to_i)
result = minimumDistances(a)
puts result

