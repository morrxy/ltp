# Inteter -> String
# produce roman numeral string of a integer

def n_to_s n, base, char
  char * (n / base)
end

def roman i

  result = ''

  n = i
  result += n_to_s n, 1000, 'M'

  n = i % 1000
  result += n_to_s n, 500, 'D'

  n = i % 500
  result += n_to_s n, 100, 'C'

  n = i % 100
  result += n_to_s n, 50, 'L'

  n = i % 50
  result += n_to_s n, 10, 'X'

  n = i % 10
  result += n_to_s n, 5, 'V'

  n = i % 5
  result += n_to_s n, 1, 'I'

  puts result

end

puts x = rand(3000)
roman x

puts

puts '1999'
roman 1999

