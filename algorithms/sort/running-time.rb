#!/bin/ruby

def runningTime(arr)
  rs = 0
  for i in (1...arr.size) do
    x = arr[i]
    j = i
    while j > 0 and arr[j-1] > x
      arr[j] = arr[j-1]
      rs += 1
      j = j - 1
    end
    arr[j] = x
  end
  rs
end

n = gets.strip.to_i
arr = gets.strip
arr = arr.split(' ').map(&:to_i)
result = runningTime(arr)
puts result
