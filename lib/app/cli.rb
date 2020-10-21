class CLI

    def initialize
         puts "NFL Team Checker"
         Scraper.new.first_scrape


    end
    def run
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

            sleep(2)            
                puts ""
                run
        elsif user_input == "2"
            puts "Enter Conference"
            puts "1. National Football Conference"
            puts "2. American Football Conference"
            puts "Enter 1 or 2"
            user_input = gets.chomp
            if user_input == "1"
                NFLTeam.print_nfc       
                sleep(2)
                puts ""
                run
            elsif user_input == "2"
                NFLTeam.print_afc 
                sleep(2)
                puts ""
                run
            end  
        else
            run 
        end
    end  
end