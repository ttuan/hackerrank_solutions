#!/bin/ruby

def gridChallenge(grid,n)
  rs = true
  for c in (0...n) do
    for r in (0...n-1) do
      if grid[r][c] > grid[r+1][c]
        rs = false
        break
      end
    end
  end
  rs ? "YES" : "NO"
end

t = gets.strip.to_i
for m in (0...t) do
  n = gets.strip.to_i
  grid = Array.new(n)
  for grid_i in (0..n-1)
    grid[grid_i] = gets.strip.chars.sort.join
  end
  result = gridChallenge(grid,n)
  puts result
end
