def line_range?(j, length)
  j < length - 1 ? true : false
end

triangle = Array.new(15)
File.open('input.txt') do |f|
  triangle = triangle.map { f.gets.split(' ').map(&:to_i)}
end

triangle.reverse!

triangle.each_with_index do |line, i|
  line.each_with_index do |val, j|
    if  line_range?(j, line.length)
      triangle[i+1][j] = val <= line[j+1] ? line[j+1] + triangle[i+1][j] : val + triangle[i+1][j]
    end
  end
end

p triangle[-1][0]