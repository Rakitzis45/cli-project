class CLI
    def run
        puts "NFL Team Checker"
        Scraper.new.first_scrape
        
        puts "What you you like view?"
        puts "1. NFL Teams"
        puts "2. List teams by Conference"
        puts "Enter 1 or 2"
        user_input = gets.chomp
        if user_input == "1"
            NFLTeam.print_teams
            puts "Enter team number to get more info about the team"
            team_select = gets.chomp
            select_index = team_select.to_i - 1
            NFLTeam.all[select_index].print_team_info
        elsif user_input == "2"
            puts "Enter Conference"
            puts "1. National Football Conference"
            puts "2. American Football Conference"
            puts "Enter 1 or 2"
            user_input = gets.chomp
            
            #binding.pry

            if user_input == "1"
                nfc_teams << NFLTeam.all.select do |team|
                team.conference.name == "NFC Team"          
               end 
                nfc_teams.each_with_index do |team, index|
                    puts "#{index} #{team.full_name}"
                    puts "Enter team number to get more info about the team"   
                end
                    team_select = gets.chomp
                    select_index = team_select.to_i - 1
                    NFLTeam.nfc_teams[select_index].print_team_info
            elsif user_input == "2"
                puts 'American Football Conference'
                afc_conference = NFLTeam.all.select do |team|
                    team.conference.name == "AFC Team"
                end
            end
        else
            # make a way to return to top if not a valid pick
        end

    end
end