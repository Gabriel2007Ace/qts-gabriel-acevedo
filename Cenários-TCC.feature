

Funcionalidade: Exibir e gerenciar pedidos no dashboard da confeitaria

  Como funcionário da confeitaria
  Quero visualizar, atualizar e enviar os pedidos para a cozinha
  Para que os pedidos sejam preparados e retirados na data e hora correta

  Cenário: Novo pedido é recebido e aparece no dashboard
    Dado que um novo contrato de pedido foi recebido com os seguintes dados:
      | Cliente       | Ana Souza                                |
      | DataRetirada  | 2025-08-25                               |
      | HoraRetirada  | 15:00                                    |
      | Itens         | Bolo de chocolate, 12 cupcakes           |
    Quando o sistema processa o contrato
    Então o pedido deve aparecer no dashboard com os seguintes dados:
      | Cliente       | Ana Souza                                |
      | DataRetirada  | 2025-08-25                               |
      | HoraRetirada  | 15:00                                    |
      | Status        | Aguardando envio para cozinha            |

  Cenário: Funcionário envia pedido para a cozinha
    Dado que o pedido de Ana Souza está no dashboard com status "Aguardando envio para cozinha"
    Quando o funcionário clicar em "Enviar para cozinha"
    Então o status do pedido deve mudar para "Em preparo"
    E o pedido deve ser marcado como enviado à cozinha

  Cenário: Atualizar a data e hora de retirada de um pedido antes de enviar para a cozinha
    Dado que o pedido de Ana Souza está no dashboard com os seguintes dados:
      | DataRetirada  | 2025-08-25                               |
      | HoraRetirada  | 15:00                                    |
      | Status        | Aguardando envio para cozinha            |
    Quando o funcionário atualiza a data de retirada para "2025-08-26" e a hora para "14:00"
    Então o pedido deve ser atualizado no dashboard com os seguintes dados:
      | DataRetirada  | 2025-08-26                               |
      | HoraRetirada  | 14:00                                    |
    E o status do pedido deve continuar como "Aguardando envio para cozinha"




    Funcionalidade: Calcular o custo de produção de um doce

  Como confeiteira
  Quero inserir os custos dos ingredientes e insumos
  Para saber quanto custa produzir um doce e definir o preço de venda corretamente

  Cenário: Calcular custo de produção de um bolo de chocolate
    Dado que a confeiteira está em um estado onde o trigo custa R$ 6,50 o quilo
    E o chocolate custa R$ 15,00 por barra
    E o açúcar custa R$ 4,00 por quilo
    E o gás utilizado na produção custa R$ 3,00
    E a confeiteira informa a seguinte quantidade para a receita:
      | Ingrediente | Quantidade | Unidade   |
      | Trigo       | 0.5        | quilo     |
      | Chocolate   | 2          | barras    |
      | Açúcar      | 0.3        | quilo     |
    Quando o sistema calcula o custo de produção
    Então o sistema deve exibir o custo total de produção como R$ 37,45
    E deve sugerir um preço de venda mínimo de R$ 56,18 considerando 50% de margem de lucro

  Cenário: Ingrediente não informado tem custo zero
    Dado que a confeiteira informa apenas:
      | Ingrediente | Quantidade | Unidade |
      | Trigo       | 1          | quilo   |
    E o trigo custa R$ 7,00 por quilo
    Quando o sistema calcula o custo de produção
    Então o sistema deve considerar apenas o custo do trigo
    E o custo total deve ser R$ 7,00

  Cenário: Calcular custo de produção de uma receita com unidades variadas
    Dado que a confeiteira está em um estado onde os preços dos ingredientes são:
      | Ingrediente | Preço Unitário | Unidade      |
      | Leite       | R$ 5,00        | litro        |
      | Ovo         | R$ 0,90        | unidade      |
      | Fermento    | R$ 10,00       | 100 gramas   |
    E o gás utilizado na produção custa R$ 2,50
    E a confeiteira informa a seguinte quantidade para a receita:
      | Ingrediente | Quantidade | Unidade    |
      | Leite       | 200        | mililitros |
      | Ovo         | 3          | unidades   |
      | Fermento    | 10         | gramas     |
    Quando o sistema calcula o custo de produção
    Então o sistema deve exibir o custo total de produção como R$ 7,20
    E deve sugerir um preço de venda mínimo de R$ 10,80 considerando 50% de margem de lucro

