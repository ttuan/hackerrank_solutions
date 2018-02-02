#!/bin/ruby

def alternatingCharacters(s)
  arr = s.split('')
  temp = []
  for i in (0..arr.length-1)
    temp << arr[i] if arr[i] != temp.last
  end
  arr.length - temp.length
end

q = gets.strip.to_i
for a0 in (0..q-1)
  s = gets.strip
  result = alternatingCharacters(s)
  puts result;
end
