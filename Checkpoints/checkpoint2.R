#Henrique Marra Barbosa


#1)
#a)
b = 2
h = 7
ifelse(b == h, "É um quadrado.", "É um retângulo.")

#b)
b = 5
h = 5
ifelse(b == h, "É um quadrado.", "É um retângulo.")

#c)
b = 0.5
h = 1/2
ifelse(b == h, "É um quadrado.", "É um retângulo.")

#d)
b = 2
h = 4
ifelse(b == h, "É um quadrado.", "É um retângulo.")


#2)
#a)
a = 3
b = 4
c = 5
ifelse(a**2 + b**2 == c**2, "É um Triângulo Pitagórico.", "Não é um Triângulo Pitagórico.")

#b)
a = 2
b = 5
c = 3
ifelse(a**2 + b**2 == c**2, "É um Triângulo Pitagórico.", "Não é um Triângulo Pitagórico.")

#c)
a =3/2
b = 2
c = 5/2
ifelse(a**2 + b**2 == c**2, "É um Triângulo Pitagórico.", "Não é um Triângulo Pitagórico.")

#d)
a = 4
b = 2
c = 7
ifelse(a**2 + b**2 == c**2, "É um Triângulo Pitagórico.", "Não é um Triângulo Pitagórico.")


#3)
#a)
x = -2
ifelse(9*(x**2) - 12*x + 4 == 0, "Este valor de x é solução da equação.", "Este valor de x não é solução da equação.")

#b)
x = 2/3
ifelse(9*(x**2) - 12*x + 4 == 0, "Este valor de x é solução da equação.", "Este valor de x não é solução da equação.")

#c)
x = 4
ifelse(9*(x**2) - 12*x + 4 == 0, "Este valor de x é solução da equação.", "Este valor de x não é solução da equação.")

#d)
x = (-2)/3
ifelse(9*(x**2) - 12*x + 4 == 0, "Este valor de x é solução da equação.", "Este valor de x não é solução da equação.")

#e)
x = 2
ifelse(9*(x**2) - 12*x + 4 == 0, "Este valor de x é solução da equação.", "Este valor de x não é solução da equação.")


#4)
#a)
x = -3
y = 10
ifelse(x + y == 19 & 2*x + y == 31, "Estes valores de x e y são soluções do sistema.", "Estes valores de x e y não são soluções do sistema.")

#b)
x = 12
y = 7
ifelse(x + y == 19 & 2*x + y == 31, "Estes valores de x e y são soluções do sistema.", "Estes valores de x e y não são soluções do sistema.")

#c)
x = 4
y = 2
ifelse(x + y == 19 & 2*x + y == 31, "Estes valores de x e y são soluções do sistema.", "Estes valores de x e y não são soluções do sistema.")


#5)
#a)
y = 3
ifelse(y <= 5, "Obra não valiosa.", "Obra valiosa.")

#b)
y = 5
ifelse(y <= 5, "Obra não valiosa.", "Obra valiosa.")

#c)
y = 7
ifelse(y <= 5, "Obra não valiosa.", "Obra valiosa.")

#d)
y = 2
ifelse(y <= 5, "Obra não valiosa.", "Obra valiosa.")

#e)
y = 8
ifelse(y <= 5, "Obra não valiosa.", "Obra valiosa.")


#6)
for(i in -10:10){print(i ** 2)}


#7)
tabela = data.frame(Subject = c("English", "Math", "Science", "French"), Ano_2018 = c(85, 73, 98, 88), Ano_2019 = c(60, 80, 58, 96), Ano_2020 = c(90, 64, 74, 87))
tabela

#a)
rep(tabela$Subject)

#b)
rep(tabela$Ano_2018)

#c)
rep(tabela$Ano_2019)

#d)
rep(tabela$Ano_2019)


#8)
#a)
rep(10, 15)

#b)
rep(-5, 7)

#c)
rep("Sim", 4)

#d)
rep("Talvez", 8)


#9)
#a)

v = c(0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 20)
rep(v, 5)

#b)

u = c(1, 3, 5, 7, 9, 11, 13, 15, 17, 19)
rep(u, each = 10)
