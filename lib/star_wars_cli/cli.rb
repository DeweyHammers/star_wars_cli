class Cli
    def call
        puts "-----------------------------"
        puts "Welcome! This is where you can find all info on everyhting Star Wars!"
        print_categorys()
        input = nil
        while input != "exit" 
            input = gets.chomp
            list = StarWars.get_category(input)
            if list
                print_category_names(list)
                status = nil
                while status != true 
                    input = input = gets.chomp
                    info = StarWars.list_info(input)
                    if info
                        puts "---------------------"
                        puts "Movie Information"
                        puts "---------------------"
                        puts "Name: #{info.title}"
                        puts "Episode: #{info.episode_id}"
                        puts "Director: #{info.director}"
                        puts "Producer: #{info.producer}"
                        puts "Release Date: #{info.release_date}"
                        puts "---------------------"
                        puts "Please enter a new moive number or 'list' to to see names again or 'back' to go back or 'exit' to exit"
                        print "Enter a command: "
                    else 
                        if input == 'back'
                            status = true
                            print_categorys()
                        elsif input == "list"
                            print_category_names(list)
                        elsif input == 'exit'
                            status = true
                        elsif input != true
                            invaild()
                        end
                    end
                end
            elsif input != "exit" 
                invaild()
            end
        end
        puts "Good bye!"
    end 

    def print_categorys
        puts "-----------------------------"
        puts "1. People"
        puts "2. Planets"
        puts "3. Films"
        puts "4. Species"
        puts "5. Vehicles"
        puts "6. Starships"
        puts "-----------------------------"
        puts "Choose a number from the category you would like to look up or 'exit' to leave the app."
        print "Enter a command: "
    end
    
    def print_category_names(list)
        puts "--------"
        puts list
        puts "--------"
        puts "Please enter a number to choose from the list of names or 'back' to go back or 'exit' to leave the app."
        print "Enter a command: "
    end
    
    def invaild
        puts "Invaild!"
        print "Please re-enter a command: "
    end
end