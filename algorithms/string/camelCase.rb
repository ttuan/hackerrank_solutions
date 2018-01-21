#!/bin/ruby

def camelcase(s)
  s.split("").count(|x| x.ord >= 65 and x.ord <= 90 } + 1)
end
s = gets.strip
result = camelcaase(s)
puts result
