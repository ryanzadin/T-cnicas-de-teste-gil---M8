            #language: pt

            Funcionalidade: Tela de cadastro - Checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu acesse a pagina de cadastro

            Cenario: Cadastro de usuario
            Quando preenchido todos os campos de cadastro com "asteriscos" (obrigatorios)
            E se por opção o restante dos campos "sem asteriscos" (não obrigatorios)
            Então liberar o botão de "FINALIZAR COMPRA"

            Cenario: Erro de cadastro de Email
            Quando eu digitar o endereço de email com formato "jnjdasdas@ebac.com.br/"
            E o restante dos campos com "asteriscos" (obrigatorios)
            Então deve exibir uma mensagem de erro: "Email invalido!"

            Cenario: Campos de cadastros não preenchidos
            Quando preenchido todos os campos com "asteriscos" (obrigatorios)
            E ainda a campos "sem asteriscos" em branco (não obrigatorios)
            Então deve exibir a mensagem de alerta: "Ainda a campos de cadastro em branco, Deseja continuar assim mesmo?"

            Esquema do Cenario: Cadastro de multiplos usuários
            Quando eu preencher todos os campos com <asteriscos> (obrigatorios)
            E por opção o restante dos campos <sem asteriscos> (não obrigatorios)
            Então deve liberar o <botao> de alerta

            Exemplos:
            | asteriscos   | sem asteriscos   | boato                                                                 |
            | "preenchido" | "preenchido"     | "FINALIZAR COMPRA"                                                    |
            | "preenchido" | "não preenchido" | "Ainda a campos de cadastro em branco, Deseja continuar assim mesmo?" |