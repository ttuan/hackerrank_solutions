s = gets.strip.gsub(" ", "")
puts s.downcase.split('').uniq.size == 26 ? "pangrams" : "not pangrams"

