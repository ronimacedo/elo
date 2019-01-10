class TaskPage
  include Capybara::DSL

  def ola
    find('#task-board h3')
  end

  # retorna verdairo ou falso
  def verifica_titulo(titulo)
    titulo == find('#task-board h3').text
  end

  def adicionar(task)
    click_button 'Nova Tarefa'
    fill_in 'title', with: task[:title]
    fill_in 'dueDate', with: task[:date]
    add_tags(task[:tags])
    click_button 'Cadastrar'
  end

  def add_tags(tags)
    campo = find('.bootstrap-tagsinput input')
    tags.each do |t|
      campo.set t[:tag]
      campo.send_keys :tab
    end
  end

  def lista
    find('table tbody')
  end

  def trs
    all('table tbody tr')
  end

  def alerta
    find('.alert-warn')
  end

  def busca(titulo)
    find('#search-input').set titulo
    find('#search-button').click
  end
end
