
def loops()
  (0..$num_search).each do |k|
    yield k
  end
end

def compare_maximum(total)
  $max = total if total != nil && $max < total
  $total = 1
  return $max
end

def search_vertical(lattice, i , j )
  loops { |k| $total *= lattice[j+k][i] unless j+k >= 20 }
  return compare_maximum($total)
end

def search_side(lattice, i , j)
  loops { |k| $total *= lattice[j][i+k] unless i+k >= 20 }
  return compare_maximum($total)
end

def search_bottom_right(lattice, i, j)
  loops { |k| $total *= lattice[j+k][i+k] unless k+i >= 20 || k+j >= 20 }
  return compare_maximum($total)
end

def search_bottom_left(lattice, i, j)
  loops { |k| $total *= lattice[j+k][i-k] unless i-k <= -1 || k+j >= 20 }
  return compare_maximum($total)
end

# Read file
file = File.open('prob11.txt')
lattice = Array.new(20).map{ file.gets.chomp.split(' ').map(&:to_i) }
file.close

# search of max in lattice
$max = 0
$num_search = 3
$total = 1

lattice.each_with_index do |la, j|
  la.each_with_index do |lb , i|
    search_vertical(lattice, i, j)
    search_side(lattice, i, j)
    search_bottom_right(lattice, i, j)
    search_bottom_left(lattice, i, j)
  end
end

puts $max