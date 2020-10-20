class NFLTeam

    @@all = []

    attr_accessor :short_name, :full_name, :win_count, :lose_count, :tie_count, :percentage, :record, :standing, :owners, :coach, :stadium, :next_game, :established, :conference, :division
   

    def initialize(short_name, full_name, win_count, tie_count, lose_count, percentage, team_url, conference)
        @short_name = short_name
        @full_name = full_name
        @win_count = win_count
        @tie_count = tie_count
        @lose_count = lose_count
        @percentage = percentage
        @team_url = team_url
        @conference = conference
        save
    end

    def print_standings
        standings = @@all.sort_by(&:@percentage)
        binding.pry
    
    end

    def save
       @@all << self
    end

    def self.all
        @@all
    end
    
    def team_record
        puts "#{full_name}   [#{win_count}-#{lose_count}-#{tie_count}]  #{percentage}"
    end

    def self.print_teams
        puts "NFL Teams"
        @@all.each_with_index do |team, index|
            puts "#{index+1}" 
            puts "#{team.team_record}"
            
        end
    end

    def self.print_nfc
        puts "National Football Conference"
        #
        
        
    end

    # def print_afc
    # end
    
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

