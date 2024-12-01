Feature: checkout
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro   
Para finalizar minha compra

  Background:
    Given ao acessar a pagina de checkout

  Scenario: todos os campos com asterisco devem ser preenchidos
    When ao não preencher pelo menos um dos campos com asterisco
    Then não cadastrar o usuário

  Scenario: email invalido não deve ser inserido
    When ao digitar um email inválido
    Then deve exibir uma mensagem de erro " email invalido"

  Scenario Outline: autenticar emails invalido
    When ao digital um  <email> invalido
    Then deve exibir uma <mensagem> de alerta

    Examples:
      | email                     | mensagem          |
      | "dfsdfsdfebac.br "        | " email invalido" |
      | "wwwfd@ebac.br "          | " email invalido" |
      | "iwantjobs@@ebac.com.br " | " email invalido" |

  Scenario: cadastramento com campos vazios não deve ser validado
    When ao tentar fazer o cadastro com campos vazios
    Then deve exibir uma mensagem de alerta " atencao!campo vazio"
