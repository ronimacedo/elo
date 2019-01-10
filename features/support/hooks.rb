Before do
  @task_page = TaskPage.new
end

Before('@auth') do
  login_page = LoginPage.new
  login_page.load
  login_page.logar('eu@papito.io', '123456')
end

After('@auth') do
  puts 'Deslogando com sucesso'
end
