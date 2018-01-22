#!/bin/ruby

def valid? str
  for i in (1..str.length-1) do
    return false if str[i] == str[i-1]
  end
  return true
end

def twoCharaters(s)
  chars = s.split("").uniq
  max_len = 0
  need_deleted_chars = chars.combination(chars.length - 2).to_a.map {|x| x.join("")}

  need_deleted_chars.each do |ndc|
    temp = s.tr("#{ndc}", "")
    max_len = [max_len, temp.length].max if valid?(temp)
  end
  max_len
end

l = gets.strip.to_i
s = gets.strip
result = twoCharaters(s)
puts result

