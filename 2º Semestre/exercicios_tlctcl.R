#Exemplo)
pnorm(95, 100, 10/sqrt(25), lower.tail = T)


#1)
pnorm(110/50, 2, 0.7/sqrt(50), lower.tail = F)


#2)
x1 = pnorm(169, 172, 5/sqrt(16), lower.tail = T)
x1
x2 = pnorm(175, 172, 5/sqrt(16), lower.tail = T)
x2

x2 - x1


#3)
#a)
pnorm(172, 170, 5/sqrt(40), lower.tail = F) #Pouco provável

#b)
y1 = pnorm(168.3, 170, 5/sqrt(40), lower.tail = T)
y1
y2 = pnorm(171, 170, 5/sqrt(40), lower.tail = T)
y2

y2 - y1 #Muito provável

#c)
pnorm(168.7, 170, 5/sqrt(40), lower.tail = T) #Pouco provável




