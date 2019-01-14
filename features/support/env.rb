require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'

@browser = ENV['BROWSER']

if 'remote'.eql?(@browser)
  Capybara.run_server = false
  Capybara.javascript_driver = :selenium

  caps = Selenium::WebDriver::Remote::Capabilities.chrome(
    'chromeOptions' => {
      'args' => ['--no-default-browser-check']
    }
  )

  Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(
      app,
      browser: :remote,
      url: 'http://selenium:4444/wd/hub',
      desired_capabilities: caps
    )
  end

end

Capybara.configure do |config|
  config.default_driver = if %w[remote firefox].include?(@browser)
                            :selenium
                          elsif 'chrome'.eql?(@browser)
                            :selenium_chrome
                          elsif 'headless'.eql?(@browser)
                            :selenium_chrome_headless
                          else
                            raise 'Nenhum navegdor foi selecionado'
                          end
  config.default_max_wait_time = 3
  config.app_host = 'https://mark7.herokuapp.com'
end
