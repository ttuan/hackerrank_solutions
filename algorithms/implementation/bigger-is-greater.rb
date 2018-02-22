#!/bin/ruby

# The algorithm is here: https://www.nayuki.io/page/next-lexicographical-permutation-algorithm
def biggerIsGreater(w)
  # Find longest non-increasing suffix
  i = w.length - 1
  while (i > 0 && w[i-1] >= w[i]) do
    i -= 1
  end
  # // Now i is the head index of the suffix


  # // Are we at the last permutation already?
  return "no answer" if i <= 0

  # // Let array[i - 1] be the pivot
  # // Find rightmost element that exceeds the pivot
  j = w.length - 1
  while (w[j] <= w[i-1]) do
    j -= 1
  end

  # Swap pivot with j
  temp = w[i-1]
  w[i-1] = w[j]
  w[j] = temp

  # Reverse the suffix
  j = w.length - 1
  while (i < j) do
    temp = w[i]
    w[i] = w[j]
    w[j] = temp
    i+=1
    j-=1
  end

  w
end

t = gets.strip.to_i
for a0 in (0..t-1)
  w = gets.strip
  result = biggerIsGreater(w)
  puts result
end
