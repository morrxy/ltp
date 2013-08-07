# Inteter -> String
# produce roman numeral string of a integer

def n_to_s n, base1, base2, char
  char * ((n % base1) / base2)
end

def roman n
  result = n_to_s(n, 5000, 1000, 'M') + n_to_s(n, 1000, 500, 'D') + n_to_s(n, 500, 100, 'C') + n_to_s(n, 100, 50, 'L') + n_to_s(n, 50, 10, 'X') + n_to_s(n, 10, 5, 'V') + n_to_s(n, 5, 1, 'I')
  puts result
end

puts x = rand(3000)
roman x
puts
puts '1999'
roman 1999

