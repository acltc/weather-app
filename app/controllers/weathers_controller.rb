class WeathersController < ApplicationController
  require 'open_weather'

  def index
    weather_hash = OpenWeather::Current.city("Chicago, IL")
    @description = weather_hash["weather"][0]["description"]
    @current_temp = (1.8 * (weather_hash["main"]["temp"] - 273) + 32).to_i 
    @weather_code = weather_hash["weather"][0]["icon"]
  end
end
