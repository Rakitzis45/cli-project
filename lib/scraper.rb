require 'nokogiri'
require 'open-uri'
require 'pry'


class Scraper
    
    def get_page
        html_parsed_to_elements = Nokogiri::HTML(open('https://www.nfl.com/teams/pittsburgh-steelers/'))
        coach = html_parsed_to_elements.css('div .nfl-c-team-info__info-value')[0].text
        stadium = html_parsed_to_elements.css('div .nfl-c-team-info__info-value')[1].text
        owners = html_parsed_to_elements.css('div .nfl-c-team-info__info-value')[2].text
        established = html_parsed_to_elements.css('div .nfl-c-team-info__info-value')[3].text
        next_game = established = html_parsed_to_elements.css('td span')[1].text
        standing = html_parsed_to_elements.css('div.nfl-c-team-header__ranking.nfl-u-hide-empty').text
        record = html_parsed_to_elements.css('div.nfl-c-team-header__stats.nfl-u-hide-empty').text
            
    end 

end

test = Scraper.new
test.get_page