class Wins
    @@all = []
    def initialize(number)
        @number
        save
    end
    
    def save 
        @@all << self
    end

    def self.all
        @@all
    end

    def teams
        NFLTeams.all.select {|team| team.wins == self}
    end

    def self.find_or_create_by_wins(win_count)
        win_finder = self.all.find do |wins|
            wins.win_count == win_count
            if win_finder
                return win_finder
            else
                return self.new(win_count)
            end
        end
    end
end