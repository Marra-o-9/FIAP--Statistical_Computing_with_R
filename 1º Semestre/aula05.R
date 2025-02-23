#Estruturas de condi��o
#if

a = 5
b = 7
c = 8

if(a != b & b != c & c != a){
  cat("� um tri�ngulo escaleno")} #& = and no R

#cat = est�tica do resultado


#if, else

a = 5
b = 5
c = 8

if(a != b & b != c & c != a){
  cat("� um tri�ngulo escaleno")}else{
    cat("N�o � um tri�ngulo escaleno.")}
#identa��o pode ser feita � partir das chaves


#ifelse

x = -25
y = 25

ifelse(x >= 0, sqrt(x), "Imposs�vel calcular a raiz") #ifelse � mais compacto
ifelse(y >= 0, sqrt(y), "Imposs�vel calcular a raiz") #mas � mais bobo


#Exerc�cios

"""
1) Para os valores de x, se x <= 3, fa�a x ao quadrado sobre 3, caso contr�rio,
fa�a 2x + 5.
"""
x = 1
ifelse(x <= 3, (x ** 2) / 3, 2 * x + 5)

x = 2
ifelse(x <= 3, (x ** 2) / 3, 2 * x + 5)

x = 3
ifelse(x <= 3, (x ** 2) / 3, 2 * x + 5)

x = 4
ifelse(x <= 3, (x ** 2) / 3, 2 * x + 5)

x = 5
ifelse(x <= 3, (x ** 2) / 3, 2 * x + 5)

"""
2) Para os valores de y, se y = 0, fa�a y + 2 elevado ao cubo e tudo dividido
por 4, caso contr�rio, fa�a 2y + 3.
"""
y = -3
ifelse(y == 0, (y + 2 ** 3) / 4, 2 * y + 3)

y = -2
ifelse(y == 0, (y + 2 ** 3) / 4, 2 * y + 3)

y = -1
ifelse(y == 0, (y + 2 ** 3) / 4, 2 * y + 3)

y = 0
ifelse(y == 0, (y + 2 ** 3) / 4, 2 * y + 3)

y = 1
ifelse(y == 0, (y + 2 ** 3) / 4, 2 * y + 3)

y = 2
ifelse(y == 0, (y + 2 ** 3) / 4, 2 * y + 3)

"""
3) Verifique se os conjuntos solu��o a seguir s�o solu��o do sistema:
"""
#a) x = 3, y = 1
x = 3
y = 1

ifelse(x + 2*y == 5 & 3*x - 5*y == 4, "� solu��o.", "N�o � solu��o.")

if(x + 2*y == 5 & 3*x - 5*y == 4){
  cat("� solu��o.")}else{
    cat("N�o � solu��o")
      }

#b) x = -2, y = -1
x = -2
y = -1

ifelse(x + 2*y == 5 & 3*x - 5*y == 4, "� solu��o.", "N�o � solu��o.")

if(x + 2*y == 5 & 3*x - 5*y == 4){
  cat("� solu��o.")}else{
    cat("N�o � solu��o")
      }


#Estruturas de Repeti��o
#for

for(i in 1:5){print(i ** 3)} #fez o cubo dos n�meros de 1 at� 5 automaticamente


corrida = data.frame(Pace = c(5.55, 4.59, 5.21, 6.05), Posicao = c(9, 2, 6, 4),
                    row.names = c("C1", "C2", "C3", "C4"))
corrida

for(i in corrida[,2]){print(i)} #[,2] - antes da v�rgula = linha
                                #depois da v�rgula = coluna

#while

x = 1

while(x <= 10){print(x); x = x + 1} #enquanto isso � verdadeiro, fa�a aquilo


#repeat

x = rep(3, 10) #repete algo, n vezes
x

y = rep("N�o", 20)
y

a = c(6, 12, 16)

b = rep(a, 3) #repete vetores com mais valores concatenados
b

c = rep(a, each = 2) #repete valores n vezes cada
c