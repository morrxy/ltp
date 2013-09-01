puts [1, 2, { a: 'hash', b: 'in', c: 'array' }, 3, 4]
h = { a: 1, b: 2, c: 3 }
h[:d] = %w(array in hash)
puts h