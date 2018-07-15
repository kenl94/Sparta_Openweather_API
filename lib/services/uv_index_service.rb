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

end

checking = UVIndex.new
p checking.get_response
p checking.print_result
