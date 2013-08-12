birth_dates = {}

File.read('b.txt').each_line do |line|
  line = line.chomp
  first_comma = 0
  while line[first_comma] != ',' && first_comma < line.length
    first_comma += 1    
  end

  name = line[0..(first_comma - 1)]
  date = line[-12..-1]

  birth_dates[name] = date
end

puts 'whose birthday would you like to know?'
name = gets.chomp
date = birth_dates[name]

if date == nil
  puts 'I donot know'
else
  puts date[0..5]
end