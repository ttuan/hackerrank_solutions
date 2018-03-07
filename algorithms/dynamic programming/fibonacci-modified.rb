#!/bin/ruby

def fibonacciModified(n)
  return @t1 if n == 1
  return @t2 if n == 2
  return fibonacciModified(n-2) + fibonacciModified(n-1) ** 2
end

t1, t2, n = gets.strip.split(' ')
@t1 = t1.to_i
@t2 = t2.to_i
n = n.to_i
result = fibonacciModified(n)
puts result
