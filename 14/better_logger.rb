$deep = 0

def log desc, &block
  puts "#{' '*$deep}Beginning #{desc.inspect}..."
  $deep += 1
  result = block[]
  $deep -= 1
  puts "#{' '*$deep}...#{desc.inspect} finished, return: #{result}"
end

log 'outer block' do
  log 'some little block' do
    1**1 + 2**2
  end

  log 'yet another block' do
    '!doof iahT ekil I'.reverse
  end

  '0' == 0
end
