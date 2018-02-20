#!/bin/ruby
require 'pry'
def viralAdvertising(n)
  days = [2]
  for i in (0..n-2) do
    days.push(3 * days[i]/2)
  end
  days.sum
end

n = gets.strip.to_i
result = viralAdvertising(n)
puts result
