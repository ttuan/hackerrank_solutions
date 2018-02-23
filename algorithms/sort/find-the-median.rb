#!/bin/ruby

# This Challenge can be solved with 1 line solution (using arr.sort! and return
# middle element. The complexity is O(nlogn)
#
# This solution using QuickSelect: https://www.hackerrank.com/external_redirect?to=https://en.wikipedia.org/wiki/Quickselect
# can reduce the complexity to O(n)

def partition(list, left, right, pivotIndex)
  pivotValue = list[pivotIndex]
  list[pivotIndex], list[right] = list[right], list[pivotIndex]
  storeIndex = left
  for i in (left...right) do
    if list[i] < pivotValue
      list[storeIndex], list[i] = list[i], list[storeIndex]
      storeIndex += 1
    end
  end
  list[right], list[storeIndex] = list[storeIndex], list[right]
  storeIndex
end

def select list, left, right, k
  if left == right
    return list[left]
  end
  pivotIndex = list.size / 2
  pivotIndex = partition list, left, right, pivotIndex
  if k == pivotIndex
    return list[k]
  elsif k < pivotIndex
    return select(list, left, pivotIndex -1, k)
  else
    return select(list, pivotIndex + 1, right, k)
  end
end

def findMedian(arr, n)
  select arr, 0, n-1, n/2
end

n = gets.strip.to_i
arr = gets.strip
arr = arr.split(' ').map(&:to_i)
result = findMedian(arr, n)
puts result
