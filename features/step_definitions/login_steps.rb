Dado('que eu acessei o sistema') do
  visit 'https://mark7.herokuapp.com'
end

Quando('faço login com {string} e {string}') do |email, senha|
  find('#login_email').set email
  find('#login_password').set senha
  click_button 'Login'
end

Então('vejo a seguinte mensagem {string}') do |mensagem|
  expect(page).to have_content mensagem
  sleep 1
end
