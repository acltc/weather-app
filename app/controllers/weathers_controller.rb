class WeathersController < ApplicationController
  require 'open_weather'

  def index
    @weather = Weather.new("Chicago, IL")
  end
end
