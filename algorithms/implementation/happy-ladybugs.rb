#!/bin/ruby

def happyLadyBugs n, b
  unless b.include?("_")
    for i in (1...n-1) do
      return "NO" if b[i] != b[i-1] && b[i] != b[i+1]
    end
  end

  a = Array.new(26, 0)
  b.gsub!("_", "")
  b.split('').each {|c| a[c.ord - 65] += 1}
  a.include?(1) ? "NO" : "YES"
end

q = gets.strip.to_i
for a0 in (0..q-1)
  n = gets.strip.to_i
  b = gets.strip
  puts happyLadyBugs(n, b)
end
