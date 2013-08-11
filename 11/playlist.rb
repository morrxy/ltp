def shuffle arr
  arr.sort_by{rand}
end

song_names = Dir['/Users/morrxy/Downloads/**/*.mp3']

file_name = 'play_list.m3u'

File.open file_name, 'w' do |f|
  shuffle(song_names).each do |name|
    f.write "#{name}\n"
  end
end