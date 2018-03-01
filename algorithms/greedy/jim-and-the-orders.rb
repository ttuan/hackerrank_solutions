#!/bin/ruby

def jimOrders(orders)
  t = orders.each_with_index.map {|x,i| [i, x.sum]}
  t.sort_by! {|k, v| [v, k]}
  t.map {|x| x[0] + 1}
end

n = gets.strip.to_i
orders = Array.new(n)
for orders_i in (0..n-1)
  orders_t = gets.strip
  orders[orders_i] = orders_t.split(' ').map(&:to_i)
end
result = jimOrders(orders)
print result.join(" ")
