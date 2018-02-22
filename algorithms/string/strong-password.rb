#!/bin/ruby

def minimumNumber(n, password)
  need_add = [ "0123456789",  "abcdefghijklmnopqrstuvwxyz",  "ABCDEFGHIJKLMNOPQRSTUVWXYZ",  "!@#$%^&*()-+"]
  rs = 0
  need_add.each do |x|
    rs += 1 if password.split('') & x.split('') == []
  end
  rs > (6 - n) ? rs : (6 - n)
end

n = gets.strip.to_i
password = gets.strip
answer = minimumNumber(n, password)
puts answer
