# Add your code here
#def say_hello(name)
#  "Hi #{name}!"
#end
 
#puts "Enter your name:"
#users_name = gets.strip
 
#puts say_hello(users_name)

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
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  user_in = gets.strip
  user_in_int = user_in.to_i 
  if user_in_int < 10 && user_in_int > 0 
    song = songs[user_in_int - 1]
  else
    song = songs.find {|x| x == user_in}
  end
  if song != nil 
    puts "Playing #{song}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end



def run(songs) 
  x = 0
  while x == 0 do 
    puts "Please enter a command:"
    user_in = gets.strip
    if user_in == "help"
      help
    elsif user_in == "list"
      list(songs)
    elsif user_in =="play"
      play(songs)
    elsif user_in == "exit"
      exit_jukebox
      x = 1 
    else
      puts "Not a valid command, please try again."
    end
  end
end



  