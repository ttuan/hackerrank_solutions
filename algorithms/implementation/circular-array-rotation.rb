#!/bin/ruby

def circularArrayRotation(a,k, m)
  a.rotate!(k * (-1))
  result = m.map {|x| a[x]}
end

n, k, q = gets.strip.split(' ').map(&:to_i)
a = gets.strip
a = a.split(' ').map(&:to_i)
m = Array.new(q)
for m_i in (0..q-1)
    m[m_i] = gets.strip.to_i
end
result = circularArrayRotation(a, k, m)
print result.join("\n")
