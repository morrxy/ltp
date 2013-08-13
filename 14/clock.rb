def clock(&chime)
  (Time.new.hour % 12).times do
    chime.call
  end
end

clock do
  puts 'DONG!'
end