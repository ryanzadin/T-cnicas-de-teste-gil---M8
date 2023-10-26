            #language: pt

            Funcionalidade: Tela de login
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a pagina de atentificação do site

            Cenario: Autentificação valida
            Quando eu digitar o usuario "ryan@ebac.com.br"
            E a senha "senha@1234"
            Então deve ser direcionado para a "tela de checkout"

            Cenario: Usuário com senha invalida
            Quando eu digitar o usuario "ryan@ebac.com.br"
            E a senha "123456789"
            Então deve exibir uma mensagem de alerta: "Usuário ou senha inválido"

            Esquema do Cenario: Autentificar multiplos usuários
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve exibir a <mensagem> de sucesso

            Exemplos:
            | usuario            | senha        | mensagem    |
            | "ryan@ebac.com.br" | "senha@1234" | "Olá Ryan!" |
            | "joao@ebac.com.br" | "senha@1234" | "Olá João!" |
