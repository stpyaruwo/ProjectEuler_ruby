require 'date'

monday_times = 0
week = ["",'Mon','Tue','Wed','Thu','Fri','Sat','Sun']

1901.upto(2000) do |year|
  1.upto(12) do |month|
    d = Date.new(year, month, 1)
    monday_times+=1 if week[d.cwday] == 'Mon'
  end
end

puts monday_times

