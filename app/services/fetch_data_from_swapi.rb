class FetchDataFromSwapi
def initialize(name, id)
@name = name
@id = id
end

def call
response = HTTParty.get("https://swapi.dev/api/#{@name}/#{@id}/")
response.parsed_response
end
end