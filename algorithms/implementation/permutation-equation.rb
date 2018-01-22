#!/bin/ruby

def permutationEquation(p, n)
  result = []
  for x in (1..n) do
    y =  p.index(p.index(x)+1) unless p.index(x).nil?
    result << (y + 1) unless y.nil?
  end
  result
end

n = gets.strip.to_i
p = gets.strip
p = p.split(' ').map(&:to_i)
result = permutationEquation(p, n)
print result.join("\n")
