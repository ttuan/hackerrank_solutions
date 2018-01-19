#!/bin/ruby

n = gets.strip.to_i
queue = []
for i in (0...n) do
  action, number = gets.strip.split(' ').map(&:to_i)
  case action
  when 1
    queue.push number
  when 2
    queue.shift
  when 3
    p queue.first
  end
end

