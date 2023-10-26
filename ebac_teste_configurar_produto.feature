            #language: pt

            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            e escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu acesse a tela do produto

            Cenario: Seleção do produto desejado
            Quando selecionado o tamanho "XS" e a cor "ORANGE"
            E a quantidade "2"
            Então deve disponibilizar a botão de "COMPRAR"


            Cenario: Quantidade acima do permitido
            Quando selecionado o tamanho "M" e a cor "RED"
            E a quantidade "12"
            Então não deve disponibilizar a botão de "COMPRAR"

            Cenario: Botão limpar
            Quando selecionado o tamanho "L" e a cor "BLUE"
            E a quantidade "5"
            Então clicar no botão "limpar" deve voltar ao estado origal do produto

            Esquema do Cenario: Fazer multiplas compras
            Quando selecionado o <tamanho> e a <cor>
            E a <quantidade>
            Então deve disponibilizar o <botao> de COMPRAR

            Exemplos:
            | tamanho | cor      | quantidade | botao     |
            | "M"     | "RED"    | "1"        | "COMPRAR" |
            | "XS"    | "ORANGE" | "4"        | "COMPRAR" |
            | "X"     | "BLUE"   | "2"        | "COMPRAR" |
            | "XL"    | "BLUE"   | "1"        | "COMPRAR" |
            | "L"     | "RED"    | "5"        | "COMPRAR" |
            | "S"     | "ORANGE" | "8"        | "COMPRAR" |
