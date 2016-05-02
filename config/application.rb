require File.expand_path('../boot', __FILE__)

require 'rails/all'
# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

  
module Myblog
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end


# g = [200,250,120,100,60,90,1000,1200,530,210,120,100,100,140,170,200,160]
 # kind = ["dinner", "lunch", "Living Expense", "Some books", "drink", "Basic Expense", "Movie and Food", "Oil", "dinner", "lunch", "Food", "breakfast", "dinner", "lunch"]
 # Date.new(2016,4,1).upto(Date.new(2016,4,26)) do |x|