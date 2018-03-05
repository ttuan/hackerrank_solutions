#!/bin/ruby

def sorted? a
  b = a.sort
  return a == b
end

def almostSorted a
  l = -1
  r = -1
  for i in (0...a.size)
    if a[i] > a[i+1]
      l = i
      break
    end
  end

  (a.size-1).downto(0) do |j|
    if a[j] < a[j-1]
      r = j
      break
    end
  end

  if l == -1 and r == -1
    puts "yes"
    return
  end

  a1 = a.dup
  a1[l], a1[r] = a1[r], a1[l]
  if sorted?(a1)
    puts "yes"
    puts "swap #{l+1} #{r+1}"
    return
  end

  a2 = a[0...l] + a[l..r].reverse + a[r+1..-1]
  if sorted? a2
    puts "yes"
    puts "reverse #{l+1} #{r+1}"
    return
  end

  puts "no"
end


n = gets.strip.to_i
arr = gets.strip
arr = arr.split(' ').map(&:to_i)
almostSorted(arr)
