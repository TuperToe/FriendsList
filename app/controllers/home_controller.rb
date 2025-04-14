class HomeController < ApplicationController


  def index
  end

  def about
    @city = params[:city] || "Tokyo"
@weather = WeatherService.get_weather(@city)
  end

  def friends
  end
  
  
end
