class Weather
  attr_accessor :kelvin_temp, :description, :code
  
  def initialize(city)
    weather_hash = OpenWeather::Current.city(city)
    @description = weather_hash["weather"][0]["description"]
    @kelvin_temp = weather_hash["main"]["temp"]
    @code = weather_hash["weather"][0]["icon"]
  end

  def current_temp
    return kelvin_to_farenheit(self.kelvin_temp)
  end

  private

  def kelvin_to_farenheit(kelvin)
    return (1.8 * (self.kelvin_temp - 273) + 32).to_i
  end
end