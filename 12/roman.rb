require 'test/unit'
include Test::Unit::Assertions
# assert_equal( expected, actual, failure_message = nil )

# String -> Integer
# produce integer of roman String
# I = 1 V = 5 X = 10 L = 50 C = 100 D = 500 M = 1000
# IV = 4 IX = 9 XL = 40 XC = 90 CD = 400 CM = 900

def roman_to_integer str
  result = 0
  idx = 0

  # thousands
  while true
    if str[idx, 1].downcase != 'm'
      break
    end
    result += 1000
    idx += 1    
  end

  # 900 or 400 or 500
  if str[idx, 2].downcase == 'cm'
    result += 900
    idx += 2
  elsif str[idx, 2].downcase == 'cd'
    result += 400
    idx += 2
  elsif str[idx, 1].downcase == 'd'
    result += 500
    idx += 1
  end

  # hundreds
  while true
    if str[idx, 1].downcase != 'c'
      break
    end
    result += 100
    idx += 1
  end

  # 90 or 50 or 40
  if str[idx, 2].downcase == 'xc'
    result += 90
    idx += 2
  elsif str[idx, 2].downcase == 'xl'
    result += 40
    idx += 2
  elsif str[idx, 1].downcase == 'l'
    result += 50
    idx += 1
  end

  # tens
  while true
    if str[idx, 1].downcase != 'x'
      break
    end
    result += 10
    idx += 1  
  end

  # 9 or 4 or 5
  if str[idx, 2].downcase == 'ix'
    result += 9
    idx += 2
  elsif str[idx, 2].downcase == 'iv'
    result += 4
    idx += 2
  elsif str[idx, 1].downcase == 'v'
    result += 5
    idx += 1
  end

  # ones
  while true
    if str[idx, 1].downcase != 'i'
      break
    end
    result += 1
    idx += 1
  end

  if idx == str.length
    return result
  else
    puts "#{str} is not a valid roman number"
  end
end

assert_equal(1, roman_to_integer('I'))
assert_equal(4, roman_to_integer('IV'))
assert_equal(1999, roman_to_integer('mcmxcix'))
assert_equal(1000, roman_to_integer('m'))
assert_equal(3000, roman_to_integer('MmM'))
assert_equal(3900, roman_to_integer('mmmcm'))
assert_equal(3500, roman_to_integer('MmMd'))
assert_equal(3400, roman_to_integer('MmMcd'))
assert_equal(3100, roman_to_integer('MmMc'))
assert_equal(3700, roman_to_integer('MmMdcc'))
assert_equal(3790, roman_to_integer('MmMdccxc'))
assert_equal(3740, roman_to_integer('MmMdccxl'))
assert_equal(3750, roman_to_integer('MmMdccl'))
assert_equal(3720, roman_to_integer('MmMdccxx'))
assert_equal(3770, roman_to_integer('MmMdcclxx'))
assert_equal(3779, roman_to_integer('MmMdcclxxix'))
assert_equal(3774, roman_to_integer('MmMdcclxxiv'))
assert_equal(3775, roman_to_integer('MmMdcclxxv'))
assert_equal(3773, roman_to_integer('MmMdcclxxiii'))
assert_equal(3778, roman_to_integer('MmMdcclxxviii'))

puts roman_to_integer('aIb')
puts roman_to_integer('Ib')
puts roman_to_integer('vv')