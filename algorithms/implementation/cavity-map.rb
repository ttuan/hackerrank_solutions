#!/bin/ruby
require "pry"
def cavityMap(grid)
  temp = grid
  for i in (1...grid.size-1) do
    for j in (1...grid.size-1) do
      v = grid[i][j]
      if v > grid[i-1][j] and v > grid[i+1][j] and v > grid[i][j-1] and v > grid[i][j+1]
        temp[i][j] = "X"
      end
    end
  end
  temp
end

n = gets.strip.to_i
grid = Array.new(n)
for grid_i in (0..n-1)
  grid[grid_i] = gets.strip
end
result = cavityMap(grid)
print result.join("\n")

