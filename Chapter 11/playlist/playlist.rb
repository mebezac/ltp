#Playlist Builder

Dir.chdir("/home/zac/Music")

music_dir = Dir["/home/zac/Music/**/*.mp3"]

puts "What would you like to call your playlist?"
playlist_answer = gets.chomp
playlist_name = "#{playlist_answer}.m3u"

array_of_song_paths = []

music_dir.each do |song|
  array_of_song_paths << song
end


File.open(playlist_name, 'w') do |f|
  f.write array_of_song_paths.join("\n")
end

