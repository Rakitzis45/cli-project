class CLI
    def run
        puts "NFL Team Checker"
        Scraper.new.first_scrape
        puts "What you you like view?"
        puts "1. NFL Teams"
        puts "2. List teams by Wins"
        puts "Enter 1 or 2"
        user_input = gets.chomp
        if user_input == "1"
            #NFLTeam.print_standings
            puts "Enter team number to get more info about the team"
            team_select = gets.chomp
            select_index = team_select.to_i - 1
            NFLteam.all[select_index].print_team_info
        elsif user_input == "2"
            
        end

    end
end