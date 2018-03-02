#!/bin/ruby

# TODO refactor to pass all case
def climbingLeaderboard(scores, alice)
  scores.uniq!
  rs = []

  # Following this comment: https://www.hackerrank.com/challenges/climbing-the-leaderboard/forum/comments/275006
  # to solve time out problem in testcase 6,7,9. Move i to out of 'alice' loop.
  i = scores.length - 1

  alice.each do |a|
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

