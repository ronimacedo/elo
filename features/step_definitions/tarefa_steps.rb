require 'faker'

Dado('que {string} é a minha nova tarefa') do |titulo|
  @new_task = {
    title: "#{titulo} - #{Faker::Lorem.characters(5)}",
    date: nil,
    tags: []
  }
end

Dado('esta tarefa deve ser concluída em {string}') do |data|
  @new_task[:date] = data
end

Dado('quero taguear esta tarefa com:') do |table|
  @new_task[:tags] = table.hashes
end

Dado('esta tarefa já foi cadastrada') do
  @task_page.adicionar(@new_task)
end

Quando('eu faço o cadastro desta tarefa') do
  @task_page.adicionar(@new_task)
end

Então('vejo este registro na lista de Tarefas') do
  expect(@task_page.lista).to have_content @new_task[:title]
end

Então('devo ver a mensagem de alerta {string}') do |mensagem|
  expect(@task_page.alerta.text).to eql mensagem
end

Então('devo ver somente {int} registro') do |quantidade|
  click_link 'Voltar'
  @task_page.busca(@new_task[:title])
  expect(@task_page.trs.size).to eql quantidade
end
