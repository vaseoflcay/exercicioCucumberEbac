# language: pt
Funcionalidade: fazer o checkout das compras
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro   
Para finalizar minha compra

  Contexto:
    Dado ao acessar a pagina de checkout

  Cenario: todos os campos com asterisco devem ser preenchidos
    Quando ao não preencher pelo menos um dos campos com asterisco
    Então  não cadastrar o usuário

  Cenario: email invalido não deve ser inserido
    Quando ao digitar um email inválido
    Então deve exibir uma mensagem de erro " email invalido"

  Esquema do Cenário: autenticar emails invalido
    Quando ao digital um  <email> invalido
    Então deve exibir uma <mensagem> de alerta

    Exemplos:
      | email                     | mensagem          |
      | "dfsdfsdfebac.br "        | " email invalido" |
      | "wwwfd@ebac.br "          | " email invalido" |
      | "iwantjobs@@ebac.com.br " | " email invalido" |

  Cenario: cadastramento com campos vazios não deve ser validado
    Quando ao tentar fazer o cadastro com campos vazios
    Então deve exibir uma mensagem de alerta " atencao!campo vazio"
