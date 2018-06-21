
def counts(x, result)
  c = result.to_s.split('')
  for i in 0..x-1
    yield c[i]
  end
end


#Read text

result = 0
File.foreach('prob13.txt') do |line|
  result+=line.chomp.to_i
end

#回答1
counts(10,result) do |v|
  print v
end


#回答2

puts ''

result.to_s.split('').slice(0, 10).each {|e| print e}

