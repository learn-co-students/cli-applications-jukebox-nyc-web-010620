# def say_hello(name)
#  "Hi #{name}!"
# end

# puts "Enter your name:"
# users_name = gets.strip

# puts say_hello(users_name)

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
  songs.each_with_index { |song, index|
    puts (index + 1).to_s + ". " + song
  }
end

def play(songs)
  puts "Please enter a song name or number:"
  user_selection = gets.strip
  response = ""

  songs.each_with_index do |song, index|
    if user_selection == (index + 1).to_s || user_selection == song
      response = "Playing #{song}"
      break
    else
      response = "Invalid input, please try again"
    end
  end
  puts response
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  command = gets.strip

  case command

    when "list"
    list(songs)

    when "play"
    play(songs)

    when "help"
    help

    when "exit"
    exit_jukebox

  end

  end
