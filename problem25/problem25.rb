
#フィナボッチ数列
def fibonacci(n, a=0, b=1, f=1)
  if n < b
    return b, f
  else
    c = a + b
    fibonacci(n, b, c, f+=1)
  end
end

#1000桁から始まる最初の項
puts fibonacci(10 ** 999)