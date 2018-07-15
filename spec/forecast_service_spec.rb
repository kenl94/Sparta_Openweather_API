require 'spec_helper'

describe 'OpenWeather API test' do
  context "testing the forecase service" do

    before(:all) do
      @city = OpenweatherAPI.new.forecast
      @city.get_response
    end

    it "should return humidity as a integer" do
      # expect(@city.)
    end

  end

end
