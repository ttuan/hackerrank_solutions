#!/bin/ruby
require "pry"

@number_words = {
  50 => "fifty",    40 => "forty",
  30 => "thirty",   20 => "twenty",   19 => "nineteen",
  18 => "eighteen", 17 => "seventeen",16 => "sixteen",
  15 => "fifteen",  14 => "fourteen", 13 => "thirteen",
  12 => "twelve",   11 => "eleven",   10 => "ten",
  9  => "nine",     8  => "eight",    7  => "seven",
  6  => "six",      5  => "five",     4  => "four",
  3  => "three",    2  => "two",      1  => "one",
}

def convert_number m
  if @number_words.has_key? m
    @number_words[m]
  else
    [@number_words[m - m % 10], @number_words[m % 10]].join(" ")
  end
end

def timeInWords(h, m)
  case
  when m == 0
    @number_words[h] + " o' clock"
  when m == 15
    "quarter past #{@number_words[h]}"
  when m == 30
    "half past #{@number_words[h]}"
  when m == 45
    "quarter to #{@number_words[h+1]}"
  when m < 30
    "#{convert_number m } #{m == 1 ? 'minute' : 'minutes'} past #{@number_words[h]}"
  when m > 30
    "#{convert_number(60-m)} minutes to #{@number_words[h+1]}"
  end
end

h = gets.strip.to_i
m = gets.strip.to_i
result = timeInWords(h, m)
puts result
