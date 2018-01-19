#!/bin/ruby

def solve(grades)
  grades.each_with_index do |grade, index|
    a = grade % 5
    if grade > 37
      grades[index] = grade + (5 - a) if a > 2
    end
  end
  return grades
end

n = gets.strip.to_i
grades = Array.new(n)
for grades_i in (0..n-1)
    grades[grades_i] = gets.strip.to_i
end
result = solve(grades)
print result.join("\n")
