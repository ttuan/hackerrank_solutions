#!/bin/ruby

def minimumLoss(price, n)
  index_arr = {}
  price.each_with_index {|x, i| index_arr[x] = i}
  sorted = index_arr.sort
  min = sorted.last[0] - sorted.first[0]
  for i in (1...n)
    next if sorted[i][1] > sorted[i-1][1]
    min = sorted[i][0] - sorted[i-1][0] if sorted[i][0] - sorted[i-1][0] < min
  end
  min
end

n = gets.strip.to_i
price = gets.strip
price = price.split(' ').map(&:to_i)
result = minimumLoss(price, n)
puts result
