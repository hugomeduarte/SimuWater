# Simulador de consumo de água

## Autores:

| Número | Nome |
|--------|------|
|  20190843  | Hugo Duarte |

## Enquadramento
Este projeto enquadra-se no contexto da produção e consumos sustentáveis (objetivo 12 da ONU), uma vez que um consumo mais eficiente irá ajudar a crise de falta de água e diminuir a poluição provocada pelas estações de tratamento de água visto que, irá ser tratada uma menor quantidade da mesma.

O projeto "Simulador de consumo de água" permite ao utilizador saber quantos litros de água utiliza por dia.
Desta maneira, o utilizador poderá gerenciar os seus consumos de forma mais eficiente em relação a fins económicos e ambientais. A eficiência é caracterizada pelo combate ao desperdício.

De facto, esta plataforma já existe na G1 (Globo) [1], já sendo usada por milhares de pessoas e até hospitais. A diferença desta plataforma para o nosso projeto seria a maior interatividade com o utilizador baseado num portefólio que permite acompanhar os consumos de água do utilizador até à data, comparando-os com os valores recomendados pela ONU [2].
Este simulador conta também com a demonstração de dicas onde os utilizadores podem ficar informados acerca de potenciais poupanças dada a má a racionalização de água.


## Casos de utilização:

### Core
**Descrição:** \
Neste caso, o utilizador vai realizar o login da sua conta para puder aceder ao seu simulador. Caso ainda não tenha uma conta, pode registar-se.

**Pré-condições:**
- Antes de realizar o login, deverá registar uma conta primeiro.

**Passo a passo:**
1. O utilizador vai preencher a ficha de login ou a ficha de registo caso este ainda não possua uma conta;
2. O pedido é guardado;
3. Se o pedido guardado corresponder com o que está registado na base de dados, o utilizador é redirecionado para o simulador.

**Pós-condições:**
- Se os dados de acesso estiverem incorretos, aparecerá um aviso para saber que os dados que colocou estão incorretos.
- Se os dados de acesso forem de uma conta que não está registada, o utilizador será avisado de que não existe essa conta.

### Simulador de consumo de água
**Descrição:** \
Neste caso, o utilizador vai preencher um questionário para depois ser calculado o seu consumo individual de água por dia. O objetivo é tentar ajustar o seu consumo ao recomendado pela ONU.                 
Este caso é semelhante a [1].

**Pré-condições:**
- Estar logado.

**Passo a passo:**
1. O utilizador preenche um questionário;
2. Com o questionário submetido, irá ser calculado o consumo individual de água por dia do utilizador;
3. O utilizador ficará a saber o seu consumo individual de água por dia e se está dentro dos valores recomendados pela ONU;
4. Se no passo 3 o consumo do utilizador não estiver dentro dos valores recomendados pela ONU, serão apresentadas dicas face à má racionalização de água;
5. Por fim, o utilizador pode retroceder e alterar algumas das opções do questionário.

**Pós-condições:**
- Todos os dados submetidos no questionário conjuntamente com o seu consumo de água, são guardados na base de dados e mais tarde apresentados no portefólio do utilizador.

### Portefólio do utilizador
**Descrição:** \
Neste caso, o utilizador pode ver todas as suas simulações feitas anteriormente.

**Pré-condições:**
- Estar logado.

**Passo a passo:**
1. O utilizador clica no menú e depois na opção portefólio;
2. Aparecerão todas as simulações feitas pelo utilizador, indicando o dia em que foi feito.
3. Ao clicar no dia da simulação, poder-se-ão observar todos os dados submetidos no questionário conjuntamente com o seu consumo de água daquele dia.

**Pós-condições:**
- NA

## Referências:

[1] G1. Acedido em: 31, 10, 2020, em: https://especiais.g1.globo.com/economia/crise-da-agua/calculadora-do-consumo/

[2] UOL Acedido em: 31, 10, 2020, em: https://noticias.uol.com.br/cotidiano/ultimas-noticias/2015/02/05/e-possivel-viver-com-110-litros-de-agua-por-dia-veja-como-seria-a-sua-vida.htm 
