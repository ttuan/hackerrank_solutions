#!/bin/ruby

def bonAppetit(k, c, b)
  c.delete_at(k)
  c.sum/2 < b ? (b - c.sum/2) : "Bon Appetit"
end

n, k = gets.strip.split(' ').map(&:to_i)
c = gets.strip.split(' ').map(&:to_i)
b = gets.strip.to_i
puts bonAppetit(k, c, b)
