songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
  
end


def list(songs)
  songs.each_with_index {|song, i| puts "#{i+1}. #{song}"}
end 

def play(songs)
  puts "Please enter a song name or number:"
  decision = gets.strip
  if (decision.to_i < songs.length && decision.to_i != 0)
    decision = decision.to_i
    puts "Playing #{songs[decision - 1]}"
  elsif songs.any? {|song| song == decision}
    puts "Playing #{decision}"
  else
    puts "Invalid input, please try again"
  end
end


def exit_jukebox
puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  input = gets.strip
  pp input
  i=0
  while i==0 do
    if input == 'list'
      list(songs)
      run(songs)
    elsif input == 'play'
      play(songs)
      run(songs)
    elsif input == 'help'
      help
      run(songs)
    elsif input == 'exit'
      return exit_jukebox
    else
    puts "Invalid input, please try again"
    run(songs)
    end
    i=1
  end
end