#!/bin/ruby

def breakingRecords(score)
  break_highest = 0
  break_lowest = 0
  highest = score[0]
  lowest = score[0]
  score.each do |s|
    if s > highest
      break_highest += 1
      highest = s
    end
    if s < lowest
      break_lowest += 1
      lowest = s
    end
  end
  [break_highest, break_lowest]
end

n = gets.strip.to_i
score = gets.strip
score = score.split(' ').map(&:to_i)
result = breakingRecords(score)
print result.join(" ")

