#!/bin/ruby
require 'pry'
def encryption(s)
	l = s.length
	rows, cols = Math.sqrt(l).floor, Math.sqrt(l).ceil
  rows = rows + 1 if rows * cols < l
	arr = s.scan(/.{1,#{cols}}/)
	for i in (0..cols-1) do
		for j in (0..rows-1) do
			print arr[j][i].to_s
		end
		print " " unless i == cols-1
	end
end

s = gets.strip
result = encryption(s)
# puts result

