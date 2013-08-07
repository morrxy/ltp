puts "start year?"
sy = gets.chomp.to_i

puts 'end year?'
ey = gets.chomp.to_i

while sy <= ey
  if sy % 400 == 0 || (sy % 4 == 0 && sy % 100 != 0)
    puts sy
  end
  sy += 1
end