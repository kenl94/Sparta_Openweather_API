require 'spec_helper'

describe 'OpenWeather API test' do
  context "testing the forecase service" do

    before(:all) do
      @city = OpenweatherAPI.new.uv_index
      @city.get_response
    end

    it "should return latitude as a integer" do
      expect(@city.get_lat).to be_a Integer
    end

    it "should return 22 as the latitude" do
      expect(@city.get_lat).to eql 22
    end

    it "should return longitude as a integer" do
      expect(@city.get_lon).to be_a Integer
    end

    it "should return 114 as the longitude" do
      expect(@city.get_lon).to eql 114
    end

    it "should return 8 as the length of the date" do
      expect(@city.get_date.size).to eql 8
    end

    # it "should return the first forecast uv dat as 1531742400" do
      # expect(@city.get_date).to eql 1531742400
    # end

    it "should return value as a float" do
      expect(@city.get_value).to be_a Float
    end

    it "should return value to be between 10.00 and 20.00" do
      expect(@city.get_value).to be_between(10.00,20.00)
    end

    # it "should return second date to be 1531828800" do
      # expect(@city.get_second_date).to eql 1531828800
    # end

  end

end
