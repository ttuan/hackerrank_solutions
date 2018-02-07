#!/bin/ruby

def pickingNumbers(a)
  m = a.each_with_object(Hash.new(0)) {|x, h| h[x] += 1}.sort_by{ |k,v| [-v, -k] }
  rs = m[0][1]
  return m[0][1] if m.size == 1
  for i in (0...m.size) do
    for j in (i+1...m.size) do
      if (m[i][0] - m[j][0]).abs <=1
        rs = [rs, m[i][1] + m[j][1]].max
      end
    end
  end
  rs
end

n = gets.strip.to_i
a = gets.strip
a = a.split(' ').map(&:to_i)
result = pickingNumbers(a)
puts result
