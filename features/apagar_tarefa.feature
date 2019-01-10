#language: pt

Funcionalidade: Apagar tarefas
    Para que eu possa manter meu painel atualizado
    Sendo um usuário que possui uma tarefa indesejada
    Posso remover uma tarefa

    Cenario: Apagar uma tarefa

        Dado que "Estudar Java" é uma tarefa indesejada
        Quando eu solicito a exclusão desta tarefa
        E confirmo esta solicitação
        Então está tarefa não deve ser exibida na lista

    Cenario: Deixa queto

        Dado que "Comprar Ketchup" é uma tarefa indesejada
        Quando eu solicito a exclusão desta tarefa
        Mas eu cancelo a solicitação
        Então esta tarefa permanece na lista




