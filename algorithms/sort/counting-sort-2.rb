#!/bin/ruby

def countingSort(arr)
  rs = Array.new(arr.size, 0)
  arr.each {|x| rs[x] += 1}
  rr = []
  for j in (0...100) do
    for k in (0...rs[j]) do
      rr << j
    end
  end
  rr
end

n = gets.strip.to_i
arr = gets.strip
arr = arr.split(' ').map(&:to_i)
result = countingSort(arr)
print result.join(" ")
