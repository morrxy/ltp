n = 0
words = []

while true
  puts 'intpu word'
  word = gets.chomp
  if word == ''
    break;
  else
    words[n] = word
    n += 1
  end  
end

words.sort.each do |w|
  puts w
end
