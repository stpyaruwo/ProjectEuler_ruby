term_set = Array.new

2.upto(100) do |a|
  2.upto(100) do |b|
    term_set.push(a ** b)
  end
end

puts term_set.uniq.length