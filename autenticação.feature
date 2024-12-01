# language: pt
Funcionalidade: autenticação na plataforma
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma  
Para visualizar meus pedidos

  Contexto:
   Dado que eu acesse a pagina de login da plataforma
  

  Cenário: dados para para tela de checkout
    Quando quando eu inserir o usuário "joao@ebac.com.br"
    E a senha "senha@123"
    Então deve exibir uma mensagem de "retorno ao checkout" e a página deve ser direcionada para tela de checkout

  Esquema do Cenário:
    Quando eu digitar o <usuário>
    E a <senha>
    Então deve exibir uma <mensagem> de "retorno ao checkout" e  a página deve ser direcionada para tela de checkout

    Exemplos:
      | "usuário                | "senha"           | "mensagem"            |
      | "luis@ebac.com.br"         | "sucodefruta@123" | "retorno ao checkout" |
      | "pedromoraes@ebac.com.br"  | "cqbfuzila@762"   | "retorno ao checkout" |
      | "jonaspimenta@ebac.com.br" | "3321felicidade#" | "retorno ao checkout" |

      Cenário: usuário ou senha inválidos
      Quando eu inserir o usuário "joaaoebac.com"
      E a senha "DFSDFO"
      Então deve exibir uma mensagem de alerta "usuário ou senha inválidos"

      
      
