#!/bin/ruby

def cutTheSticks(arr)
	result = []
	while not arr.empty? do
		min = arr.min
		arr.map! {|x| x - min}
		result << arr.size
		arr.delete_if {|x| x == 0}
	end
	result
end

n = gets.strip.to_i
arr = gets.strip
arr = arr.split(' ').map(&:to_i)
result = cutTheSticks(arr)
print result.join("\n")
