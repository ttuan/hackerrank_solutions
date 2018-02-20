#!/bin/ruby

def beautifulDays(i, j, k)
  rs = 0
  for d in (i..j) do
    rs += 1 if (d - d.to_s.reverse.to_i) % k == 0
  end
  rs
end

i, j, k = gets.strip.split(' ')
i = i.to_i
j = j.to_i
k = k.to_i
result = beautifulDays(i, j, k)
puts result
