#!/bin/ruby

def acmTeam(topic, n, m)
  teams = 0
  max = 0
  for i in (0...n-1) do
    for j in (i+1...n) do
      c = (topic[i].to_i(2) | topic[j].to_i(2)).to_s(2)
      curr_max = c.count('1')
      if max < curr_max
        teams = 1
        max = curr_max
      elsif max == curr_max
        teams += 1
      end
    end
  end
  [max, teams]
end

n, m = gets.strip.split(' ')
n = n.to_i
m = m.to_i
topic = Array.new(n)
for topic_i in (0..n-1)
  topic[topic_i] = gets.strip
end
result = acmTeam(topic, n, m)
print result.join("\n")
