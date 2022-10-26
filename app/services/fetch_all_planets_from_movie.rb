# frozen_string_literal: true

# class FetchAllPlanetsFromMovie

#   def initialize(movie)
#     @movie = movie
#   end

#   def call
#     planets_ids = @movie['planets'].map { |planet| planet.split('/').last } # parse all the planets ids from movie
#     planets = FetchDataFromSwapi.new('planets', '').call # fetch all the planets from swapi
#     all_planets = fetch_all_planets(planets['results'], planets['next']) # Recursively fetch all the planets 

#     all_planets.select { |planet| planet['url'].split('/').last.in?(planets_ids)} # from 60 planets select only the 3 from planets_ids
#   end

#   def fetch_all_planets(planets, next_page = nil)
#     return planets if next_page.nil?

#     next_planets = fetch_planets(next_page)
#     planets += next_planets['results']
#     fetch_all_planets(planets, next_planets['next'])
#   end

#   def fetch_planets(endpoint)
#     planets = HTTParty.get(endpoint)
#     planets.parsed_response
#   end
# end
