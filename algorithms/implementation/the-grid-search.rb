#!/bin/ruby

def indices_of_matches(str, target)
  sz = target.size
  (0..str.size-sz).select { |i| str[i,sz] == target }
end

def gridSearch(g, p)
  for i in (0..g.size-p.size)
    if indices_of_matches(g[i], p[0]).size > 0
      indices_of_matches(g[i], p[0]).each do |x|
        count = 1
        rs = 'YES'
        for j in (1...p.size) do
          if indices_of_matches(g[i+count], p[j]).include?(x)
            rs = 'YES'
          else
            rs = 'NO'
            break
          end
          count += 1
        end
        return "YES" if rs == 'YES'
      end
    end
  end
  return "NO"
end

t = gets.strip.to_i
for a0 in (0..t-1)
  r, c = gets.strip.split(' ')
  r = r.to_i
  c = c.to_i
  g = Array.new(r)
  for g_i in (0..r-1)
    g[g_i] = gets.strip
  end
  r, c = gets.strip.split(' ')
  r = r.to_i
  c = c.to_i
  p = Array.new(r)
  for p_i in (0..r-1)
    p[p_i] = gets.strip
  end
  result = gridSearch(g, p)
  puts result
end
