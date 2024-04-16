#Exercícios probabilidade


#a) Evento pouco provável
pnorm(164, 175, 10, lower.tail = T) #True - probabilidade abaixo

#b) Evento muito provável
pnorm(164, 175, 10, lower.tail = F) #False - probabilidade acima

#c)
a = pnorm(174, 175, 10, lower.tail = T)
b = pnorm(164, 175, 10, lower.tail = T)
a - b


#1)
#a)
a = pnorm(8.7, 11.15, 2.238, lower.tail = T)
a ##Evento pouco provável

#b)
b = pnorm(14.7, 11.15, 2.238, lower.tail = T)
b #Evento muito provável

#c)
b - a #Evento muito provável


#2) Variância = 64
#   Desvio padrão = 8 -> raiz da variância
pnorm(180, 174, 8, lower.tail = F)
#Evento pouco provável


#3)

#a)
a = pnorm(42, 64, 15, lower.tail = T)
b = pnorm(73, 64, 15, lower.tail = T)

c = b - a
c #Evento muito provável

#b)
800 * c #524


#4)
pnorm(10, 8, 1.5, lower.tail = F) #Evento pouco provável
#chance: 9,12%


#5)
#a)
a = pnorm(50, 45, 20, lower.tail = F)
b = pnorm(30, 45, 20, lower.tail = T)

c = a + b
c #Evento muito provável

#b)
50 * c #arredondar sempre para o inteiro superior
#32 candidatos


#6)
#a)
pnorm(100, 120, 15, lower.tail = T) #Pouco provável

#b)
qnorm(0.95, 120, 15, lower.tail = T)
#função para descobrir o dado, quando se tem a porcentagem

#c)
x1 = qnorm(0.10, 120, 15, lower.tail = T)
x1
x2 = qnorm(0.90, 120, 15, lower.tail = T)
x2


