#!/bin/ruby

def marcsCakewalk(calorie)
  calorie.sort_by! {|x| x*-1}
  rs = 0
  calorie.each_with_index do |x, i|
    rs += x * 2**i
  end
  rs
end

n = gets.strip.to_i
calorie = gets.strip
calorie = calorie.split(' ').map(&:to_i)
result = marcsCakewalk(calorie)
puts result
