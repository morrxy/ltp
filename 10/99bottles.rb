def english_number number
  if number < 0
    return 'Please entter a number that isn\'t negative.'
  end
  if number == 0
    return 'zero'
  end

  num_string = ''

  ones_place = ['one', 'tow', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
  tens_place = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
  teenagers = ['elevn', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

  left = number

  write = left/1000000000000
  left = left - write*1000000000000

  if write > 0
    trillons = english_number write
    num_string = num_string + trillons + ' trillon'
    if left > 0
      num_string = num_string + ' '
    end
  end

  write = left/1000000000
  left = left - write*1000000000

  if write > 0
    billons = english_number write
    num_string = num_string + billons + ' billon'
    if left > 0
      num_string = num_string + ' '
    end
  end

  write = left/1000000
  left = left - write*1000000

  if write > 0
    millons = english_number write
    num_string = num_string + millons + ' millon'
    if left > 0
      num_string = num_string + ' '
    end
  end

  write = left/1000
  left = left - write*1000

  if write > 0
    thounds = english_number write
    num_string = num_string + thounds + ' thound'
    if left > 0
      num_string = num_string + ' '
    end
  end

  write = left/100
  left = left - write*100

  if write > 0
    num_string = num_string + ones_place[write-1] + ' hundred'
    if left > 0
      num_string = num_string + ' '
    end
  end

  write = left/10
  left = left - write*10

  if write > 0
    if((write == 1) and (left > 0))
      num_string = num_string + teenagers[left-1]
      left = 0
    else
      num_string = num_string + tens_place[write-1]
    end

    if left > 0
      num_string = num_string + '-'
    end
  end

  write = left
  left = 0

  if write > 0
    num_string = num_string + ones_place[write-1]
  end

  num_string
end

num_at_start = 5

# num_bot = proc {|n| "#{english_number[n]} bottle#{n == 1 ? '' : 's'}"}
num_bot = proc {|n| "bottle#{n == 1 ? '' : 's'}"}

num_at_start.downto(2) do |num|
  puts "#{english_number(num)} #{num_bot[num]} of beer on the wall, #{english_number(num)} #{num_bot[num]} of beer!"
  puts "Take one down, pass it around, #{english_number(num-1)} #{num_bot[num-1]} of beer on the wall!!"
end

puts "#{english_number(1)} #{num_bot[1]} of beer on the wall, #{english_number(1)} #{num_bot[1]} of beer on the wall!!"
puts "Take one down, pass it around, no more bottles of beer on the wall!"

