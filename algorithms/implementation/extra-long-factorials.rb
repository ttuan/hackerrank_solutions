#!/bin/ruby

def extraLongFactorials(n)
    p (1..n).inject(:*) || 1
end

n = gets.strip.to_i
extraLongFactorials(n)

