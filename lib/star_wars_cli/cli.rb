class Cli
    def call
        puts "Welcome! Please choose from the category you would like to look up."
        puts "1. People"
        puts "2. Planets"
        puts "3. Films"
        puts "4. Species"
        puts "5. Vehicles"
        puts "6. Starships"
        puts "Type exit to leave the app"
        print "Please enter a number: "
        input = nil
        while input != "exit"
            input = gets.chomp
            StarWars.list_names(input)
        end
    end 
end