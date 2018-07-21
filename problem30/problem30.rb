sum = 0

1000.upto(9999) do |var|
  num = var.to_s.split('').map(&:to_i).map {|v| v**5}.inject(:+)
  sum +=var if var == num
end

puts sum
