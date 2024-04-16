#Pacotes

#install.packages("openxlsx") -> instalar o pacote por script
library(openxlsx) #ativar o pacote quando rodar o código

#openxlsx -> pacote para ler excel


#Encontrar o Workspace do R:

getwd() #código para procurar o diretório
#usado para colocar os arquivos externos dentro do workspace

#setwd('novo_endereço') mudar o workspace do R (não recomendado)


#Importando Arquivos TXT:

dados1 = read.table("DadosAula7.txt", header = T) #ler o txt em tabela
#header = TRUE, para informar que a primeira linha é cabeçalho, e não um dado
dados1

View(dados1) #visualizar a tabela à parte


#Importando Arquivos CSV:

dados2 = read.csv2("DadosAula7.csv") #ler o arquivo csv
dados2

View(dados2)


#Importando Arquivos XLSX:

dados3 = read.xlsx("DadosAula7.xlsx") #ler o arquivo xlsx
dados3

View(dados3)

#Pegar uma aba específica do arquivo excel:
#nome = read.xlsx("NomeDoObjeto.xlsx", sheetName = "nome")





