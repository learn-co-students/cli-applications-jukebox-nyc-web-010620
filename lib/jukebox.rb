def help
  
puts "/I accept the following commands:/"
puts  "/- help : displays this help message/"
puts  "/- list : displays a list of songs you can play/"
puts  "/- play : lets you choose a song to play/"
puts  "/- exit : exits this program/"
end
  
  
   def list(songs)
      songs.each_with_index {|song, index| puts "#{index +1}. #{song}"}
  end 
  
  def play (songs)
    puts "Please enter a song name or number:"
    user_response = gets.chomp
  if user_response.to_i >= 1 && user_response.to_i <= songs.length
    puts "Playing #{songs[user_response.to_i-1]}"
  elsif songs.include?(user_response)
    puts "Playing #{songs.find{|song| song == user_response}}"
  else
    puts "Invalid input, please try again"
  end
end
  

  def exit_jukebox 
    puts "Goodbye"
  end 
  
  # 
  


def run(songs)
  while true do
    puts "Please enter a command:"
    user_response = gets.strip

    if user_response == "exit"
      exit_jukebox 
      break
    end
    if user_response  == "help"
      help
    end
    if user_response == "list"
      list (songs)
    end
    if user_response == "play"
      play (songs)
    else
      puts "Invalid entry"
    end 
  end
end


