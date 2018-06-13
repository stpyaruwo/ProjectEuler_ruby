
factors = 600851475143
factors2 = factors / 2
max_divid = 1

#時間がかかり過ぎるので、要検討
factors2.downto(0) do |i|
  if factors %i == 0
    max_divid = i
    break
  end
end

puts max_divid
