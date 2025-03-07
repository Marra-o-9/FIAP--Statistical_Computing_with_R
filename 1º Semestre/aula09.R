#M�dia

x = c(2, 4, 3, 4, 5, 2, 4)
x

#X "barra": M�dia Amostral
#Mi: M�dia Populacional

mean(x) #mean = faz a m�dia dos itens do vetor

#m�dia � sempre arredondada para cima se tratando de um valor inteiro


#Mediana (Md)

x

#Mediana �mpar: o elemento central � a mediana
#Mediana par: a m�dia dos dois elementos centrais � a mediana

median(x) #median = faz a mediana dos itens em ordem crescente dos valores


#Biblioteca "DescTools"
#Moda (Mo)

#Moda se trata do item que aparece mais vezes que os outros
#Unimodal: um item � moda
#Amodal: sem itens na moda
#Bimodal: dois itens s�o moda
#Multimodal: tr�s ou mais itens s�o moda

tabela = table(x) #Uma moda "manual"
tabela

Moda = Mode(x) #Mode faz a moda dos itens do vetor
Moda


#M�ximo
max(x)

#M�nimo
min(x)

#Amplitude
R = max(x) - min(x)
R
range(x)

#Vari�ncia Amostral
var(x)

#Desvio Padr�o - Varia��o dos dados
sd(x)

#Coeficiente de Varia��o
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
#vari�vel probs criada para definir as porcentagens (em decimais)

median(x) # = Q2

quantile(x, probs = c(0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9)) # <- decil
#n�o v� fazer o centil n�o, vatomanocu


#Hack: d� um monte de info
summary(x)


#Entendendo o bloxpot
boxplot(x)

#M�nimo - 2
#Q1 - 2.5
#Mediana & Q3 - 4
#M�ximo - 5

#Dica: Usar o boxplot com a fun��o summary para obter info


"""
Exerc�cio 1: O tempo de processamento (em segundos), de
uma amostra de 15 modelos de RNA s�o:

2; 5; 3; 2; 5
3; 2; 1; 6; 5
3; 5; 6; 3; 55

Fa�a uma an�lise explorat�ria desses dados e escreva
um relat�rio estat�stico.
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
Relat�rio: Percebe-se de primeira m�o que h� um ponto
fora da curva neste gr�fico que o distorceu completamente.
55 segundos para tempo de processamento est� longe de
ser um padr�o nestes dados. Observa-se que o M�nimo � 1s,
e o M�ximo � 55s, com a M�dia de aproximadamente 7s,
claramente distorcida. Seu primeiro quartil � 2.5s,
segundo quartil e mediana s�o 3s, e terceiro quartil �
5s.
"""