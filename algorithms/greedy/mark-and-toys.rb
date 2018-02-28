#!/bin/ruby

def maximumToys(prices, k)
  prices.sort!
  sum = 0
  rs = 0
  prices.each do |e|
    sum += e
    if sum <= k
      rs += 1
    end
  end
  rs
end

n, k = gets.strip.split(' ')
n = n.to_i
k = k.to_i
prices = gets.strip
prices = prices.split(' ').map(&:to_i)
result = maximumToys(prices, k)
puts result
