S1 = ' bottles of beer on the wall, '
S2 = ' bottles of beer.'
S3 = 'Take one down and pass it around, '
S4 = ' of beer on the wall.'

S5 = 'No more bottles of beer on the wall, no more bottles of beer.'
S6 = 'Go to the store and buy some more, 99 bottles of beer on the wall.'

n = 99

while true

  if n == 1
    s = 'no more bottles'
  elsif n == 2
    s = 1.to_s + ' bottle'
  else
    s = (n - 1).to_s + ' bottles'
  end

  puts n.to_s + S1 + n.to_s + S2
  puts S3 + s + S4
  puts ''

  n -= 1

  break if n == 0

end

puts S5
puts S6