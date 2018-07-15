require 'spec_helper'

describe 'OpenWeather API test' do
  context "testing the forecase service" do

    before(:all) do
      @city = OpenweatherAPI.new.uv_index
      @city.get_response
    end

    it "should return humidity as a integer" do

    end

  end

end
