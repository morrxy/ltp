c = 0
puts 'WHAT YOU SAY?'

while true
  mywords = gets.chomp

  if mywords == 'BYE'
    c += 1
    if c == 3
      puts 'SEE YOU, SONNY!'
      break
    end
    puts 'HUH?! SPEAK UP, SONNY!'
  else
    c = 0
    if mywords == mywords.upcase
      puts 'NO, NOT SINCE ' + (1930 + rand(21)).to_s + '!'
    else
      puts 'HUH?! SPEAK UP, SONNY!'
    end
  end
end

