words_hash = Hash[*('A'..'Z').to_a.zip((1..26).to_a).flatten]
File.read('names.txt').gsub(/"/,"").split(',').sort.map.with_index{|word ,index| [index+1,word]}.inject(0) { |sum, word_index|
  sum + (word_index[0] * word_index[1].split('').inject(0) {|num, s| num + words_hash[s]})
}.tap {|result| puts result}


