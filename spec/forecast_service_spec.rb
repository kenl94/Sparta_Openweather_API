require 'spec_helper'

describe 'OpenWeather API test' do
  context "testing the forecast service" do

    before(:all) do
      @city = OpenweatherAPI.new.forecast
      @city.get_response
    end

    it "should return humidity to be a Integer" do
      expect(@city.get_humidity).to be_a Integer
    end

    it "should return sea level as a float" do
      expect(@city.get_sea_level).to be_a Float
    end

    it "should return main to be a Hash" do
      expect(@city.get_main).to be_a Hash
    end

    it "should return descripton as a string" do
      expect(@city.get_description).to be_a String
    end

    it "should return city name as Paris" do
      expect(@city.get_city_name).to eql "Paris"
    end
    it "should return country name as FR" do
      expect(@city.get_country).to eql "FR"

    end
    it "should return humidity levels from between 0 to 100" do
      expect(@city.get_humidity).to be_between(0,100)
    end
    it "should return code as 200" do
      expect(@city.get_code).to eql "200"
    end

    it "should return main as clear, clouds or rain" do
      expect(@city.get_weather).to eql("Rain").or eql("Clear").or eql("Clouds")
    end

    it "should return windspeed as a integer" do
      expect(@city.get_wind_speed).to be_a Integer
    end

    it "should return temperature as a Float" do
      expect(@city.get_temp).to be_a Float
    end

    it "should return min-temp as a float" do
      expect(@city.get_min_temp).to be_a Float
    end

    it "should return max-temp as a float" do
      expect(@city.get_max_temp).to be_a Float
    end

    it "should return list as an array" do
      expect(@city.get_list).to be_a Array
    end

    it "return coordinates for lat and lon to be a Hash" do
      expect(@city.get_coord).to be_a Hash
    end
  end

end
