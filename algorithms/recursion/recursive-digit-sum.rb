#!/bin/ruby

def digitSum(p)
  if p.length == 1
    return p.to_i
  else
    return digitSum((p.chars.sum &:to_i).to_s)
  end
end

n, k = gets.strip.split(' ')
k = k.to_i
p = n.chars.sum(&:to_i).to_s * k
result = digitSum(p)
puts result
