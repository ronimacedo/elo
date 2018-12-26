#language:pt

Funcionalidade: Criar Tarefas
    Para que eu possa gerenciar minhas atividades
    Sendo um usuário cadastrado
    Posso criar novas Tarefas

    Cenario: Nova tarefa

        Dado que "Estudar Ruby" é a minha nova tarefa
        E esta tarefa deve ser concluída em "18/02/2019"
        Quando eu faço o cadastro desta tarefa
        Então vejo este registro na lista de Tarefas

    Cenario: Tarefa duplicada

        Dado que "Estudar Linux" é a minha nova tarefa
        E esta tarefa deve ser concluída em "20/02/2019"
        Mas esta tarefa já foi cadastrada
        Quando eu faço o cadastro desta tarefa
        Então devo ver a mensagem de alerta "Tarefa duplicada."