#!/bin/ruby

def aVeryBigSum(n, ar)
  max_length = ar.max_by(&:length).length
  ar.map! {|a| a.reverse}

  sum = ""
  remember = 0
  for i in (0...max_length) do
    temp = ar.inject(0){|s, element| s + element[i].to_i} + remember
    remember = temp / 10
    sum += (temp % 10).to_s
  end
  sum += remember.to_s if remember != 0
  sum.reverse
end

n = gets.strip.to_i
ar = gets.strip
ar = ar.split(' ')
result = aVeryBigSum(n, ar)
puts result;
