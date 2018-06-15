result = 2

n1 = 1
n2 = 2

loop {
  n3 = n1 + n2
  break if n3 >= 4000000
  result += n3 if n3 %2 == 0
  n1 = n2
  n2 = n3
 }

puts result

array = "Hello world".split(" ")

p array

array.each do |m|
  puts m
end


