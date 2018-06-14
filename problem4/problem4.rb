result = 0


1.upto(999) do |i|
  1.upto(999) do |j|
    kaibun = i * j
    if kaibun.to_s == kaibun.to_s.reverse
      result = kaibun if result < kaibun
    end
  end
end

puts result
