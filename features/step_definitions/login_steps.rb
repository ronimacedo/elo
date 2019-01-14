Dado('que eu acessei o sistema') do
  visit 'https://mark7.herokuapp.com'
end

Quando('faço login com {string} e {string}') do |email, senha|
  @login_page = LoginPage.new
  @login_page.logar(email, senha)
end

Então('vejo a seguinte mensagem {string}') do |mensagem|
  expect(@task_page.ola.text).to eql mensagem
end

Então('vejo a seguinte mensagem de alerta {string}') do |mensagem_alerta|
  expect(@login_page.alerta.text).to eql mensagem_alerta
end
