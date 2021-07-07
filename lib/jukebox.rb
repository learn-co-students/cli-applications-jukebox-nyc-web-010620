# Add your code here
def help
   puts "I accept the following commands:"
   puts "- help : displays this help message"
   puts "- list : displays a list of songs you can play"
   puts "- play : lets you choose a song to play"
   puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  user = gets.strip
  list = {}
  
  songs.each_with_index do |item, index|
    list[index + 1] = item
  end
  
  found = false

  list.each do |key, item|
    if user == item
      puts "Playing #{item}"
      found = true
    elsif user.to_i == key 
      puts "Playing #{item}"
      found = true
    end
  end
  
  if found == false
    puts "Invalid input, please try again"
  end


end

def list (songs)
  songs.each_with_index do |item, index|
  puts "#{index + 1}. #{item}"
  end 
  
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs) 
  puts "Please enter a command:"
  
  running = true
  
  while running == true do
    input = gets.strip
    if input == "help"
      help
    elsif input == "list"
      list(songs)
    elsif input == "play"
      play(songs)
    elsif input == "exit"
      exit_jukebox
      running = false
    else 
      puts "Invalid command"
    end
  end
  
end