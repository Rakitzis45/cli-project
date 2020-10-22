require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper

    attr_accessor :base_url
    def initialize
    @base_url = "https://www.nfl.com"
    end

    def first_scrape
        html = open(@base_url + "/standings/conference/2020/reg/")
        html_parsed_to_elements = Nokogiri::HTML(html)

        
        
        standings_table = html_parsed_to_elements.css('div.d3-o-table--horizontal-scroll')
        nfc_table = standings_table[0]
        afc_table = standings_table[1]
        nfc_teams = nfc_table.css('tr').drop(1)
        afc_teams = afc_table.css('tr').drop(1)

        
            
        nfc_teams.each do |team|
                
                full_name = team.css('.d3-o-club-fullname').text.strip
                short_name = team.css('.d3-o-club-shortname').text.strip
                team_url = team.css('.d3-o-club-info').attr('href').value
                win_count =  team.css('td')[1].text.to_i
                lose_count = team.css('td')[2].text.to_i
                tie_count = team.css('td')[3].text.to_i
                percentage = team.css('td')[4].text.to_f
                conference = nfc_table.css('th')[0].text.strip
                
                conference_instance = Conference.find_or_create_by_conference(conference)
                
                team = NFLTeam.new(short_name, full_name, win_count, lose_count, tie_count, percentage, team_url, conference_instance) 
        end

        afc_teams.each do |team|
                
            full_name = team.css('.d3-o-club-fullname').text.strip
            short_name = team.css('.d3-o-club-shortname').text.strip
            team_url = team.css('.d3-o-club-info').attr('href').value
            win_count =  team.css('td')[1].text.to_i
            lose_count = team.css('td')[2].text.to_i
            tie_count = team.css('td')[3].text.to_i
            percentage = team.css('td')[4].text.to_f
            conference = afc_table.css('th')[0].text.strip

            conference_instance = Conference.find_or_create_by_conference(conference)
            
            team = NFLTeam.new(short_name, full_name, win_count, lose_count, tie_count, percentage, team_url, conference_instance)
        end

        def second_scrape(team, team_url)
            team_html = open(@base_url + team_url)
            html_parsed_to_elements = Nokogiri::HTML(team_html)
            team.coach = html_parsed_to_elements.css('div .nfl-c-team-info__info-value')[0].text
            team.stadium = html_parsed_to_elements.css('div .nfl-c-team-info__info-value')[1].text
            team.owners = html_parsed_to_elements.css('div .nfl-c-team-info__info-value')[2].text
            team.established = html_parsed_to_elements.css('div .nfl-c-team-info__info-value')[3].text
            team.next_game = established = html_parsed_to_elements.css('td span')[1].text
            team.standing = html_parsed_to_elements.css('div.nfl-c-team-header__ranking.nfl-u-hide-empty').text
            team.record = html_parsed_to_elements.css('div.nfl-c-team-header__stats.nfl-u-hide-empty').text
        end
        
    end
end

