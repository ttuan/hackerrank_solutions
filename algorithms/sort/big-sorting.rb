#!/bin/ruby

def bigSorting(arr)
  arr.map! {|x| x.to_i}
  arr.sort
end

n = gets.strip.to_i
arr = Array.new(n)
for arr_i in (0..n-1)
  arr[arr_i] = gets.strip
end
result = bigSorting(arr)
print result.join("\n")

