#!/bin/ruby

def luckBalance(n, k, contests)
  total_luck = contests.map {|x| x[0]}.sum
  win_contest = contests.select {|x| x[1] == 1}.sort
  s = win_contest.size - k > 0 ? win_contest.size - k : 0
  must_win_contest_score = win_contest.first(s).map {|x| x[0]}.sum
  total_luck - 2 * must_win_contest_score
end

n, k = gets.strip.split(' ')
n = n.to_i
k = k.to_i
contests = Array.new(n)
for contests_i in (0..n-1)
  contests_t = gets.strip
  contests[contests_i] = contests_t.split(' ').map(&:to_i)
end
result = luckBalance(n, k, contests)
puts result
