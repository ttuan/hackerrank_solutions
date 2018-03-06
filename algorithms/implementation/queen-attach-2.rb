#!/bin/ruby

def check point
  # row
  if @x == point[0]
    if point[1] < @y
      @l = [point[0], point[1]+1] if point[1] > @l[1]
    elsif point[1] > @y
      @r = [point[0], point[1]-1] if point[1] < @r[1]
    end
  end

  # column
  if @y == point[1]
    if point[0] < @x
      @d = [point[0] + 1, point[1]] if point[0] > @d[0]
    elsif point[0] > @x
      @t = [point[0] - 1, point[1]] if point[0] < @t[0]
    end
  end

  # top left
  if point[0] - @x == @y - point[1] and point[0] - @x > 0
    @tl = [point[0]-1, point[1]+1] if point[1] > @tl[1]
  end

  # top right
  if point[0] - @x == point[1] - @y and point[0] - @x > 0
    @tr = [point[0]-1, point[1]-1] if point[1] < @tr[1]
  end

  # down left
  if @x - point[0] == @y - point[1] and @x - point[0] > 0
    @dl = [point[0]+1, point[1]+1] if point[0] > @dl[0]
  end

  # down right
  if @x - point[0] == point[1] - @y and @x - point[0] > 0
    @dr = [point[0]+1, point[1]-1] if point[1] < @dr[1]
  end
end


def queensAttack(n, k, x, y, obs)
  # Set edge point
  @l = [x, 1]
  @r = [x, n]
  @t = [n, y]
  @d = [1, y]
  t = x+y-1 > n ? n : x+y-1
  @tl = [t, y - (t - x)]
  @dr = [x-(t-y), t]
  t = x-y+1 < 1 ? 1 : x-y+1
  @dl = [t, y - (x - t)]
  t = x+n-y > n ? n : x+n-y
  @tr = [t, y + t - x]

  obs.each {|obs| check obs}

  (y - @l[1]) + (@r[1] - y) + (x - @d[0]) + (@t[0] - x) + (@tl[0] - x) + (x - @dl[0]) + (@tr[1] - y) + (x - @dr[0])
end

n, k = gets.strip.split(' ')
n = n.to_i
k = k.to_i
@x, @y = gets.strip.split(' ')
@x = @x.to_i
@y = @y.to_i
obstacles = Array.new(k)
for obstacles_i in (0..k-1)
  obstacles_t = gets.strip
  obstacles[obstacles_i] = obstacles_t.split(' ').map(&:to_i)
end
result = queensAttack(n, k, @x, @y, obstacles)
puts result
