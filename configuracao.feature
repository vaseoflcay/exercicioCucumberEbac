#language: pt

Funcionalidade: Configurar produtos
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho


Cenário: Seleção obrigatória
Dado que eu acesse a página para seleção das características do produto
Quando eu não selecionar nada nos itens de "cor" ou "tamanho" ou "quantidade"
Então deve exibir uma mensagem de " a seleção das características do produto é obrigatória"

Cenário: Quantidade máxima de produtos por venda
Dado que eu acesse a página que apresente a quantidade de produtos no carrinho
Quando eu selecionar mais de 10 produtos para a venda
Então deve exibir uma mensagem de "apenas 10 produtos por venda é autorizado"


Esquema do Cenário: quantidade de produtos por venda
Dado que eu acesse a página que apresente a quantidade de produtos no carrinho
Quando eu selecionar um numero <x> maior que 10
Então deve exibir uma <mensagem> de aviso

Exemplos:

|produtos |mensagem |
| "50" | "apenas 10 produtos por venda é autorizado " |
| "10000" | "apenas 10 produtos por venda é autorizado " |
| "65" | "apenas 10 produtos por venda é autorizado " |


Cenário:
Dado que eu acesse a página do carrinho da loja
Quando eu clicar no botão "limpar"
Então deve voltar ao formato original, ou seja, sem produtos

