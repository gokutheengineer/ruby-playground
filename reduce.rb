
puts [1, 2, 3, 4, 5, 6].reduce(0) { |sum, n| sum + n }

puts [1, 2, 3, 4, 5, 6].reduce(1) { |product, n| product * n }

puts [1, 2, 3, 4, 5, 6].reduce(:+)