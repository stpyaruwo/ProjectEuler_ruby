divid = 20

is_divided = true
result = 0

while(is_divided)
  result = result + divid
  divid.downto(1) do |x|
    if x == 1
      is_divided = false
    end
    break if result%x != 0
  end
end

puts result
#もっと別のやり方があるはず...