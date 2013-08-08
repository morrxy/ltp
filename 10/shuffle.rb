# require 'test/unit'
# include Test::Unit::Assertions

a1 = ['a']
a2 = ['a', 'b']
a3 = ['a', 'b', 'c', 'd', 'e']

def shuffle a
  if a.length == 0 || a.length == 1
    return a
  end
  i = 0
  n = a.length
  while i < n
    r = i + rand(n - i)
    temp = a[i]
    a[i] = a[r]
    a[r] = temp
    i += 1
  end
  a
end

puts shuffle(a1).to_s
puts shuffle(a2).to_s
puts shuffle(a3).to_s
