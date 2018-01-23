#!/bin/ruby

def kaprekarNumbers(p, q)
  rs = []
  (p..q).each do |n|
    d = n.to_s.length
    s = (n*n).to_s
    r = s[s.length-d..-1].to_i
    l = s[0...s.length-d].to_i
    rs << n if (l + r == n)
  end
  rs
end

p = gets.strip.to_i
q = gets.strip.to_i
rs = kaprekarNumbers(p, q)
print rs.empty? ? "INVALID RANGE" : rs.join(" ")
