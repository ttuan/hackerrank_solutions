#!/bin/ruby

def absolutePermutation n, k
  return [*1..n] if k == 0

  rs = []
  for i in 0...n
    if (i/k).even?
      t = i + k + 1
      return [-1] if t > n
      rs[i] = t
    else
      t = i - k + 1
      return [-1] if t <= 0
      rs[i] = t
    end
  end
  rs
end

t = gets.strip.to_i
for a0 in (0..t-1)
  n,k = gets.strip.split(' ')
  n = n.to_i
  k = k.to_i
  rs = absolutePermutation n, k
  if rs.uniq.size < n
    puts -1
  else
    puts rs.join(" ")
  end
end
