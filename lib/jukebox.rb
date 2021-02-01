# # Add your code here
# songs = [
#   "Phoenix - 1901",
#   "Tokyo Police Club - Wait Up",
#   "Sufjan Stevens - Too Much",
#   "The Naked and the Famous - Young Blood",
#   "(Far From) Home - Tiga",
#   "The Cults - Abducted",
#   "Phoenix - Consolation Prizes",
#   "Harry Chapin - Cats in the Cradle",
#   "Amos Lee - Keep It Loose, Keep It Tight"
# ]
 
# def help
#     puts "I accept the following commands:"
#     puts "- help : displays this help message"
#     puts "- list : displays a list of songs you can play"
#     puts "- play : lets you choose a song to play"
#     puts "- exit : exits this program"
# end    
 
# def list(song_array)
#     song_array.each_with_index do | song, index |
#         song_num = index+1
#         puts "#{song_num}. #{song}"
#     end 
# end
 
# def play(song_array)
#     puts "Please enter a song name or number:"
#     choice = gets.strip
#     response = nil
 
#     song_array.each_with_index do | song, index |
#         if choice == song
#             response = "Playing #{song}"
#         elsif choice.to_i-1 == index
#             response = "Playing #{song_array[index]}"
#         end
#     end
 
#     if !response
#         response = "Invalid input, please try again"
#     end
#     puts response 
# end
 
# def exit_jukebox
#     puts "Goodbye"
# end
 
# def run(song_array)
#     exit_command = nil
#     help
 
#     until exit_command
#      puts "Please enter a command:"
#      command = gets.strip
 
#      case command
#      when "help"
#         help
#      when "list"
#         list(song_array)
#      when "play"
#         play(song_array)
#      when "exit"
#         exit_command = true
#         exit_jukebox
#      else
#         puts "Invalid command"   
#      end
#     end  
 
# end    
 
# run(songs)


#puts "hello"

gets