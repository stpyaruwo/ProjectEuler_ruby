result = 0

(1..999).each do |v|
   if (v%3 == 0) || (v%5 == 0)
     sum = sum + v
   end
end

puts result
