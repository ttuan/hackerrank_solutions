#!/bin/ruby

def super_reduced_string(s)
  i = 1
  loop do
    break if i == s.length || s == ""
    if s[i] == s[i-1]
      s[i-1..i] = ""
      i = 1
    else
      i += 1
    end
  end
  s.empty? ? "Empty String" : s
end

s = gets.strip
result = super_reduced_string(s)
puts result;
