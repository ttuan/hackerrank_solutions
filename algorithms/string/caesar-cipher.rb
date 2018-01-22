#!/bin/ruby

def caesarCipher(s, shift)
  alphabet = Array('a'..'z')
  non_caps = Hash[alphabet.zip(alphabet.rotate(shift))]
  alphabet = Array('A'..'Z')
  caps = Hash[alphabet.zip(alphabet.rotate(shift))]
  encrypter = non_caps.merge(caps)
  s.chars.map { |c| encrypter[c] || c }.join
end

n = gets.strip.to_i
s = gets.strip
k = gets.strip.to_i
result = caesarCipher(s, k)
puts result
