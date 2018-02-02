#!/bin/ruby

def beautifulBinaryString(b)
  b.length - b.gsub("010", "01").length
end

n = gets.strip.to_i
b = gets.strip
result = beautifulBinaryString(b)
puts result

