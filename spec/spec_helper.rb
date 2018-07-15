require 'rspec'
require_relative'../lib/OpenweatherAPI.rb'

RSpec.configure do |config|
  config.color
  config.formatter = :documentation
end
