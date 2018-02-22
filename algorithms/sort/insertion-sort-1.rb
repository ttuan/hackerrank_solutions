#!/bin/ruby

def insertionSort1(n, a)
  e = a.last
  i = n - 1
  while i > 0 and a[i - 1] > e
    a[i] = a[i-1]
    puts a.join(" ")
    i -= 1
  end
  a[i] = e
  puts a.join(" ")
end

n = gets.strip.to_i
arr = gets.strip
arr = arr.split(' ').map(&:to_i)
insertionSort1(n, arr)
