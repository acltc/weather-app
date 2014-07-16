class WeathersController < ApplicationController

  def index
    @weather = Weather.new("Chicago, IL")
  end
end
