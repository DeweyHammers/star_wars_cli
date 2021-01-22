module Information
    def print_film_info(film)
        puts "---------------------"
        puts "Movie Information"
        puts "---------------------"
        puts "Name: #{film.title}"
        puts "Episode: #{film.episode_id}"
        puts "Director: #{film.director}"
        puts "Producer: #{film.producer}"
        puts "Release Date: #{film.release_date}"
        puts "---------------------"
        puts "Please enter a new moive number or 'list' to to see names again or 'back' to go back or 'exit' to exit"
        print "Enter a command: "
    end
end