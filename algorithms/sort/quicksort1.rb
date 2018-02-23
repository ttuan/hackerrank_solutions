#!/bin/ruby

def quickSort(a)
  p = a[0]
  left = []
  right = []
  equal = [p]

  for i in (1...a.size) do
    case
    when a[i] >= p
      right << a[i]
    when a[i] < p
      left << a[i]
    end
  end
  rs = left + equal + right
end

n = gets.strip.to_i
arr = gets.strip
arr = arr.split(' ').map(&:to_i)
result = quickSort(arr)
print result.join(" ")
