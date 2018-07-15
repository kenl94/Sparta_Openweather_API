require "spec_helper"

describe 'OpenWeather API test' do
  context "testing the single city weather service" do

    before(:all) do
      @city = OpenweatherAPI.new.single_city_weather
      @city.get_response
    end

    it "should return a weather as an Array" do
      expect(@city.get_weather).to be_a Array
    end

    it "should return description as a string" do
      expect(@city.get_description).to be_a String
    end
    it "should return humidity as a integer" do
      expect(@city.get_humidity).to be_a Integer
    end
    it "should return name as a string" do
      expect(@city.get_name).to be_a String
    end

    it "should return London when calling name" do
      expect(@city.get_name).to eql "London"
    end

    it "should return minimum temperature as a flora" do
      expect(@city.temp_min).to be_a Float
    end

    it "should return maximum temperature as a float" do
      expect(@city.temp_max).to be_a Float
    end

    it "should return visitibility as a integer" do
      expect(@city.get_visibility).to be_a Integer
    end

    it "should return country as a GB" do
      expect(@city.get_country).to eql "GB"
    end

    it "should return sunrise as a integer" do
      expect(@city.sunrise).to be_a Integer
    end

    it "should return sunset as a integer" do
      expect(@city.sunset).to be_a Integer
    end

    it "should return 200 as code number" do
      expect(@city.get_code).to eql 200
    end

    it "should return code as a integer" do
      expect(@city.get_code).to be_a Integer
    end

    it "should return coord as a hash" do
      expect(@city.get_coord).to be_a Hash
    end

    it "should return the sys to be a hash" do
      expect(@city.get_sys).to be_a Hash
    end

  end
end
