#!/bin/ruby

def largestDecentNumber n
  a = 0
  b = 0
  for i in (n/3).downto(0)
    if (n - 3 * i) % 5 == 0
      b = i
      a = (n - 3 * i) / 5
      break
    end
  end

  if a == 0 and b == 0
    return -1
  else
    return "5" * 3 * b + "3" * 5 * a
  end
end

t = gets.strip.to_i
for a0 in (0..t-1)
  n = gets.strip.to_i
  puts largestDecentNumber n
end
