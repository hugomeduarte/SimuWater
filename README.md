# Simulador de consumo de água

## Autores:

| Número | Nome |
|--------|------|
|  20190843  | Hugo Duarte |

## Enquadramento
(substituir todo o texto pelo vosso) \
Descrição do contexto do projeto numa perspetiva de produto, i.e. sem descrições técnicas de implementação. \
Explicar o que é o projeto/produto \
Descrever o contexto em que o projeto está inserido:
- Referências a sites ou documentos que deem mais informação sobre o contexto
- Referências a outros produtos similares
- Ambas os tipos de referências deve ser introduzidas nesta secção indicando um número que corresponde a uma entrada na secção de “Referências”
Explicar porque o projeto é importante nesse contexto

## Casos de utilização:

### Core
**Descrição:** \
Neste caso, o utilizador vai realizar o login da sua conta para puder acessar ao seu simulador de consumo de água. Se ainda não tiver uma conta, pode-se registrar para depois ter acesso ao mesmo.

**Pré-condições:**
- Antes de realizar o login, deverá registrar uma conta antes.

**Passo a passo:**
1. O utilizador vai preencher a ficha de login. Caso este ainda não tenha uma conta, deverá clicar no botão de registrar e prencher a ficha do mesmo.
2. O pedido é guardado.
3. Se o pedido guardado corresponder com o que está registado na base de dados, o utilizador é redirecionado para o simulador.

**Pós-condições:**
- Se os dados de acesso estiverem corretos, o utilizador é redirecionado para o simulador.
- Se os dados de acesso estiverem incorretos, aparece um warning para o utilizador saber que os dados que colocou estão incorretos.
- Se os dados de acesso forem de uma conta que não está registrada, aparece um warning para o utilizador saber que não existe essa conta.

### Simulação do consumo de água
**Descrição:** \
Neste caso, o utilizador vai responder a um questionário

**Pré-condições:**
- Antes de realizar o login, deverá registrar uma conta antes.

**Passo a passo:**
1. O utilizador vai preencher a ficha de login. Caso este ainda não tenha uma conta, deverá clicar no botão de registrar e prencher a ficha do mesmo.
2. O pedido é guardado.
3. Se o pedido guardado corresponder com o que está registado na base de dados, o utilizador é redirecionado para o simulador.

**Pós-condições:**
- Se os dados de acesso estiverem corretos, o utilizador é redirecionado para o simulador.
- Se os dados de acesso estiverem incorretos, aparece um warning para o utilizador saber que os dados que colocou estão incorretos.
- Se os dados de acesso forem de uma conta que não está registrada, aparece um warning para o utilizador saber que não existe essa conta.

## Referências:
(substituir todo o texto pelo vosso) \
Usar a norma APA. Para o caso de sites podem usar: \
[1] Autor, A.A. (2000). Título do documento. Acedido em: dia, mês, ano, em: URL. \
(Ano/autor podem ser removidos se não fizerem sentido para o site, o resto é obrigatório)
