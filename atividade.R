library(ggplot2)
library(dplyr)
library(lubridate)
library(hrbrthemes)

atividade <- read.csv('https://raw.githubusercontent.com/gabrielvpina/Sono-e-Atividade/main/2021-09-01_activity.csv')
colnames(atividade) <- c('Date','Steps','Distance','Calories')

ymd_hms(atividade$Date)

atividade$Date <- as_date(ymd_hms(atividade$Date))
round_date(atividade$Date, unit = 'day', week_start = getOption("lubridate.week.start", 7))

class(atividade$Date)

dados <- data.frame(group_by(atividade, Date)%>%summarise(Calories = sum(Calories),Steps = sum(Steps),Distance = sum(Distance)))

ggplot(data = dados, aes(x = Date, y = Steps)) +
  geom_bar(stat = "identity", fill = "purple") +
  labs(title = "Calorias gastas por dia",
       subtitle = "Entre setembro e novembro",
       x = "Data", y = "Calorias") +
  theme_ipsum_ps()

