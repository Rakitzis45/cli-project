class NFLTeam

    @@all = []

    attr_accessor :short_name, :full_name, :wins, :loses, :ties, :percentage, :record, :standing, :owner, :location, :next_game, :established, :conference, :division
   

    def initialize(short_name, full_name, wins, ties, loses, percentage, team_url)
        @short_name = short_name
        @full_name = full_name
        @wins = wins
        @ties = ties
        @team_url = team_url
        @owner = owner
        @location = location
        @next_game = next_game
        @established = established
        save
    end

    def save
        @@all << self
    end

    def team_record
        puts "#{full_name}   #{wins}-#{loses}-#{ties}   #{percentage}"
    end

    def print_standings
        puts "NFL Standings"
        @@all.each_with_index do |team, index|
            puts "#{index + 1} #{review.team_record}"
        end
    end
    
    def get_team_info
    end

    def check_team_info
        if @
        
end