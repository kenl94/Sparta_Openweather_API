require "httparty"
require "json"
require "faker"

class UVIndex

  include HTTParty
  base_uri "http://api.openweathermap.org/data/2.5/uvi/forecast?appid="

  def initialize
    @api_key = '3c1ff560d8e4daf0e9ab05acd785179c'
    @lat = 22
    @lon = 114
    @cnt = 5
  end

  def get_response
    # city = Faker::WorldCup.city
    @city = JSON.parse(self.class.get("#{@api_key}&lat=#{@lat}&lon=#{@lon}&cnt=#{@cnt}").body)
  end

  def print_result
    puts @city
  end

  def get_lat
    @city.first["lat"]
  end

  def get_lon
    @city.first["lon"]
  end

  def get_date
    @city.first["date"]
  end

  def get_value
    @city.first["value"]
  end

  def get_second_date
    @city[1]["date"]
  end


end

checking = UVIndex.new
p checking.get_response
puts checking.print_result
