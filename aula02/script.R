## Instalando pacotes
if (!require(dplyr)) install.packages("dplyr")


## Carregamento de pacotes
library(dplyr)

## Diretório de trabalho
setwd("./aula02/")


## Carregamento do banco de dados
dados <- read.csv('./data/database-aula02.csv', sep=";", dec=",")

## Visualização dos dados
View(dados)
glimpse(dados)
