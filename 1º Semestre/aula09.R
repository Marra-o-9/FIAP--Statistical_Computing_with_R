#Média

x = c(2, 4, 3, 4, 5, 2, 4)
x

#X "barra": Média Amostral
#Mi: Média Populacional

mean(x) #mean = faz a média dos itens do vetor

#média é sempre arredondada para cima se tratando de um valor inteiro


#Mediana (Md)

x

#Mediana ímpar: o elemento central é a mediana
#Mediana par: a média dos dois elementos centrais é a mediana

median(x) #median = faz a mediana dos itens em ordem crescente dos valores


#Biblioteca "DescTools"
#Moda (Mo)

#Moda se trata do item que aparece mais vezes que os outros
#Unimodal: um item é moda
#Amodal: sem itens na moda
#Bimodal: dois itens são moda
#Multimodal: três ou mais itens são moda

tabela = table(x) #Uma moda "manual"
tabela

Moda = Mode(x) #Mode faz a moda dos itens do vetor
Moda


#Máximo
max(x)

#Mínimo
min(x)

#Amplitude
R = max(x) - min(x)
R
range(x)

#Variância Amostral
var(x)

#Desvio Padrão - Variação dos dados
sd(x)

#Coeficiente de Variação
cv = (sd(x) / mean(x)) * 100
cv

#Medidas Separatrizes

#Quartil: divide os dados em 4 partes
#Decil: divide os dados em 10 partes
#Centil: divide os dados em 100 partes

#Q1 = 25% dos dados abaixo e 75% dos dados acima
#Q2 = 50% dos dados abaixo e 50% dos dados acima (mediana)
#Q3 = 75% dos dados abaixo e 25% dos dados acima

quantile(x, probs = c(0.25, 0.50, 0.75)) # <- quartil
#quantile faz os quartis
#variável probs criada para definir as porcentagens (em decimais)

median(x) # = Q2

quantile(x, probs = c(0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9)) # <- decil
#não vô fazer o centil não, vatomanocu


#Hack: dá um monte de info
summary(x)


#Entendendo o bloxpot
boxplot(x)

#Mínimo - 2
#Q1 - 2.5
#Mediana & Q3 - 4
#Máximo - 5

#Dica: Usar o boxplot com a função summary para obter info


"""
Exercício 1: O tempo de processamento (em segundos), de
uma amostra de 15 modelos de RNA são:

2; 5; 3; 2; 5
3; 2; 1; 6; 5
3; 5; 6; 3; 55

Faça uma análise exploratória desses dados e escreva
um relatório estatístico.
"""

rna = c(2, 5 ,3, 2, 5, 3, 2, 1, 6, 5, 3, 5, 6, 3, 55)
rna

mean(rna)
median(rna)
max(rna)
min(rna)
max(rna) - min(rna)
var(rna)
sd(rna)
(sd(rna) / mean(rna)) * 100
quantile(rna, probs = c(0.25, 0.50, 0.75))

summary(rna)
boxplot(rna)

"""
Relatório: Percebe-se de primeira mão que há um ponto
fora da curva neste gráfico que o distorceu completamente.
55 segundos para tempo de processamento está longe de
ser um padrão nestes dados. Observa-se que o Mínimo é 1s,
e o Máximo é 55s, com a Média de aproximadamente 7s,
claramente distorcida. Seu primeiro quartil é 2.5s,
segundo quartil e mediana são 3s, e terceiro quartil é
5s.
"""