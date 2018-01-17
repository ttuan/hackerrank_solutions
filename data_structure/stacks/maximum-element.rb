# Enter your code here. Read input from STDIN. Print output to STDOUT

n = gets.strip.to_i
arr = []
n.times do |n|
    action, number = gets.strip.split(' ').map(&:to_i)
    case action
    when 1
        arr.unshift number
    when 2
        arr.shift
    when 3
        p arr.max
    end
end
