#Vari�veis Qualitativas e Quantitativas
"""
Qualitativa = Categ�rica
Quantitativa = Num�rica

Qualitativa:

- Ordinal = Apresenta hierarquia
            Exemplos: Cargo, escolaridade, ...
            
- Nominal = N�o apresenta hierarquia
            Exemplos: Cor, sexo, ...
            
Quantitativa:

- Discreta = N�meros de contagem, mensur�veis
             Exemplos: n� de filhos, n� de pe�as, ...
             
- Cont�nua = Intervalo real, mensur�veis
             Exemplos: Altura, peso, ...
"""

#Gr�ficos

dados = c(rep("Sim", 20), rep("N�o", 45))
dados

respostas = table(dados)
respostas

20 + 45

(20/65)*100

(45/65)*100


#Gr�ficos Qualitativos:


#Gr�fico de Pizza

#grafico de pizza "Respostas Entrevista" que pegou as respostas e organizou em r�tulos e colunas
pie(respostas, main = "Respostas Entrevista", labels = c("69,23%", "30,77%"), col = c(4, 2))

#legenda no topo, completada com as cores 4(azul) e 2(vermelho) dizendo N�o e Sim
legend("topright", fill = c(4, 2), legend = c("N�o", "Sim"))


#Gr�fico de Barras

barplot(respostas, main = "Respostas Entrevista", col = topo.colors(2))

legend("topright", fill = topo.colors(2), legend = c("N�o", "Sim"))
#caso necessitar de horizontal, horiz=TRUE


#Gr�ficos Quantitativos:


#sample = cria um conjunto de dados aleat�rio
#size = quantidade de n�meros
#replace = se pode repetir n�meros ou n�o
idade = sample(18:54, size = 50, replace = T)
idade


#Histograma

#histograma com os valores do objeto idade
#xlab = intervalo das idades (eixo x)
#ylab = intervalo das frequ�ncias (eixo y)
hist(idade, breaks = 5, col = "blue", xlab = "Intervalos de Idades", ylab = "Frequ�ncia", main = "Histograma das Idades")


#Boxplot (um dos gr�ficos mais importantes da estat�stica)

boxplot(idade, main = "Boxplot das Idades", ylab = "Idades", xlab = "Fonte da Pesquisa", col = "blue")
