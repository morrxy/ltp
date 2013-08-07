# Inteter -> String
# produce roman numeral string of a integer
# I = 1 V = 5 X = 10 L = 50 C = 100 D = 500 M = 1000
# IV = 4 IX = 9 XL = 40 XC = 90 CD = 400 CM = 900

def roman n
  thou = n / 1000
  hand = (n % 1000) / 100
  ten = (n % 100) / 10
  one = n % 10

  r = 'M' * thou

  if hand == 9
    r += 'CM'
  elsif hand == 4
    r += 'CD'
  else
    r += 'D' * (hand / 5) + 'C' * (hand % 5)
  end

  if ten == 9
    r += 'XC'
  elsif ten == 4
    r += 'XL'
  else
    r += 'L' * (ten / 5) + 'X' * (ten % 5)
  end

  if one == 9
    r += 'IX'
  elsif one == 4
    r += 'IV'
  else
    r += 'V' * (one / 5) + 'I' * (one % 5)
  end

  r

end

puts x = rand(3000)
puts roman x
puts '1999'
puts roman 1999

