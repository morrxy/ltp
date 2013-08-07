while true
  mywords = gets.chomp
  if mywords == 'BYE'
    break
  elsif mywords == mywords.upcase
    puts 'NO, NOT SINCE ' + (1930 + rand(21)).to_s + '!'
  else
    puts 'HUH?! SPEAK UP, SONNY!'
  end
end