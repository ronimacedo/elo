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

    @tentativa
    Esquema do Cenário: Tentando logar

        Dado que eu acessei o sistema
        Quando faço login com "<email>" e "<senha>"
        Então vejo a seguinte mensagem "<alerta>"

        Exemplos: 
        | email         | senha  | alerta                                 |
        | eu@papito.io  | abc123 | Senha inválida.                        |
        | 404@papito.io | abc123 | Usuário não cadastrado.                |
        |               | abc123 | Email incorreto ou ausente.            |
        | eu@papito.io  |        | Senha ausente.                         |
        | eu@papito.io  | 12345  | Senha deve ter no mínimo 6 caracteres. |
