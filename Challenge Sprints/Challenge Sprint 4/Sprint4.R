#Arthur Hieda Cunha 551882, Henrique Marra Barbosa 97672, Lucas Bueno Taets Gustavo 552162, Leonardo Vaidotas de Araujo 550700, Fabricio Yukio Yamashiro 552188

#OBSERVAÇÃO: FOI CRIADA UMA BASE DE DADOS FICTÍCIA E NÃO MAPEADA
#POIS NÃO FOI ENTREGUE O PRIMEIRO SPRINT E TAMBÉM PARA UMA MELHOR
#ORGANIZAÇÃO DO TEMPO

set.seed(123)
n <- 100

#Variáveis que impactam nas pós-vendas
Custo_Manutencao <- rnorm(n, mean = 1000, sd = 200)  #Crie a variável Custo_Manutencao primeiro

dados_pos_vendas <- data.frame(
  Custo_Manutencao = Custo_Manutencao,
  Satisfacao_Cliente = 2 + 0.5 * Custo_Manutencao + rnorm(n, mean = 0, sd = 0.5),
  Qualidade_Servico = 2 + 0.2 * Custo_Manutencao + rnorm(n, mean = 0, sd = 0.1),
  Tempo_Resposta = rnorm(n, mean = 2, sd = 0.5),
  Disponibilidade_Pecas = sample(c("Sim", "Não"), n, replace = TRUE),
  Treinamento_Cliente = sample(c("Sim", "Não"), n, replace = TRUE),
  Avaliacao_Tecnica = 2 + 0.3 * Custo_Manutencao + rnorm(n, mean = 0, sd = 0.1),
  Custo_Manutencao = rnorm(n, mean = 1000, sd = 200)
)

#Variáveis que impactam nas pré-vendas
Renda_Cliente <- rnorm(n, mean = 40000, sd = 10000)

dados_pre_vendas <- data.frame(
  Idade_Cliente = sample(18:70, n, replace = TRUE),
  Renda_Cliente = Renda_Cliente,
  Tamanho_Fazenda = Renda_Cliente * rnorm(n, mean = 0.1, sd = 0.02),
  Experiencia_Agricultura = rnorm(n, mean = 10, sd = 2),
  Nivel_Educacao = sample(1:5, n, replace = TRUE),
  Clima_Regiao = sample(1:3, n, replace = TRUE),
  Preco_Equipamento = Renda_Cliente * rnorm(n, mean = 0.7, sd = 0.1)
)

#1)
Dados = dados_pre_vendas
#Gráfico de Disperção
plot(Dados$Renda_Cliente, Dados$Tamanho_Fazenda)
#Covariância
cov(Dados$Renda_Cliente, Dados$Tamanho_Fazenda)
#Correlação Linear de Pearson
cor(Dados$Renda_Cliente, Dados$Tamanho_Fazenda)
#Gráfico de correlação Linear de Pearson
correlation_matrix <- cor(dados_pre_vendas[c("Renda_Cliente", "Tamanho_Fazenda")])
corrplot(correlation_matrix, method = "number")
corrplot(correlation_matrix)
#Fazendo o Gráfico de forma mais bonita
plot(Dados$Renda_Cliente, Dados$Tamanho_Fazenda,
     xlab = "Renda do Cliente",
     ylab = "Tamanho da Fazenda",
     main = "Gráfico de Dispersão com a Reta de Regressão")
#Modelo de Regressão Linear
modelo = lm(Tamanho_Fazenda~Renda_Cliente, data=Dados) #lm = linear model
abline(modelo, col="red") # abline é usado para criar a linha no gráfico
#Analisando o modelo
summary(modelo)
#O p-value do Teste de F é igual a 2,2**-16
#R2 ajustado é igual a 0.6, esse é o número que mede a qualidade do ajuste,
#ou seja, quanto a Renda do Cliente explica o Tamanho da Fazenda, o número
#pode não ser tão alto pois não é garantido que o cliente use sua renda
#apenas para aumentar o tamanho, ele também pode investir essa renda para
#aumentar a qualidade de seus produtos
#H1 = (O modelo é significativo)

#Com base nos dados apresentados é possível ver que a renda do cliente 
#influencia no tamanho de sua fazendo, isso pode se dar pelo fato do acúmlo
#de capital que foi se valorizando e investido para o aumento das fazendas
#e na qualidade de seus produtos, é previsto que quanto maior for a renda
#do cliente maior será o tamanho de sua fazenda


#2)
#Plot, matriz de covariância e matriz de correlação
plot(dados_pos_vendas)

#Selecionar apenas as colunas numéricas para a matriz de covariância
dados_numericos <- dados_pos_vendas[, sapply(dados_pos_vendas, is.numeric)]
cov_matrix <- cov(dados_numericos)

#Matriz de Correlação Linear de Pearson
correlation_matrix <- cor(dados_numericos)
corrplot(correlation_matrix, method = "number")
corrplot(correlation_matrix)

#Modelo de regressão linear e gráfico 3D
modelo <- lm(Satisfacao_Cliente ~ Qualidade_Servico + Custo_Manutencao, data = dados_pos_vendas)
graph <- scatterplot3d(
  dados_pos_vendas$Satisfacao_Cliente ~ dados_pos_vendas$Qualidade_Servico + dados_pos_vendas$Custo_Manutencao,
  pch = 16, angle = 30, color = "steelblue", box = FALSE,
  xlab = "Qualidade Serviço", ylab = "Custo Manutenção", zlab = "Satisfação Cliente"
)
graph$plane3d(modelo, col = "black", draw_polygon = TRUE)

#Previsão
novos_dados <- data.frame(
  Qualidade_Servico = c(3, 4),  #Valores das variáveis explicativas
  Custo_Manutencao = c(900, 1100)  #Valores das variáveis explicativas
)

#Use o modelo de regressão linear para fazer a previsão
previsao <- predict(modelo, newdata = novos_dados)

#A variável 'previsao' agora conterá as previsões com base nos novos dados
print(previsao)