#Pacotes

#install.packages("openxlsx") -> instalar o pacote por script
library(openxlsx) #ativar o pacote quando rodar o c�digo

#openxlsx -> pacote para ler excel


#Encontrar o Workspace do R:

getwd() #c�digo para procurar o diret�rio
#usado para colocar os arquivos externos dentro do workspace

#setwd('novo_endere�o') mudar o workspace do R (n�o recomendado)


#Importando Arquivos TXT:

dados1 = read.table("DadosAula7.txt", header = T) #ler o txt em tabela
#header = TRUE, para informar que a primeira linha � cabe�alho, e n�o um dado
dados1

View(dados1) #visualizar a tabela � parte


#Importando Arquivos CSV:

dados2 = read.csv2("DadosAula7.csv") #ler o arquivo csv
dados2

View(dados2)


#Importando Arquivos XLSX:

dados3 = read.xlsx("DadosAula7.xlsx") #ler o arquivo xlsx
dados3

View(dados3)

#Pegar uma aba espec�fica do arquivo excel:
#nome = read.xlsx("NomeDoObjeto.xlsx", sheetName = "nome")





