#!/bin/ruby

# O(N)
def leftRotation(a, d)
  a.rotate(d)
  # or a[d..a.size-1] + a[0..d-1]
end

n, d = gets.strip.split(' ')
n = n.to_i
d = d.to_i
a = gets.strip
a = a.split(' ').map(&:to_i)
result = leftRotation(a, d)
print result.join(" ")
