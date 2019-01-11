Before do
  page.current_window.resize_to(1440, 900)
  @task_page = TaskPage.new
end

Before('@auth') do
  login_page = LoginPage.new
  login_page.load
  login_page.logar('eu@papito.io', '123456')
end

After('@auth') do
  visit '/logout'
  expect(
    page.has_css?('#login_form')
  ).to be true
end

After do |scenario|
  nome = scenario.name.gsub(/[^A-Za-z0-9 ]/, '')
  nome = nome.tr(' ', '_').downcase!
  shot = "log/shots/#{nome}.png"
  page.save_screenshot(shot) # Capybara tira o Screenshot
  embed(shot, 'image/png', 'Evidência :)') # Cucumber anexa o Screenshot no report
end
