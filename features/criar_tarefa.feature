#language:pt

Funcionalidade: Criar Tarefas
    Para que eu possa gerenciar minhas atividades
    Sendo um usuário cadastrado
    Posso criar novas Tarefas

    @new_task @auth
    Cenario: Nova tarefa

        Dado que "Estudar Ruby" é a minha nova tarefa
        E esta tarefa deve ser concluída em "18/02/2019"
        E quero taguear esta tarefa com:
            | tag         |
            | ruby        |
            | programação |
            | bundle      |
        Quando eu faço o cadastro desta tarefa
        Então vejo este registro na lista de Tarefas

    @dup @auth
    Cenario: Tarefa duplicada

        Dado que "Estudar Linux" é a minha nova tarefa
        E esta tarefa deve ser concluída em "20/02/2019"
        Mas esta tarefa já foi cadastrada
        Quando eu faço o cadastro desta tarefa
        Então devo ver a mensagem de alerta "Tarefa duplicada."
        E devo ver somente 1 registro