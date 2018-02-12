#!/bin/ruby

# TODO Need to refactor to pass all testcase

Q = gets.strip.to_i
FIXNUM_MAX = (2**(0.size * 8 -2) -1)
MIN_MOVES = Array.new(10000001, 0)

def minMove(n)
  return n if n <= 2
  return MIN_MOVES[n] if MIN_MOVES[n] > 0
  min = FIXNUM_MAX
  for i in (2..Math.sqrt(n)) do
    if n % i == 0
      factor = n/i
      min = [min, 1 + minMove(factor)].min
    end
  end
  min = [min, 1 + minMove(n-1)].min;
  MIN_MOVES[n] = min
  return min
end


for a0 in (0..Q-1)
    N = gets.strip.to_i
    puts minMove(N)
end
