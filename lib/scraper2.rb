require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper
    def initialize
    @base_url = "https://www.nfl.com"
    end

    def first_scrape
        html = open(@base_url + "/standings/league/2020/reg/")
        html_parsed_to_elements = Nokogiri::HTML(html)
        
        all_teams = html_parsed_to_elements.css('tr')
        nfl_teams = all_teams.drop(1)
    
       nfl_teams.each do |teams|
            
                full_name = teams.css('.d3-o-club-fullname').text.strip
                short_name = teams.css('.d3-o-club-shortname').text.strip
                team_url = teams.css('.d3-o-club-info').attr('href').value
                wins = teams.css('td')[1].text.split
                loses = teams.css('td')[2].text.split
                ties = teams.css('td')[3].text.split  
                percentage = teams.css('td')[4].text.strip
                binding.pry
                team = NFLTeam.new(short_name, full_name, wins, loses, percentage, team_url)
            end
        end


    def second_scrape(team, team_url)
        team_html = open(@base_url + team_url)
        team_html_parsed_to_elements = Nokogiri::HTML(team_html)
        team.coach = html_parsed_to_elements.css('div .nfl-c-team-info__info-value')[0].text
        team.stadium = html_parsed_to_elements.css('div .nfl-c-team-info__info-value')[1].text
        team.owners = html_parsed_to_elements.css('div .nfl-c-team-info__info-value')[2].text
        team.established = html_parsed_to_elements.css('div .nfl-c-team-info__info-value')[3].text
        team.next_game = established = html_parsed_to_elements.css('td span')[1].text
        team.standing = html_parsed_to_elements.css('div.nfl-c-team-header__ranking.nfl-u-hide-empty').text
        team.record = html_parsed_to_elements.css('div.nfl-c-team-header__stats.nfl-u-hide-empty').text
        binding.pry
    end
end
 test = Scraper.new
 test.first_scrape

