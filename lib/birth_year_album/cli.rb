#CLI controller

class BirthYearAlbum::CLI

  def call
    menu
  end

  def menu
    #asks user for a year input and checks to see if it is in allowable range.
    input = nil

    while input != "exit"
      puts "Which year were you born? Type exit to quit the program."
      input = gets.strip.downcase

      if input.to_i > 0 #checks to see if input is an integer or exit
        if input.to_i >= 1956 && input.to_i <= 2015 #checks qualifying years
          album = find_album(input)
          puts ""
          puts "---------------------#{album.year}---------------------"
          puts "#{album.name} - #{album.artist}"
          puts ""
        elsif input.to_i < 1956
          puts ""
          puts "There are no records of top selling albums before 1956. Try another number"
          puts ""
        else
          puts ""
          puts "This is not a valid year. Try again!"
          puts ""
        end
      elsif input == "exit"
        puts ""
        puts "Thanks! See you next time."
        puts ""
      else
        puts ""
        puts "I'm not sure what you are looking for try again."
        puts ""
      end
    end
  end

  def find_album(alb)
    BirthYearAlbum::Album.album_by_year(alb)
  end

end