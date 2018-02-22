#!/bin/ruby

def insertionSort2(n, arr)
  for i in (1...arr.size) do
    x = arr[i]
    j = i
    while j > 0 and arr[j-1] > x
      arr[j] = arr[j-1]
      j = j - 1
    end
    arr[j] = x
    puts arr.join(" ")
  end
end

n = gets.strip.to_i
arr = gets.strip
arr = arr.split(' ').map(&:to_i)
insertionSort2(n, arr)
