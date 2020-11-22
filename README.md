# Simulação de consumo de água

## Autores:

| Número | Nome |
|--------|------|
|  20190843  | Hugo Duarte |
|  50034822  | Frederico Ramalho |

## Enquadramento

Atualmente, a escassez de água e a sua poluição estão no topo das preocupações ambientais. Por um lado, o consumo de água é superior à sua capacidade de renovação cíclica, devido o crescimento populacional, ao aumento do consumo de produtos que utilizam muita água na sua produção (como a carne) e ao aumento das atividades produtivas. Por outro lado, a água poluída que circula nos esgotos está saturada de metais pesados, agroquímicos, medicamentos, drogas e fertilizantes, entre outros. Chegando às estações de tratamento, esta água é purificada e tornada inócua para o meio ambiente onde é libertada, sendo no entanto imprópria para consumo e abastecimento da população. Estas estações de tratamento são pouco eficientes e dispendiosas pois requerem um grande consumo energético, que também é, por sua vez, poluente -  em Portugal as energias renováveis ocupam apenas 21% do consumo total de energia [3]. Todo o processo de consumo e tratamento de água está a sobrecarregar o nosso planeta cada vez mais. 

Tendo em conta esta situação, a ONU definiu como essencial uma produção e consumos sustentáveis (objetivo 12 dos ODS da ONU), que apenas se poderão atingir como um consumo mais eficiente. A eficiência é caracterizada pelo combate ao desperdício. O consumo eficiente poderá reverter a crise de falta de água e diminuir a poluição provocada pelas estações de tratamento de água, visto que irá ser tratada uma menor quantidade da mesma.


Este projeto enquadra-se no contexto da produção e consumos sustentáveis. O projeto "Simulação de consumo de água" permite ao utilizador saber quantos litros de água utiliza por dia. Desta maneira, o utilizador poderá gerir os seus consumos de forma mais eficiente em relação a fins económicos e ambientais.


Um projecto deste tipo já existe na plataforma G1 (Globo) [1], usada por milhares de pessoas e até por hospitais. A diferença desta plataforma para o nosso projeto seria a maior interatividade com o utilizador, baseada num portefólio que permite acompanhar os consumos de água do utilizador até à data, comparando-os com os valores recomendados pela ONU [2]. Este simulador conta também com a divulgação de dicas para os utilizadores, revelando potenciais poupanças e melhorando a racionalização de água.


## Casos de utilização:

### Core
**Descrição:** \
Neste caso, o utilizador vai poder fazer registo das suas residências. Desta maneira, o resultado obtido das simulações será mais aproximado da realidade.

**Pré-condições:**
- Estar logado.

**Passo a passo:**
1. O utilizador vai preencher uma ficha de registo de residência, indicando a sua morada, número e tipo de residência;
2. O registo é guardado em nome do utilizador;

**Pós-condições:**
- NA

### Simulação de consumo de água
**Descrição:** \
Neste caso, o utilizador vai preencher um questionário para depois ser calculado o seu consumo individual de água por dia. O objetivo é tentar ajustar o seu consumo ao recomendado pela ONU.                 
Este caso é semelhante a [1].

**Pré-condições:**
- Estar logado e ter registo de pelo menos uma residência.

**Passo a passo:**
1. Escolher a residência que pretende fazer a simulação (se apenas tiver uma residência, por default vai direto para a simulação);
2. O utilizador preenche um questionário (semelhante a [1]);
3. Com o questionário submetido, irá ser calculado o consumo individual de água por dia do utilizador;
4. O utilizador ficará a saber o seu consumo individual de água por dia e se está dentro dos valores recomendados pela ONU, conjuntamente com dicas para uma melhor racionalização da água.
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

[2] UOL. Acedido em: 31, 10, 2020, em: https://noticias.uol.com.br/cotidiano/ultimas-noticias/2015/02/05/e-possivel-viver-com-110-litros-de-agua-por-dia-veja-como-seria-a-sua-vida.htm 

[3] REA. Acedido em: 14, 11, 2020, em: https://rea.apambiente.pt/content/produção-e-consumo-de-energia
