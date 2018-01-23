#!/bin/ruby

def hackerrankInString(s)
	s.match(/.*h.*a.*c.*k.*e.*r.*r.*a.*n.*k/) ? "YES" : "NO"
end

q = gets.strip.to_i
for a0 in (0..q-1)
	s = gets.strip
	result = hackerrankInString(s)
	puts result
end
