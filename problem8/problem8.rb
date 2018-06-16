
#テキストを読みこみ、配列に挿入する
numbers = Array.new
numbers = File.read('pr1.text').gsub(/\n/,'').split('').map(&:to_i)

result = 0

is_end = true
i = 0
j = 13

while(is_end)

  compare_result = numbers[i..j-1].inject(1) do |sum, n|
    sum = sum * n
  end
  i, j = i+=1, j+=1
  result = compare_result if result < compare_result
  is_end = false if numbers.length < j
end

puts result
