
def formula?(a, b, c)
  return (a**2 + b**2) == c**2
end

result = ""

1.upto(332) do |a|
  (1+a).upto(499) do |b|
    c = 1000 - (a + b)
    break if c < b
    if formula?(a, b, c)
      result = "a:#{a} b:#{b} c:#{c}"
    end
  end
end

puts result