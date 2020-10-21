class Conference
    @@all = []

    attr_accessor :name

    def initialize(name)
        @name = name
        save
    end

    def save
    @@all << self
    end

    def self.all
        @@all
    end

    # def teams
    #     NFLTeams.all.select{|team| team.conference == self}
    # end

    # def conference_teams
        
    # end

    # def nfc_conference
    #     NFLTeams.all.select {|team| team.conference == "NFC Conference"}
    # end

    def self.find_or_create_by_conference(name)
        conference_finder = self.all.find{|conference| conference.name == name}
        if conference_finder
            return conference_finder
        else
            return self.new(name)
        end
    end

        
end