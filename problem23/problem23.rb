#重すぎるので、考える
require 'prime'

def get_divisor_sum(divisor)
  sum_divisors = Prime.prime_division(divisor).inject(1) do |sum_divisors, prime|
    sum_divisors * (0..prime[1]).inject(0) {|sum, expo| sum + prime[0]**expo}
  end
  block_given? ? yield(sum_divisors) : sum_divisors
end


#過剰数を求める
array_kajyou = Array.new
all_nums = (1..28123).to_a

1.upto(28123) do |i|
  if i < get_divisor_sum(i) { |e| e - i}
    array_kajyou.push(i)
  end
end

array_kajyou2 = Array.new(array_kajyou)

array_kajyou.each do |k|
  array_kajyou2.each do |j|
    all_nums.delete(k + j)
    puts k
  end
  array_kajyou2.shift
end

puts all_nums