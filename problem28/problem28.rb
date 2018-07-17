

def sum_diagonally(area,len,i=4)
  if i == 1
    return area
  else
    area + sum_diagonally(area - (len- 1),len, i-1)
  end
end

sum = 1
i = 3

while(i <= 1001)
  sum+=sum_diagonally(i**2, i)
  i+=2
end

puts sum

