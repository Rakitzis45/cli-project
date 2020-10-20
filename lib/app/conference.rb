class Conference
    @@all = []

    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end


    def self.all
        @@all
    end

    def teams
        NFLTeams.all.select {|team| team.conference == self}
    end

    def self.find_or_create_by_conference(name)
        #binding.pry
        conference_finder = self.all.find{|conference| conference.name == name}
            if conference_finder
                # binding.pry
                return conference_finder
            else
                # binding.pry
                return self.new(name)
        end
    end

     def self.print_nfc
        puts "National Football Conference"
        binding.pry
        nfc_teams = Conference.all.select{|team| team.name == "NFC Team"}
            puts nfc_teams   
        end
        
end