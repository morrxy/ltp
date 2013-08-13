def log desc, &block
  puts "Beginning #{desc}..."
  result = block.call
  puts "...\"#{desc}\" finished, return: #{result}"
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
