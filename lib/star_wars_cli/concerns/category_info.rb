module Information
    def print_person_info(person)
        puts "--------------------------"
        puts "|   Person Information   |"  
        puts "--------------------------"
        puts "Name: #{person.name}"
        puts "Height: #{person.height}" 
        puts "Mass: #{person.mass}"
        puts "Hair color: #{person.hair_color}"
        puts "Skin color: #{person.skin_color}"
        puts "Eye color: #{person.eye_color} "
        puts "Birth year: #{person.birth_year}"
        puts "Gender: #{person.gender}"
        user_commands()
    end
    
    def print_planet_info(planet)
        puts "--------------------------"
        puts "|   Planet Information   |"
        puts "--------------------------"
        puts "Name: #{planet.name}"
        puts "Rotation period: #{planet.rotation_period}"
        puts "Diameter: #{planet.diameter}"
        puts "Climate: #{planet.climate}"
        puts "Gravity: #{planet.gravity}"
        puts "Terrain: #{planet.terrain}"
        puts "Surface water: #{planet.surface_water}"
        puts "Population: #{planet.population}"
        user_commands() 
    end

    def print_film_info(film)
        puts "--------------------------"
        puts "|    Movie Information   |" 
        puts "--------------------------"
        puts "Name: #{film.title}"
        puts "Episode: #{film.episode_id}"
        puts "Director: #{film.director}"
        puts "Producer: #{film.producer}"
        puts "Release Date: #{film.release_date}"
        user_commands()
    end

    def print_specie_info(specie)
        puts "--------------------------"
        puts "|   Specie Information   |"
        puts "--------------------------"
        puts "Name: #{specie.name}"
        puts "Classification: #{specie.classification}"
        puts "Designation: #{specie.designation}"
        puts "Average height: #{specie.average_height}"
        puts "Skin colors: #{specie.skin_colors}"
        puts "Hair colors: #{specie.hair_colors}"
        puts "Eye colors: #{specie.eye_colors}"
        puts "Average lifespan: #{specie.average_lifespan}"
        user_commands()
    end

    def print_vehicle_info(vehicle)
        puts "--------------------------"
        puts "|   Vehicle Information  |"
        puts "--------------------------"
        puts "Name: #{vehicle.name}"
        puts "Model: #{vehicle.model}"
        puts "Manufacturer: #{vehicle.manufacturer}"
        puts "Cost in credits: #{vehicle.cost_in_credits}"
        puts "Length: #{vehicle.length}"
        puts "Max atmoshering speed: #{vehicle.max_atmosphering_speed}"
        puts "Crew: #{vehicle.crew}"
        puts "Passengers: #{vehicle.passengers}"
        puts "Cargo capacity: #{vehicle.cargo_capacity}"
        puts "Consumables: #{vehicle.consumables}"
        puts "Vehicle class: #{vehicle.vehicle_class}"
        user_commands()
    end

    def print_starship_info(starship)
        puts "--------------------------"
        puts "|  Starship Information  |"
        puts "--------------------------"
        puts "Name: #{starship.name}"
        puts "Model: #{starship.model}"
        puts "Manufacturer: #{starship.manufacturer}"
        puts "Cost in credits: #{starship.cost_in_credits}"
        puts "Length: #{starship.length}"
        puts "Max atmosphering speed: #{starship.max_atmosphering_speed}"
        puts "Crew: #{starship.crew}"
        puts "Passengers: #{starship.passengers}"
        puts "Cargo capacity: #{starship.cargo_capacity}"
        puts "Consumables: #{starship.consumables}"
        puts "Hyperdrive rating: #{starship.hyperdrive_rating}"
        puts "MGLT: #{starship.MGLT}"
        puts "Starship class: #{starship.starship_class}"
        user_commands()
    end

    def user_commands
        puts "--------------------------"
        puts "Please enter a new moive number or 'list' to to see names again or 'back' to go back or 'exit' to exit"
        print "Enter a command: "
    end
end