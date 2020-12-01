

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index { |song, idx| puts "#{idx + 1}. #{song}"}
end

def play(songs)
  puts "Please enter a song name or number:"
  users_response = gets.strip
  if (1..9).to_a.index(users_response.to_i) != nil
    puts "Playing #{songs[users_response.to_i - 1]}"
  elsif songs.index(users_response) != nil
    puts "Playing #{users_response}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  user_input = gets.strip
    if user_input == "list"
      list(songs)
    elsif user_input == "play"
      play(songs)
    elsif user_input == "help"
      help
    unless user_input == "exit"
      exit_jukebox
    end
  end
  exit_jukebox
end
