require 'prime'

prime_numbers = Prime.each(1000).to_a

max_recurring_decimal = 0

#1000以下の循環少数が最も長いのを算出
prime_numbers.each do |prime|
  max_recurring_decimal = prime if prime - 1 != 1 && max_recurring_decimal < Prime.prime_division(prime - 1).last.first
end

puts max_recurring_decimal