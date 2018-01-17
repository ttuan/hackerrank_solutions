#!/bin/ruby

n1,n2,n3 = gets.strip.split(' ')
n1 = n1.to_i
n2 = n2.to_i
n3 = n3.to_i
h1 = gets.strip
h1 = h1.split(' ').map(&:to_i).reverse
h2 = gets.strip
h2 = h2.split(' ').map(&:to_i).reverse
h3 = gets.strip
h3 = h3.split(' ').map(&:to_i).reverse

# def renew_array_with_sum(arr, size)
#   new_arr = []
#   size.times do |i|
#     new_arr[i] = arr[i..-1].reduce(:+)
#   end
#   return new_arr
# end

# h1n = renew_array_with_sum(h1,n1)
# h2n = renew_array_with_sum(h2,n2)
# h3n = renew_array_with_sum(h3,n3)

# p (h1n & h2n & h3n).first || 0

s1 = h1.reduce(:+)
s2 = h2.reduce(:+)
s3 = h3.reduce(:+)

while not (s1 == s2 and s2 == s3)
  if s1 > s2 or s1 > s3
    s1 -= h1.pop
  end

  if s2 > s1 or s2 > s3
    s2 -= h2.pop
  end

  if s3 > s1 or s3 > s2
    s3 -= h3.pop
  end

  if (s1 < 0 or s2 < 0 or s3 < 0)
    p  0
    return
  end
end

p s1



