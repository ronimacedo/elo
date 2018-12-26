class TaskPage
  include Capybara::DSL

  def ola
    find('#task-board h3')
  end

  # retorna verdairo ou falso
  def verifica_titulo(titulo)
    titulo == find('#task-board h3').text
  end
end
