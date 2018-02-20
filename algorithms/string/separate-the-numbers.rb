#!/bin/ruby

def separateNumbers(s)
  rs = []
  for l in (1..s.length/2) do
    index = 0
    min = s[index...index+l].to_i
    while index < s.length - l
      curr = s[index...index + l].to_i
      next_ = curr + 1
      next_in_s = s[index+l...index + l + next_.to_s.length].to_i
      if next_ == next_in_s
        index = index + l
        l += 1 if next_.to_s.length > curr.to_s.length
        rs << min if index + l >= s.length
      else
        break
      end
    end
  end
  unless rs.empty?
    puts "YES #{rs.first}"
  else
    puts "NO"
  end
end

q = gets.strip.to_i
for a0 in (0..q-1)
  s = gets.strip
  separateNumbers(s)
end
