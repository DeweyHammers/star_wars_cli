module UserCommands
    module InstanceMethods
        def print_categorys
            puts "---------------"
            puts "|1. People    |"  
            puts "|2. Planets   |" 
            puts "|3. Films     |"   
            puts "|4. Species   |"
            puts "|5. Vehicles  |"
            puts "|6. Starships |"
            puts "---------------"
            puts "Choose a number from the category you would like to look up or 'exit' to leave the app."
            print "Enter a command: "
        end
    
        def print_category_names(list)
            puts "---------------------"
            puts list
            puts "---------------------"
            puts "Please enter a number to choose from the list of names or 'back' to go back or 'exit' to leave the app."
            print "Enter a command: "
        end
    
        def invaild
            puts "Invaild!"
            print "Please re-enter a command: "
        end
    end

    module ClassMethods
        def loading
            puts "Loading please wait................."
        end
    end
end