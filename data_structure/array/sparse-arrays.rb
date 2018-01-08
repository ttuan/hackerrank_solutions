#!/bin/ruby

def sparse_array n, q, arr, queries
  q.times {|i| p arr.count(queries[i])}
end

# Get input
n = gets.strip.to_i
arr = []
n.times {arr.push(gets.strip)}

q = gets.strip.to_i
queries = []
q.times {queries.push(gets.strip)}

result = sparse_array(n, q, arr, queries)
