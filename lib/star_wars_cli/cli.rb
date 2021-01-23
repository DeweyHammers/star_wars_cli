class Cli
    def call
        puts "-----------------------------"
        puts "Welcome! This is where you can find all info on everyhting Star Wars!"
        print_categorys()
        input = nil
        while input != "exit" 
            input = gets.chomp
            list = StarWars.get_category_names(input)
            if list
                print_category_names(list)
                status = nil
                while status != true 
                    input = gets.chomp
                    info = StarWars.list_info(input)
                    if info
                        case StarWars.status
                        when 'person'
                            StarWars.print_person_info(info)
                        when 'planet'
                            StarWars.print_planet_info(info)
                        when 'film'
                            StarWars.print_film_info(info)
                        when 'specie'
                            StarWars.print_specie_info(info)
                        when 'vehicle'
                            StarWars.print_vehicle_info(info)
                        when 'starship'
                            StarWars.print_starship_info(info)
                        end
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
        puts "Good bye! May the force be with you!"
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
        puts "-----------------------------"
        puts list
        puts "-----------------------------"
        puts "Please enter a number to choose from the list of names or 'back' to go back or 'exit' to leave the app."
        print "Enter a command: "
    end
    
    def invaild
        puts "Invaild!"
        print "Please re-enter a command: "
    end
end