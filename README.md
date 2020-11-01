# Simulador de consumo de água

## Autores:

| Número | Nome |
|--------|------|
|  20190843  | Hugo Duarte |

## Enquadramento

O projeto "Simulador de consumo de água" permite ao utilizador saber quantos litros de água utiliza por dia.

Desta maneira, o utilizador poderá gerenciar os seus consumos de forma mais eficiente em relação a fins económicos e ambientais. A eficiência é caracterizada pelo combate ao desperdício.
Este projeto enquadra-se no contexto da produção e consumos sustentáveis (objetivo 12 da ONU), uma vez que um consumo mais eficiente irá ajudar a crise de falta de água e diminuir a poluição provocada pelas estaçoes de tratamento de água.

De facto, esta plataforma já existe na G1 (Globo) [1], e já é usada por milhares de pessoas e até hospitais. A diferença desta plataforma para o nosso projeto seria a maior interatividade com o utilizador.



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
Neste caso, o utilizador vai preencher as opções e depois vai ser calculado o seu consumo individual de água por dia. O objetivo é tentar ajustá-lo ao recomendado pela ONU

**Pré-condições:**
- Estar logado.

**Passo a passo:**
1. O utilizador vai preencher as opções.
2. As opções são guardadas.
3. Com as opções guardadas vai ser calculado o consumo invididual de água por dia.
3. Vai aparecer o consumo individual de água por dia do utilizador e dirá se está dentro dos parâmetros que a ONY recomenda.

**Pós-condições:**
- Depois do passo 3, o utilizador pode voltar atrás e mudar alguma das opções ou tentar de novo.
- O valor cal

### Portefólio do utilizador
**Descrição:** \
Neste caso, o utilizador pode ver todas as suas simulacoes feitas anteriormente.

**Pré-condições:**
- Estar logado.

**Passo a passo:**
1. O utilizador clica num menu para ver o seu portefolio.
2. Aprece todas as simulacoes

**Pós-condições:**
- NA.

## Referências:
(substituir todo o texto pelo vosso) \
Usar a norma APA. Para o caso de sites podem usar: \
[1] Autor, A.A. (2000). Título do documento. Acedido em: dia, mês, ano, em: URL. \
(Ano/autor podem ser removidos se não fizerem sentido para o site, o resto é obrigatório)
