library(ggplot2)
library(dplyr)
library(lubridate)
library(hrbrthemes)
library(patchwork)

#Os dados utilizados foram exportados do smartwatch Haylo ls02 através do app Hello Haylo, eles englobamo período do início de setembro e até o dia 14/11/2021
#Bancos de dados do Github
atividade <- read.csv('https://raw.githubusercontent.com/gabrielvpina/Sono-e-Atividade/main/2021-09-01_activity.csv')
sono <- read.csv('https://raw.githubusercontent.com/gabrielvpina/Sono-e-Atividade/main/2021-09-01_sleep.csv')

#Mudando o nome das colunas dos data frames:
colnames(atividade) <- c('Date','Steps','Distance','Calories')


#Conversões de classe de variáveis (parse) - de 'factor' para 'date'
#Datas da atividade
atividade$Date <- as_date(ymd_hms(atividade$Date))
#Datas de sono
sono$Time.start <- as_datetime(ymd_hms(sono$Time.start))
sono$Time.end <- as_datetime(ymd_hms(sono$Time.end))
sono$Time <- as_datetime(ymd_hms(sono$Time))


#Arredondar dados de atividade pelo dia, retirando os horários
round_date(atividade$Date, unit = 'day', week_start = getOption("lubridate.week.start", 7))
#Agrupar as datas repetidas em uma mesma linha, somando os dados de uma mesma data em uma unica linha
atividade <- data.frame(group_by(atividade, Date)%>%summarise(Calories = sum(Calories),Steps = sum(Steps),Distance = sum(Distance)))
#Novo data frame somente com as datas e o tempo total de sono (para simplificar a manipulação dos dados)
sono_total <- data.frame(sono$Date, sono$Total.time..seconds.)
#Nomeando as colunas
colnames(sono_total) <- c('Date', 'Sono_Total')
sono_total$Date <- as_date(sono_total$Date)
sono_total <- data.frame(group_by(sono_total, Date)%>%summarise(Sono_Total = mean(Sono_Total)))

#Retirando alguns dados em excesso do data frame:
atividade <- atividade[-75,][-74,][-73,]

horas <- coeff

#Gráfico de linhas
data <- data.frame(
  Dia = sono_total$Date,
  Sono = sono_total$Sono_Total/3600,
  Calorias = atividade$Calories
)
p1 <- ggplot(data, aes(x=Dia, y=Sono)) +
  geom_line(color="#69b3a2", size=0.7) +
  ggtitle("Sono (horas)") +
  theme_ipsum()

p2 <- ggplot(data, aes(x=Dia, y=Calorias)) +
  geom_line(color="grey",size=0.7) +
  ggtitle("Calorias (Kcal)") +
  theme_ipsum()

#Junção dos gráficos de tempo de sono (horas) e calorias (Kcal) de um mesmo período de tempo.
p1+p2


