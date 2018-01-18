#!/bin/ruby

def diagonalDifference(a, n)
    j = n - 1
    sum = 0
    # or You can loop to n/2 and sum += a[i,j] + a[n-i-1, n -i -1] - a[i, n
    # -i-1] - a[n-i-1, i]
    for i in (0...n) do
       sum += (a[i][i] - a[i][j])
       j = j - 1
    end
    return sum.abs
end

n = gets.strip.to_i
a = Array.new(n)
for a_i in (0..n-1)
    a_t = gets.strip
    a[a_i] = a_t.split(' ').map(&:to_i)
end
result = diagonalDifference(a, n)
puts result
