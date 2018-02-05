#!/bin/ruby

def makingAnagrams(s1, s2)
  rs = 0
  h1 = s1.split("").each_with_object(Hash.new(0)) { |c,counts| counts[c] += 1 }
  h2 = s2.split("").each_with_object(Hash.new(0)) { |c,counts| counts[c] += 1 }
  h1.each {|k, v| rs += h2.keys.include?(k) ? (v-h2[k]).abs : v}
  h2.each { |k, v| rs += v unless h1.keys.include?(k)}
  rs
end

s1 = gets.strip
s2 = gets.strip
result = makingAnagrams(s1, s2)
puts result;

