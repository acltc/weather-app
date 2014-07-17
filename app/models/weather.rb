class Weather

  attr_accessor :description, :temp

  def initialize(city_state)
    @weather_hash = OpenWeather::Current.city(city_state)
    @description = @weather_hash["weather"][0]["description"]
    @temp = convert_to_farenheit(@weather_hash["main"]["temp"])
    @weather_code = @weather_hash["weather"][0]["icon"]
  end

  def image_url
    return "http://openweathermap.org/img/w/#{@weather_code}.png"
  end

  def convert_to_farenheit(kelvin_temp)
    return (1.8 * (kelvin_temp - 273) + 32).to_i
  end

end