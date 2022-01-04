# Sono e Atividade

Estou criando esse repositório para armazenar os dados coletados pelo meu smartwatch, o Haylou ls02. É um smartwatch de entrada, então os dados não serão muito acurados, porém ainda assim posso trabalhar com eles.
O relógio divide os dados em dois tipos:
### Sono:
Onde são coletados o horário de início e fim do período de sono, as mudanças do sono ao longo do tempo (varia entre acordado, sono leve e sono profundo, também mostra em qual horário houve a mudança do tipo de sono) e o tempo total do sono em segundos.
### Atividade: 
Aqui podemos encontrar os passos dados em certos períodos de tempo ao longo do dia (variando os períodos de tempo conforme a atividade e conexão com o smartphone), como o número de passos, a distância percorrida (Km) e as calorias (Kcal) ao longo do dia.

O grande impecilho na hora de analisar esses dados é a variação no tempo de coleta, em alguns dias eles são coletados a cada hora (24 vezes) em outros, quando eu não tinha muita conexão com o smartphone, os dados são coletados 2 ou 3 vezes por dia. 
Nesse momento vou extrair alguns dados de para ver índices de estatística descritiva, para simplificar (por enquanto) a parte do sono só terá duas principais colunas: data e sono total (em segundos). Vamos para os dados:

### Alguns dados básicos

![alt text](https://github.com/gabrielvpina/Haylo_ls02_exported_data/blob/main/Captura%20de%20tela%20de%202022-01-04%2000-02-15.png)

Segundo os dados, meu sono total teve uma média de 27360 segundos, ou seja, 7,6 horas diárias de sono em média. A maior medição de sono total foi de 47160 s = 13,1 horas de sono, já a menor foi de 1 min. 

Porém como sabemos a média nem sempre é um bom indicador de rotina ou tendência, podemos ver isso quando observamos a distância diária percorrida, onde a média diária é de 2,46 Km. Eu corria alguns dias da semana, porém não era algo diário e esse valor explica muito pouco sobre meu comportamento. A mediana seria um valor melhor pra isso (ainda que não muito precisa também), minha mediana foi de 1,55 Km, isso siginifica que durante a metade do período de coleta, eu percorri menos que 1,55 Km por dia, ainda não é algo próximo do exato mas ainda assim é melhor do que a média.



Os dados utilizados foram exportados do smartwatch Haylo ls02 através do app Hello Haylo, eles englobam o período de 01/09/2021 até o dia 14/11/2021. 
Tentarei aqui relacionar diferentes dados obtidos e usar o RStudio para criar gráficos dos resultados.

### Gráfico 01: Sono e Consumo calórico - Do início de Setembro até o dia 14/11/2021.

![alt text](https://github.com/gabrielvpina/Haylo_ls02_exported_data/blob/main/S%26A_plot01.jpeg)

