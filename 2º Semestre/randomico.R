#Sorteio (vc sabe)

sample(7) #sorteia de 1 a 7, sem repetição no default

sample(1:20, 7, replace = T) #de 1 a 20, sortear 7 números

sample(1:20, 7, replace = F) #replace False = sem repetição de números

runif(10, min=1, max=2) #sorteio números decimais

round(runif(10, min=1, max=2), 2) #função round arredonda os resultados

sorteio = runif(10, min=1, max=2)
round(sorteio, 3)

set.seed(1) #fixa os números aleatórios para usar sem serem alterados
sample(1:20, 7, replace = F)


#1) Sorteio de nomes

amostra = c("Marra", "Art", "Lusca", "Fabras", "Juuj", "Luul")
sample(amostra, 2, replace = F, prob = NULL) #prob = pesos

#2) Sorteio com pesos

amostra = c("Marra", "Art", "Lusca", "Fabras", "Juuj", "Luul")
pesos = c(0.6, 0.2, 0.05, 0.05, 0.05, 0.05) #soma tem que dar 1
sample(amostra, 2, replace = F, prob = pesos)


#Exercícios:

pnorm(180, 174, 8, lower.tail = F)

#b)

x = pnorm(183, 174, 8, lower.tail = F)

y = pnorm(160, 174, 8, lower.tail = T)
z = pnorm(163, 174, 8, lower.tail = T)

z - y + x


#Extra 1)
#a)

a = pnorm(10, 20, 0.55*20, lower.tail = T)
b = pnorm(15, 20, 0.55*20, lower.tail = T)
b - a

c = pnorm(21, 20, 0.55*20, lower.tail = F)
d = pnorm(22, 20, 0.55*20, lower.tail = F)
c - d

e = pnorm(30, 20, 0.55*20, lower.tail = F)
e

(c - d) + (b - a) + e


#b)

m = qnorm(0.30, 20, 0.55*20, lower.tail = F)
n = qnorm(0.70, 20, 0.55*20, lower.tail = F)

m - n


#c)

qnorm(0.85, 20, 0.55*20, lower.tail = T)


#Extra 2)

mean(172, 175, 163, 162, 155, 170, 172, 165, 168, 170)

p1 = pnorm(161, 170, 5/sqrt(10), lower.tail = F)
p2 = pnorm(165, 170, 5/sqrt(10), lower.tail = F)

p1 - p2

