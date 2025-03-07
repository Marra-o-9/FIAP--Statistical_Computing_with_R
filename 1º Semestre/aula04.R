#Declarando uma vari�vel

x = 5
x


#Vetores (somente linha)

vetor1 = 1:7 #cria um "vetor" de 1 at� 7
vetor1

vetor1b = array(1:7) #cria um array de valores
vetor1b

vetor2 = c(2, 3, 6, 9, 8, 5, 10) #fun��o c = concatenar
vetor2

vetor3 = c("Jo�o", "Maria", "Roberto", "Sandra")
vetor3

vetor2[5] #[] = localizar o elemento pela posi��o

vetor2[2:6] #[:] = localizar de uma posi��o at� outra

vetor2[8] #a posi��o 8 n�o possui valor, n�o existe (NA)

sum(vetor2) #soma dos elementos do vetor

prod(vetor2) #multiplica��o dos elementos do vetor

vetor4 = c(-3, 0.5, 5/7, 0, -0.6, -4/3, 5)
vetor4

vetor2 + vetor4 #para operar vetores, � preciso ter a mesma quantidade de elementos
vetor2 - vetor4

vetor5 = c(0, 1, 2)
vetor6 = c(-1, -2, 3)

vetor5 + vetor6
vetor5 - vetor6
vetor5 * vetor6


#Matriz (linhas e colunas)

m = matrix(1:8, nrow = 4, ncol = 2) #nrow = numero de linhas
m                                   #ncol = numero de colunas

m = matrix(1:8, nrow = 4, ncol = 2, dimnames = list(c("L1", "L2", "L3", "L4"), c("C1", "C2")))
m

m[6]

m[3,2] #encontrar o valor na matriz por linha e coluna

m[3,]  #encontrar somente os valores da linha

m[,2]  #encontrar somente os valores da coluna


#Data Frame (tabela)

tabela1 = data.frame(Nome = c("Andr�", "Gustavo"), Idade = c(25, 34))
tabela1

tabela1$Nome #$ = busca o elemento de uma maneira f�cil
tabela1$Idade

tabela1$Salario = (1500) #adicionar uma nova coluna
tabela1

tabela1$Salario = c(1500, 1000) #adicionar �s duas linhas (lembrar do array - c)
tabela1

#Criando c�pia modificada da outra tabela
tabela2 = cbind(tabela1, data.frame(Casado = c(TRUE, FALSE))) #abrevia��o - T, F
tabela2
#cbind = adicionar coluna com base em uma tabela j� existente
tabela2 = rbind(tabela1, data.frame(Nome = "Paola", Idade = 23, Salario = 3000))
tabela2
#rbind = adicionar linha com base em uma tabela j� existente
#para adicionar a linha, � preciso ter todas os elementos para cada coluna


#Lista

familia = list(pai = "Armando", mae = "Sandra", numfilhos = 1, idade = 26)
familia

familia[1]
familia[3]


#Fun��o (recebe um ou mais argumentos e executa opera��es sobre eles)

area = function(b, h){return((b * h) / 2)} #return = devolve os resultados
area(2, 3) #ou area(b = 2, h = 3)
area(4, 6)

#Isto n�o � fun��o, � uma opera��o manual com 3 vari�veis

b = 2
h = 3
(a = (b * h) / 2) #os par�nteses exibiram o resultado


#Classificar objetos

class(vetor2)
class(vetor3)
class(area)


#Localizar objetos

ls()


#Remover objetos

remove(area)
rm(b, h) #abrevia��o


#Pedir ajuda ao R

help(class)
?class
