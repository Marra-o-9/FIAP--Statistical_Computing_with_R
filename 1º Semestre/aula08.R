#Variáveis Qualitativas e Quantitativas
"""
Qualitativa = Categórica
Quantitativa = Numérica

Qualitativa:

- Ordinal = Apresenta hierarquia
            Exemplos: Cargo, escolaridade, ...
            
- Nominal = Não apresenta hierarquia
            Exemplos: Cor, sexo, ...
            
Quantitativa:

- Discreta = Números de contagem, mensuráveis
             Exemplos: nº de filhos, nº de peças, ...
             
- Contínua = Intervalo real, mensuráveis
             Exemplos: Altura, peso, ...
"""

#Gráficos

dados = c(rep("Sim", 20), rep("Não", 45))
dados

respostas = table(dados)
respostas

20 + 45

(20/65)*100

(45/65)*100


#Gráficos Qualitativos:


#Gráfico de Pizza

#grafico de pizza "Respostas Entrevista" que pegou as respostas e organizou em rótulos e colunas
pie(respostas, main = "Respostas Entrevista", labels = c("69,23%", "30,77%"), col = c(4, 2))

#legenda no topo, completada com as cores 4(azul) e 2(vermelho) dizendo Não e Sim
legend("topright", fill = c(4, 2), legend = c("Não", "Sim"))


#Gráfico de Barras

barplot(respostas, main = "Respostas Entrevista", col = topo.colors(2))

legend("topright", fill = topo.colors(2), legend = c("Não", "Sim"))
#caso necessitar de horizontal, horiz=TRUE


#Gráficos Quantitativos:


#sample = cria um conjunto de dados aleatório
#size = quantidade de números
#replace = se pode repetir números ou não
idade = sample(18:54, size = 50, replace = T)
idade


#Histograma

#histograma com os valores do objeto idade
#xlab = intervalo das idades (eixo x)
#ylab = intervalo das frequências (eixo y)
hist(idade, breaks = 5, col = "blue", xlab = "Intervalos de Idades", ylab = "Frequência", main = "Histograma das Idades")


#Boxplot (um dos gráficos mais importantes da estatística)

boxplot(idade, main = "Boxplot das Idades", ylab = "Idades", xlab = "Fonte da Pesquisa", col = "blue")
