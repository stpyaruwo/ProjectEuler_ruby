
def one_to_twenty(i)
  word = ""
  case i
  when 1 then
    word = "one"
  when 2 then
    word = "two"
  when 3 then
    word = "three"
  when 4 then
    word = "four"
  when 5 then
    word = "five"
  when 6 then
    word = "six"
  when 7 then
    word = "seven"
  when 8 then
    word = "eight"
  when 9 then
    word = "nine"
  when 10 then
    word = "ten"
  when 11 then
    word = "eleven"
  when 12 then
    word = "twelve"
  when 13 then
    word = "thirteen"
  when 14 then
    word = "fourteen"
  when 15 then
    word = "fifteen"
  when 16 then
    word = "sixteen"
  when 17 then
    word = "seventeen"
  when 18 then
    word = "eighteen"
  when 19 then
    word = "nineteen"
  when 20 then
    word = "twenty"
  else
    word = ""
  end
  return word
end

def twenty_one_to_ninety_nine(i)
  word = ""
  i = i / 10
  case i
  when 2 then
    word = "twenty"
  when 3 then
    word = "thirty"
  when 4 then
    word = "forty"
  when 5 then
    word = "fifty"
  when 6 then
    word = "sixty"
  when 7 then
    word = "seventy"
  when 8 then
    word = "eighty"
  when 9 then
    word = "ninety"
  else

  end
  return word
end

def convert_to_englishwords(i)
  word = ""
  if i <= 20
    word = one_to_twenty(i)
  elsif  i <= 99
    word = twenty_one_to_ninety_nine(i) + one_to_twenty(i%10)
  elsif i <= 999
    word = one_to_twenty(i/100) + "hundred"
    if i%100 <= 20 && i%100 != 0
      word = word + "and" + one_to_twenty(i%100)
    elsif i%100 != 0
      word = word + "and" + twenty_one_to_ninety_nine(i%100) + one_to_twenty(i%10)
    else

    end
  else
    word = "onethousand"
  end
  return word
end

sum_words = 0

1.upto(1000) do |i|
  sum_words = sum_words + convert_to_englishwords(i).length
end

puts sum_words