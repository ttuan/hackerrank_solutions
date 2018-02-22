#!/bin/ruby

def palindromeIndex(s)
  first = 0
  last = s.length - 1
  while first < last do
    if s[first] != s[last]
      if s[first+1] == s[last] && s[first+2] == s[last-1]
        return first
      else
        return last
      end
    end
    first += 1
    last -= 1
  end
  return -1
end

q = gets.strip.to_i
for a0 in (0..q-1)
  s = gets.strip
  result = palindromeIndex(s)
  puts result;
end
