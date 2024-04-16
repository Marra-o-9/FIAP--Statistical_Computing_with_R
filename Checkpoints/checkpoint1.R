#Henrique Marra Barbosa


#1)
#a)
salario = function(fixo, sol){return (fixo + (sol * 500))}

#b)
salario = function(fixo, sol){return (fixo + (sol * 500))}
salario(2500, 3)


#2)
vetor_a = 1:6
vetor_b = c(5, -2, 3, -4, -1, 0)

#a)
sum(vetor_a)

#b)
sum(vetor_b)

#c)
prod(vetor_a)

#d)
prod(vetor_b)

#e)
vetor_d = (vetor_b - vetor_a) + (vetor_a + vetor_b)
vetor_d

#f)
vetor_a * vetor_b


#3)
#a)
m1 = matrix(1:10, nrow = 2, ncol = 5, dimnames = list(c("L1", "L2"), c("C1", "C2", "C3", "C4", "C5")))
m1

#b)
m2 = matrix(1:20, nrow = 5, ncol = 4, dimnames = list(c("L1", "L2", "L3", "L4", "L5"), c("C1", "C2", "C3", "C4")))
m2


#4)
compras = list("Arroz", "Feijão", "Óleo", "Macarrão", "Sal", "Açúcar", "Farinha de trigo", "Carnes", "Frutas", "Legumes", "Hortaliças")
compras


#5)
#a)
tabela = data.frame(Ano = c("2002", "2003", "2004", "2005"), Genero_Textual = c("Conto", "Poesia", "Cronica", "Romance"), Livros_Lidos = c(4, 8, 15, 7))
tabela

#b)
tabela = rbind(tabela, data.frame(Ano = "2006", Genero_Textual = "Terror", Livros_Lidos = 3))
tabela

#c)
tabela = cbind(tabela, data.frame(Tempo_de_Leitura = c("8 meses", "3 meses", "12 meses", "7 meses", "5 meses")))
tabela


#6)
#a)
producao_de_pcs = data.frame(Mes = c("Junho", "Julho", "Agosto", "Setembro", "Outubro"), Quantidade = c(2234, 1347, 2356, 6583, 2133))
producao_de_pcs

#b)
producao_de_pcs = rbind(producao_de_pcs, data.frame(Mes = c("Novembro", "Dezembro"), Quantidade = c(5244, 2354)))
producao_de_pcs

#c)
producao_de_pcs = cbind(producao_de_pcs, data.frame(Vendidos = c(2230, 1340, 2100, 5650, 2590, 1253, 2361)))
producao_de_pcs


#7)
#a)
area = function(D, d){return((D * d) / 2)}
area(16, 12)

#b)
area(24, 18)


#8) Provinha daora demais :D