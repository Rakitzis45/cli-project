class NFLTeam

    @@all = []
    @@nfc_teams = []
    @@afc_teams = []
    
    attr_accessor :short_name, :full_name, :win_count, :lose_count, :tie_count, :percentage, :record, :standing, :owners, :coach, :stadium, :next_game, :established, :conference, :division
   
    def initialize(short_name, full_name, win_count, tie_count, lose_count, percentage, team_url, conference_instance)
        @short_name = short_name
        @full_name = full_name
        @win_count = win_count
        @tie_count = tie_count
        @lose_count = lose_count
        @percentage = percentage
        @team_url = team_url
        @conference = conference_instance
        @@all << self
    end

    def self.all
        @@all
    end

    def self.nfc_teams
        @@nfc_teams
    end

    def self.afc_teams
        @@afc_teams
    end
    
    def team_record
        "#{full_name}   [#{win_count}-#{lose_count}-#{tie_count}]  #{percentage}"
    end

    def self.print_teams
        puts "NFL Teams"
        @@all.each_with_index do |team, index|
            puts "#{index+1} #{team.team_record}"
            puts "******************************"
        end
    end

    def self.print_nfc
        NFLTeam.all.select do |team|
        NFLTeam.nfc_teams << team if team.conference.name == "NFC Team"
        end 
            puts "National Football League"
            puts "_________________________________"
        @@nfc_teams.each_with_index do |team, index|
            
            puts "#{index+1} #{team.team_record}"
            puts "_________________________________"
        end
            puts "Enter team number to get more info about the team"
            team_select = gets.chomp
            select_index = team_select.to_i - 1
            NFLTeam.nfc_teams[select_index].print_team_info   
    end

    def self.print_afc
            NFLTeam.all.select do |team|
            NFLTeam.afc_teams << team if team.conference.name == "AFC Team"
            end 
            @@afc_teams.each_with_index do |team, index|
                puts "#{index+1} #{team.team_record}"
                puts "******************************"
            end
                puts "Enter team number to get more info about the team"
                team_select = gets.chomp
                select_index = team_select.to_i - 1
                NFLTeam.afc_teams[select_index].print_team_info 
        end
    
    def print_team_info
        check_team_info
        puts "#{full_name}: #{@standing} -- #{@record} "
        puts "Owners: #{@owners}"
        puts "Team Established: #{@established}"
        puts "Stadium: #{@stadium}"
        puts "Head Coach: #{@coach}"
        puts "Next Game is against the #{@next_game}"
    end

    def check_team_info
        if @next_game === nil
            hash = Scraper.new.second_scrape(self, @team_url)
        end
    end  

   

end




