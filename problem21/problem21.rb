require 'prime'

def get_divisor_sum(divisor)
  sum_divisors = Prime.prime_division(divisor).inject(1) do |sum_divisors, prime|
    sum_divisors * (0..prime[1]).inject(0) {|sum, expo| sum + prime[0]**expo}
  end
  block_given? ? yield(sum_divisors) : sum_divisors
end

result = (1...10000).inject(0) do |result, a|
  b = get_divisor_sum(a) {|sum_divisors| sum_divisors - a}
  if b != 0 && a == get_divisor_sum(b) {|sum_divisors| sum_divisors - b} && a!=b
    result+=b
  else
    result
  end
end

puts result