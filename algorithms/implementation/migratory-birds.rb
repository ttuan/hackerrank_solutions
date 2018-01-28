#!/bin/ruby

def migratoryBirds(n, ar)
  h = ar.each_with_object(Hash.new(0)) { |word,counts| counts[word] += 1 }
  a = h.sort_by {|k, v| [v, -k]}
  a.last[0]
end

n = gets.strip.to_i
ar = gets.strip
ar = ar.split(' ').map(&:to_i)
result = migratoryBirds(n, ar)
puts result;

