
def compare_maximum(result)
  $max = result if result != nil && $max < result
  return $max
end

def search_vertical(lattice, i , j)
  result = (0..$num_search).inject(1) do |re, k|
    re *= lattice[j+k][i] unless j+k >= 20
  end
  return compare_maximum(result)
end

def search_side(lattice, i , j)
  result = (0..$num_search).inject(1) do |re, k|
    re *= lattice[j][i+k] unless i+k >= 20
  end
  return compare_maximum(result)
end

def search_bottom_right(lattice, i, j)
  result = (0..$num_search).inject(1) do |re, k|
    re *= lattice[j+k][i+k] unless k+i >= 20 || k+j >= 20
  end
  return compare_maximum(result)
end


def search_bottom_left(lattice, i, j)
  result = (0..$num_search).inject(1) do |re, k|
    re *= lattice[j+k][i-k] unless i-k <= -1 || k+j >= 20
  end
  return compare_maximum(result)
end

# Read file
file = File.open('prob11.txt')
lattice = Array.new(20).map{ file.gets.chomp.split(' ').map(&:to_i) }
file.close

# search of max in lattice
$max = 0
$num_search = 3

lattice.each_with_index do |la, j|
  la.each_with_index do |lb , i|
    search_vertical(lattice, i, j)
    search_side(lattice, i, j)
    search_bottom_right(lattice, i, j)
    search_bottom_left(lattice, i, j)
  end
end

puts $max