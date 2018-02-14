#!/bin/ruby

def anagram(s)
  return -1 if s.length.odd?
  s1_length = s.length/2
  s1_counting_arr = Array.new(26, 0)
  s2_counting_arr = Array.new(26, 0)
  for i in (0...s1_length) do
    s1_counting_arr[s[i].ord - 97] += 1
    s2_counting_arr[s[i+s1_length].ord - 97] += 1
  end
  diff = 0
  for i in (0...26) do
    diff += (s2_counting_arr[i] - s1_counting_arr[i]) if s2_counting_arr[i] > s1_counting_arr[i]
  end
  diff
end

q = gets.strip.to_i
for a0 in (0..q-1)
  s = gets.strip
  result = anagram(s)
  puts result;
end

