#!/bin/ruby

def libraryFine(d1, m1, y1, d2, m2, y2)
  fine =  if y1 == y2
    if m1 == m2
      if d1 > d2
        (d1 - d2) * 15
      else
        0
      end
    elsif m1 > m2
      (m1 - m2) * 500
    else
      0
    end
  elsif y1 > y2
    10000
  else
    0
  end
  return fine
end

d1, m1, y1 = gets.strip.split(' ')
d1 = d1.to_i
m1 = m1.to_i
y1 = y1.to_i
d2, m2, y2 = gets.strip.split(' ')
d2 = d2.to_i
m2 = m2.to_i
y2 = y2.to_i
result = libraryFine(d1, m1, y1, d2, m2, y2)
puts result
