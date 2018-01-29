#!/bin/ruby

def designerPdfViewer(h, word)
  hmax = 0
  word.split('').each do |c|
    curr = h[c.ord - 97]
    hmax = curr if hmax < curr
  end
  hmax * word.length
end

h = gets.strip
h = h.split(' ').map(&:to_i)
word = gets.strip
result = designerPdfViewer(h, word)
puts result

