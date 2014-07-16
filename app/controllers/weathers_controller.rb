class WeathersController < ApplicationController

  def index
    weather = Weather.new("Chicago, IL")
    @description = weather.description
    @weather_code = weather.code
    @current_temp = weather.current_temp
  end
end
