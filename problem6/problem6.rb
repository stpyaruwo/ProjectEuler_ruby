num = 100

#2乗の和
square_sum = (1..num).inject(0) do |sum, n|
  sum = sum + n**2
end

sum_square = (1..num).inject(:+)**2

puts sum_square - square_sum