# Sono e Atividade

Estou criando esse repositório para armazenar os dados coletados pelo meu smartwatch, o Haylou ls02. É um smartwatch de entrada, então os dados não serão muito acurados, porém ainda assim posso trabalhar com eles.
O relógio divide os dados em dois tipos:
### Sono:
Onde são coletados o horário de início e fim do período de sono, as mudanças do sono ao longo do tempo (varia entre acordado, sono leve e sono profundo, também mostra em qual horário houve a mudança do tipo de sono) e o tempo total do sono em segundos.
### Atividade: 
Aqui podemos encontrar os passos dados em certos períodos de tempo ao longo do dia (variando os períodos de tempo conforme a atividade e conexão com o smartphone), como o número de passos, a distância percorrida (Km) e as calorias (Kcal) ao longo do dia.

O grande impecilho na hora de analisar esses dados é a variação no tempo de coleta, em alguns dias eles são coletados a cada hora (24 vezes) em outros, quando eu não tinha muita conexão com o smartphone, os dados são coletados 2 ou 3 vezes por dia. 

### Alguns dados básicos

summary(atividade)
##       Date               Calories         Steps          Distance    
##  Min.   :2021-09-01   Min.   :  0.0   Min.   :   21   Min.   :0.010  
##  1st Qu.:2021-09-19   1st Qu.: 41.0   1st Qu.: 1414   1st Qu.:1.055  
##  Median :2021-10-08   Median : 62.0   Median : 2058   Median :1.550  
##  Mean   :2021-10-08   Mean   :101.8   Mean   : 3253   Mean   :2.458  
##  3rd Qu.:2021-10-26   3rd Qu.:151.0   3rd Qu.: 4828   3rd Qu.:3.630  
##  Max.   :2021-11-14   Max.   :380.0   Max.   :11773   Max.   :8.850







Os dados utilizados foram exportados do smartwatch Haylo ls02 através do app Hello Haylo, eles englobam o período de 01/09/2021 até o dia 14/11/2021. 
Tentarei aqui relacionar diferentes dados obtidos e usar o RStudio para criar gráficos dos resultados.

### Gráfico 01: Sono e Consumo calórico - Do início de Setembro até o dia 14/11/2021.

![alt text](https://github.com/gabrielvpina/Sono-e-Atividade/blob/main/S%26A_plot01.jpeg)

