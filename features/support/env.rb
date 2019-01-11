require 'capybara'
require 'capybara/cucumber'

Capybara.configure do |config|
  config.default_driver = :selenium_chrome_headless
  config.default_max_wait_time = 3
  config.app_host = 'https://mark7.herokuapp.com'
end
