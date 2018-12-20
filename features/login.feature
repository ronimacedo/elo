#language: pt

Funcionalidade: Login
    Para que eu possa cadastrar e gerenciar minhas tarefas
    Sendo um usuário
    Posso acessar o sistema com meu email e senha
    previamente cadastrados

    Cenario: Usuário autenticado

        Dado que eu acessei o sistema
        Quando faço login com "eu@papito.io" e "123456"
        Então vejo a seguinte mensagem "Olá, Fernando"

    Cenario: Senha incorreta

        Dado que eu acessei o sistema
        Quando faço login com senha incorreta
        Então vejo a seguinte mensagem "Senha inválida."

    Cenario: Usuário não cadastrado

        Dado que eu acessei o sistema
        Quando faço com um email que não está cadastrado
        Então vejo a seguinte mensagem "Usuário não cadastrado."

    Cenario: Email deve obrigatório

        Dado que eu acessei o sistema
        Quando faço login sem informar o email
        Então vejo a mensagem "Email incorreto ou ausente."

    Cenario: Senha deve ser obrigatória

        Dado que eu acessei o sistema
        Quando faço login sem informar a senha
        Então vejo a mensagem "Senha ausente."