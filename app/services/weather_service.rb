# app/services/weather_service.rb
require 'httparty'

class WeatherService
  BASE_URL = "https://api.openweathermap.org/data/2.5/weather"

  def self.get_weather(city)
    response = HTTParty.get(BASE_URL, query: {
      q: city,
      units: 'metric',
      appid: ENV['OPENWEATHER_API_KEY']
    })

    response.success? ? response.parsed_response : { "message" => "Not found" }
  end
end
