#!/bin/ruby

def solve(a0, a1, a2, b0, b1, b2)
    a = ((a0>b0 ? 1 : 0) + (a1>b1 ? 1 : 0) + (a2>b2 ? 1 : 0))
    b = ((b0>a0 ? 1 : 0) + (b1>a1 ? 1 : 0) + (b2>a2 ? 1 : 0))
    return a, b
end

a0, a1, a2 = gets.strip.split(' ').map(&:to_i)
b0, b1, b2 = gets.strip.split(' ').map(&:to_i)
result = solve(a0, a1, a2, b0, b1, b2)
print result.join(" ")

