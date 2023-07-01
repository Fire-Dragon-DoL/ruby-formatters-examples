require "pathname"
require_relative "formatter"

Dir["./lib/formatter/*.rb"].each do |file|
  require(file)
end
