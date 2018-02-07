#!/bin/ruby

# https://www.geeksforgeeks.org/check-instance-15-puzzle-solvable/
def larrysArray(a)
  n = Math.sqrt(a.size).floor + 1
  invest = 0
  for i in (0...a.size) do
    for j in (i+1...a.size) do
      invest += 1 if a[i] > a[j]
    end
  end
  x_row = n - 1

  if n.odd?
     return invest.even? ? "YES" : "NO"
   elsif n.even?
     return (x_row.even? && invest.odd?) || (x_row.odd? && invest.even?) ? "YES" : "NO"
   end
end

t = gets.strip.to_i
for a0 in (0..t-1)
  n = gets.strip.to_i
  a = gets.strip
  a = a.split(' ').map(&:to_i)
  result = larrysArray(a)
  puts result
end
