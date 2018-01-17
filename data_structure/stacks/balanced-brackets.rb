#!/bin/ruby

def isBalanced(s)
  stack = []
  bracked_map = {"}": "{", "]": "[", ")": "("}
  open = "{[("

  s.split("").each do |c|
    if open.include?(c)
      stack.push c
    else
      lastest_c = stack.pop
      if bracked_map[c.to_sym] != lastest_c
        return "NO"
      end
    end
  end
  return stack.empty? ? "YES" : "NO"
end

t = gets.strip.to_i
for a0 in (0..t-1)
  s = gets.strip
  result = isBalanced(s)
  puts result
end
