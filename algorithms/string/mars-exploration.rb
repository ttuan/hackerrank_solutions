#!/bin/ruby

def marsExploration(s)
  count = 0
  sos = "SOS"
  s.split('').each_with_index.count {|c, i| c != sos[i % 3]}
end

s = gets.strip
result = marsExploration(s)
puts result
