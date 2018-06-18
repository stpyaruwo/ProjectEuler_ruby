require 'prime'

result = Prime.each(2000000).to_a.inject(:+)

puts result

#あんまし意味ない...
