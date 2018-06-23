def collatz(n, count=0)
  count+=1
  return count if n == 1
  n % 2 == 0 ? collatz(n/2, count) : collatz(3 * n + 1, count)
end


n_max = Array.new(2).fill(1)

puts collatz(13)

(1..1000000).each do |n|
  max = collatz(n)
  n_max = [n, max] if n_max[1] < max
end

puts "n: #{n_max[0]} max: #{n_max[1]}"
