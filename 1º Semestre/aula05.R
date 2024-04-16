#Estruturas de condição
#if

a = 5
b = 7
c = 8

if(a != b & b != c & c != a){
  cat("É um triângulo escaleno")} #& = and no R

#cat = estética do resultado


#if, else

a = 5
b = 5
c = 8

if(a != b & b != c & c != a){
  cat("É um triângulo escaleno")}else{
    cat("Não é um triângulo escaleno.")}
#identação pode ser feita à partir das chaves


#ifelse

x = -25
y = 25

ifelse(x >= 0, sqrt(x), "Impossível calcular a raiz") #ifelse é mais compacto
ifelse(y >= 0, sqrt(y), "Impossível calcular a raiz") #mas é mais bobo


#Exercícios

"""
1) Para os valores de x, se x <= 3, faça x ao quadrado sobre 3, caso contrário,
faça 2x + 5.
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
2) Para os valores de y, se y = 0, faça y + 2 elevado ao cubo e tudo dividido
por 4, caso contrário, faça 2y + 3.
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
3) Verifique se os conjuntos solução a seguir são solução do sistema:
"""
#a) x = 3, y = 1
x = 3
y = 1

ifelse(x + 2*y == 5 & 3*x - 5*y == 4, "É solução.", "Não é solução.")

if(x + 2*y == 5 & 3*x - 5*y == 4){
  cat("É solução.")}else{
    cat("Não é solução")
      }

#b) x = -2, y = -1
x = -2
y = -1

ifelse(x + 2*y == 5 & 3*x - 5*y == 4, "É solução.", "Não é solução.")

if(x + 2*y == 5 & 3*x - 5*y == 4){
  cat("É solução.")}else{
    cat("Não é solução")
      }


#Estruturas de Repetição
#for

for(i in 1:5){print(i ** 3)} #fez o cubo dos números de 1 até 5 automaticamente


corrida = data.frame(Pace = c(5.55, 4.59, 5.21, 6.05), Posicao = c(9, 2, 6, 4),
                    row.names = c("C1", "C2", "C3", "C4"))
corrida

for(i in corrida[,2]){print(i)} #[,2] - antes da vírgula = linha
                                #depois da vírgula = coluna

#while

x = 1

while(x <= 10){print(x); x = x + 1} #enquanto isso é verdadeiro, faça aquilo


#repeat

x = rep(3, 10) #repete algo, n vezes
x

y = rep("Não", 20)
y

a = c(6, 12, 16)

b = rep(a, 3) #repete vetores com mais valores concatenados
b

c = rep(a, each = 2) #repete valores n vezes cada
c