## Carregamento da biblioteca
library(dplyr)


## Diretório de trabalho
setwd("/cloud/project/aula03/")


## Abrir o banco de dados
dados = read.csv('./data/database2-codificado.csv', sep = ';', dec = ',')


## Visualização dos dados
View(dados)


## Transformando Gênero em Fator
dados$Genero <- factor(dados$Genero, labels = c("M", "F"), levels = c(0, 1))

## Transformando o Grau de instrução em fator
dados$Grau_de_Instrucao <- factor(dados$Grau_de_Instrucao,
                                  labels = c("Fundamental", "Médio", "Superior"),
                                  levels = 0:2, order = T)


## Codificando valores faltantes
dados[dados==-999] <- NA
