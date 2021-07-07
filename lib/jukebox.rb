# Add your code here
def help
 puts "I accept the following commands:"
 puts "- help : displays this help message"
 puts "- list : displays a list of songs you can play"
 puts "- play : lets you choose a song to play"
 puts "- exit : exits this program"
end 

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end 
end 

def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.chomp
  if (1..9).include?(user_input.to_i)
    puts "Playing #{songs[user_input.to_i - 1]}"
  elsif songs.include?(user_input)
    puts "Playing #{user_input}"
  else
      puts "Invalid input, please try again"
  end 

end 

def exit_jukebox
  puts "Goodbye"
end 

def run(songs)
  input = true
  while input
    puts "Please enter a command:"
    input = gets.strip 
    if input == "play"
      play(songs)
    elsif input == "help"
      help
    elsif input == "list"
      list(songs)
    elsif input == "exit"
      break
    end 
  end 

    exit_jukebox
end 

    
    
    
    
    
    
    
    