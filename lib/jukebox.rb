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
    user_choice = gets.strip
    songs.each_with_index do |song, index|
        if user_choice == song || user_choice.to_i == (index + 1)
            puts "Playing #{song}"
            return
        end
    end
    puts "Invalid input, please try again"
end


def exit_jukebox
    puts "Goodbye"
end

def run(songs)
    puts "Please enter a command:"
    user_command = gets.strip

    while user_command != "exit"
        if user_command == "help"
            help
            puts "Please enter a command:"
            user_command = gets.strip
        elsif user_command == "list"
            list(songs)
            puts "Please enter a command:"
            user_command = gets.strip

        elsif user_command == "play"
            play(songs)
            puts "Please enter a command:"
            user_command = gets.strip
        else
            puts "Please enter a command:"
            user_command = gets.strip
        end
    end
    exit_jukebox
end


=begin
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
run(songs)  
=end



  








