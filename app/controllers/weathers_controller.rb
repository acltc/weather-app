class WeathersController < ApplicationController
  require 'open_weather'

  def index
    weather = Weather.new(OpenWeather::Current.city("Chicago, IL"))
    @description = weather.description
    @weather_code = weather.code
    @current_temp = weather.current_temp
  end
end
