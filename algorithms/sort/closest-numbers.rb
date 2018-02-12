#!/bin/ruby

def closestNumbers(arr)
  arr.sort!
  diff = arr[1] - arr[0]
  rs = [arr[0], arr[1]]
  for i in (1...arr.size-1) do
    if arr[i+1] - arr[i] < diff
      rs = []
      rs << arr[i] << arr[i+1]
      diff = (arr[i+1] -arr[i]).abs
    elsif arr[i+1] - arr[i] == diff
      rs << arr[i] << arr[i+1]
    end
  end
  rs
end

n = gets.strip.to_i
arr = gets.strip
arr = arr.split(' ').map(&:to_i)
result = closestNumbers(arr)
print result.join(" ")
