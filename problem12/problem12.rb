require 'prime'

result = 0

i ,j = 1, 1

while(result < 500)
  j+=1
  i+=j
  result = Prime.prime_division(i).inject(1) { |re, e| re*= e[1]+1}
end

puts i
puts result