#!/bin/ruby

def equalizeArray(arr)
  h = {}
  max = 1
  arr.each do |x|
    if h[x]
      h[x] += 1
      max = h[x] if max < h[x]
    else
      h[x] = 1
    end
  end
  arr.size - max
end

n = gets.strip.to_i
arr = gets.strip
arr = arr.split(' ').map(&:to_i)
result = equalizeArray(arr)
puts result
