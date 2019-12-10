

def run(songs)
  puts "Please enter a command:"
  x = 1
  while x > 0

    input = gets.strip
    if input == "exit"
    exit_jukebox
    return
    elsif input == "help"
    help
    elsif input == "play"
     play(songs)
    elsif input == "list"
    list(songs)
    end
  end


end

def help

puts "I accept the following commands:"
puts "- help : displays this help message"
puts "- list : displays a list of songs you can play"
puts "- play : lets you choose a song to play"
puts "- exit : exits this program"

end

def list(arr)

arr.each_with_index do |ele, ind|
indadjusted = ind + 1
puts indadjusted.to_s + ". " + ele
end


end

def play(songs)

  numarr = [*1..9]
  found = false

 puts "Please enter a song name or number:"
      secondInput = gets.strip

      numarr.each do |ele|
        if ele.to_s == secondInput
        puts "Playing " + songs[secondInput.to_i - 1]
        found = true
        end
      end
      
      songs.each do |ele|
         if ele.to_s == secondInput
        puts songs[secondInput.to_i]
        found = true
        end
      end

      if found == false
        puts "Invalid input, please try again"
      else
        found = false
      end

end

def exit_jukebox
  puts "Goodbye"
  # return
end