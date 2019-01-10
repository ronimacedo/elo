class LoginPage
  include Capybara::DSL

  def load
    visit 'https://mark7.herokuapp.com'
  end

  def logar(email, senha)
    find('#login_email').set email
    find('#login_password').set senha
    click_button 'Login'
  end

  def alerta
    find('.alert-login')
  end
end
