#!/bin/ruby

def isValid(s)
  a = Array.new(26, 0)
  s.split('').each do |c|
    a[c.ord - 97] += 1
  end
  a.delete_if {|x| x==0}
  min = a.min
  max = a.max
  if min == max or (max - min == 1 and a.count(max) == 1) or (min == 1 and a.count(min) == 1)
    return "YES"
  else
    return "NO"
  end
end

s = gets.strip
result = isValid(s)
puts result;
