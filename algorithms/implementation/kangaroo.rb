#!/bin/ruby

def kangaroo(x1, v1, x2, v2)
	t = (x2 - x1) * 1.0 / (v1 - v2)
	(t % 1 == 0 and t > 0) ? "YES" : "NO"
end

x1, v1, x2, v2 = gets.strip.split(' ')
x1 = x1.to_i
v1 = v1.to_i
x2 = x2.to_i
v2 = v2.to_i
result = kangaroo(x1, v1, x2, v2)
puts result;

