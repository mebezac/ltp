#Playlist Builder - Better shuffle

Dir.chdir("/home/zac/Music")

music_dir = Dir["/home/zac/Music/**/*.mp3"]

puts "What would you like to call your playlist?"
playlist_answer = gets.chomp
playlist_name = "#{playlist_answer}.m3u"

array_of_song_paths = []
test_array = ["look/at/this/1", "This/is/Pretty/Cool"]

def mix_up_music(array_of_songs)
  new_array =[]
  array_of_songs.shuffle!
  new_array << array_of_songs.pop
  attempt_count = 0

  while array_of_songs.any?
    if new_array[-1].split('/')[4] == array_of_songs[-1].split('/')[4] && attempt_count < 4
      array_of_songs.shuffle!
      puts "Found song by same artist, trying to shuffle again!"
      attempt_count += 1
    else
      new_array << array_of_songs.pop
      attempt_count = 0
    end
    
  end
  new_array
end



music_dir.each do |song|
  array_of_song_paths << song
end


File.open(playlist_name, 'w') do |f|
  f.write (mix_up_music(array_of_song_paths)).join("\n")
end
