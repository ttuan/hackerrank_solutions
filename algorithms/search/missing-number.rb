#!/bin/ruby

def missingNumbers(arr, brr)
  a = arr.each_with_object(Hash.new(0)) {|x, h| h[x] += 1}
  b = brr.each_with_object(Hash.new(0)) {|x, h| h[x] += 1}
  rs = []
  b.each do |k, v|
    rs << k if a[k].nil? || b[k] > a[k]
  end
  rs.sort
end

n = gets.strip.to_i
arr = gets.strip
arr = arr.split(' ').map(&:to_i)
m = gets.strip.to_i
brr = gets.strip
brr = brr.split(' ').map(&:to_i)
result = missingNumbers(arr, brr)
print result.join(" ")
