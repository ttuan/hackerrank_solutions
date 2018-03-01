#!/bin/ruby

def strangeCode(t)
  # The first number in each column = 3 * 2 ** column - 2
  col = Math::log(1.0 * (t+2)/3, 2).floor
  6 * 2** col - t - 2
end

t = gets.strip.to_i
result = strangeCode(t)
puts result
