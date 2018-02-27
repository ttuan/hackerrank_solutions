#!/bin/ruby

# TODO refactor to pass all case
def climbingLeaderboard(scores, alice)
  scores.uniq!
  rs = []
  alice.each do |a|
    i = scores.length - 1
    while (i >= 0) do
      if a >= scores[i]
        i -= 1
      else
        rs << i + 2
        break
      end
    end
    rs << 1 if i < 0
  end
  rs
end

n = gets.strip.to_i
scores = gets.strip
scores = scores.split(' ').map(&:to_i)
m = gets.strip.to_i
alice = gets.strip
alice = alice.split(' ').map(&:to_i)
result = climbingLeaderboard(scores, alice)
print result.join("\n")

