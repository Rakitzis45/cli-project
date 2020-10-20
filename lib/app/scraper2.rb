require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper

    attr_accessor :base_url
    def initialize
    @base_url = "https://www.nfl.com"
    end

    def nfl_scrape
        html = open(@base_url + "/standings/conference/2020/reg/")
        html_parsed_to_elements = Nokogiri::HTML(html)

        
        
        standings_table = html_parsed_to_elements.css('div.d3-o-table--horizontal-scroll')
        nfc_table = standings_table[0]
        afc_table = standings_table[1]
        nfc_teams = nfc_table.css('tr').drop(1)
        afc_teams = afc_table.css('tr').drop(1)

        # nfc = 
        # afc = Conference.new (afc_table.css('th')[0].text.strip)
            
        nfc_teams.each do |team|
                
                full_name = team.css('.d3-o-club-fullname').text.strip
                short_name = team.css('.d3-o-club-shortname').text.strip
                team_url = team.css('.d3-o-club-info').attr('href').value
                win_count =  team.css('td')[1].text.to_i
                lose_count = team.css('td')[2].text.to_i
                tie_count = team.css('td')[3].text.to_i
                percentage = team.css('td')[4].text.to_f
                #conference = Conference.new(nfc_table.css('th')[0].text.strip)
                binding.pry
                team = NFLTeam.new(short_name, full_name, win_count, lose_count, tie_count, percentage, team_url)#, conference)
                
        end
        
        
   
    end
end
test = Scraper.new
test.nfl_scrape


nfc_table.css('tr')
