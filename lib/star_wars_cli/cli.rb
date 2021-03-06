class Cli
    include UserCommands::InstanceMethods
    extend UserCommands::ClassMethods

    def call
        puts "---------------------------------------------------------------------------"
        puts "| Welcome! This is where you can find all things on everyhting Star Wars! |"
        puts "---------------------------------------------------------------------------"
        self.print_categorys()
        input = nil
        while input != "exit" 
            input = gets.chomp
            list = StarWars.get_category_names(input)
            if list
                self.print_category_names(list)
                status = nil
                while status != true 
                    input = gets.chomp
                    info = StarWars.get_info(input)
                    if info
                        StarWars.print_info(info)
                    else
                        case input
                        when 'back'
                            status = true
                            self.print_categorys()
                        when "list"
                            self.print_category_names(list)
                        when 'exit'
                            status = true
                        else 
                            self.invaild()
                        end
                    end
                end
            elsif input != "exit" 
                self.invaild()
            end
        end
        puts "Good bye! May the force be with you!"
    end 
end