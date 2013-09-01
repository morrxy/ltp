puts 'first number?'
num1 = gets.chomp

puts 'second number?'
num2 = gets.chomp

puts 'what operation? chose 1(add) or 2(sub) 3(mul) 4(div)'
operation = gets.chomp

if operation == '1'
  result = num1.to_i + num2.to_i
  operation = '+'
elsif operation == '2'
  result = num1.to_i - num2.to_i
  operation = '-'
elsif operation == '3'
  result = num1.to_i * num2.to_i
  operation = '*'
elsif operation == '4'
  result = num1.to_f / num2.to_i
  operation = '/'
end

puts "#{ num1 } #{ operation } #{ num2 } = #{ result }"
