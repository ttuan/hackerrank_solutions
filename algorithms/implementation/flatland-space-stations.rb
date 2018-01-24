#!/bin/ruby

# def flatlandSpaceStations(n, c)
#   return 0 if n == c
#   c.push(10000001).sort!
#   d = []
#   j = 0

#   for i in (0...n) do
#     if i < c[j]
#       d[i] = c[j] - i
#       next
#     end
#     until i.between?(c[j], c[j+1])
#       j += 1
#     end
#     d[i] = [(i - c[j]), (c[j+1] - i)].min
#   end
#   p d
#   d.max
# end

def flatlandSpaceStations(n, c)
  c.sort!
  dmax = c[0]
  for i in (1..c.length-1) do
    d = (c[i] - c[i-1]) / 2
    dmax = d if dmax < d
  end
  (n - 1) - c.last > dmax ? (n-1-c.last) : dmax
end

n, m = gets.strip.split(' ')
n = n.to_i
m = m.to_i
c = gets.strip
c = c.split(' ').map(&:to_i)
result = flatlandSpaceStations(n, c)
puts result

