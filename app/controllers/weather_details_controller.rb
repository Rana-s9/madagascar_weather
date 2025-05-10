require 'net/http'
require 'uri'
require 'json'
class WeatherDetailsController < ApplicationController
  def index
    api_token = ENV['WEATHER_API']
    city = 'madagascar'
    url = URI("https://api.openweathermap.org/data/2.5/weather?q=#{city}&appid=#{api_token}&units=metric&lang=ja")

    response = Net::HTTP.get_response(url)
    weather_data = JSON.parse(response.body)

    @weather = {
        # 取得したweather_dataハッシュから特定の気象データを取り出し、適切な形式に変換
        city_name: weather_data["name"],
        temperature: weather_data["main"]["temp"],
        temp_min: weather_data["main"]["temp_min"],
        temp_max: weather_data["main"]["temp_max"],
        humidity: weather_data["main"]["humidity"],
        weather_description: weather_data["weather"][0]["description"]
      }
    
    @weathers = weather_data
  end

  private

  def weather_params
    params.require(:weather_detail).permit(:city_name, :temperature, :temp_min, :temp_max, :humidity, :weather_description)
  end
end