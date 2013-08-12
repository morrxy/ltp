file_name = 'b.txt'
read_string  = File.read file_name
birthday = {}

month_vals = {'Jan' => 1, 'Feb' => 2, 'Mar' => 3, 'Apr' => 4, 'May' => 5, 'June' => 6, 'July' => 7, 'Aug' => 8, 'Sept' => 9, 'Oct' => 10, 'Nov' => 11, 'Dec' => 12}

read_string.each_line do |line|
  arr = line.split(',')
  
  name = arr[0]
  year = arr[2].to_i

  arr2 = arr[1].split(' ')

  month = arr2[0]
  day = arr2[1].to_i

  birthday[name] = [year, month_vals[month], day]
end

puts 'name?'
input = gets.chomp

birthday.each do |name, date|
  if input == name
    birth_y = date[0]
    birth_m = date[1]
    birth_d = date[2]

    now = Time.new
    now_y = now.year
    now_m = now.month
    now_d = now.day

    if now_m > birth_m || (now_m == birth_m && now_d > birth_d)
      next_y = now_y + 1
    else
      next_y = now_y
    end

    age = next_y - birth_y

    puts "next birthday is #{next_y} #{birth_m} #{birth_d}, you will be #{age} old"
  end
end

          
