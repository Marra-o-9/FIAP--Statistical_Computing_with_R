#Arthur Hieda Cunha rm551882
#Henrique Marra Barbosa rm97672
#Lucas Bueno Taets Gustavo rm552162

#TROCAR O CAMINHO DO ARQUIVO PARA O CAMINHO DE SEU COMPUTADOR
caminho_do_arquivo <- "C:/Users/Micro/Desktop/Art/FIAP/diabetes.csv" 
dados <- read.csv(caminho_do_arquivo)

#1
#A
#Calcular a probabilidade da variável ser menor que a média
prob <- pnorm(mean(dados$BMI), mean = mean(dados$BMI), 
              sd = sd(dados$BMI))

#Classificar o evento quanto ao resultado probabilístico
classificacao <- if (prob < 0.01) {
  "Improvável"
} else if (prob < 0.5) {
  "Pouco Provável"
} else {
  "Provável"
}

#Exibir a probabilidade e a classificação
cat("Probabilidade:", prob, "\n")
cat("Classificação:", classificacao, "\n")

#B
#Calcular a probabilidade da variável ser maior que a mediana
prob_mediana <- 1 - pnorm(median(dados$BMI), mean = mean(dados$BMI), 
                          sd = sd(dados$BMI))

#Classificar o evento quanto ao resultado probabilístico
classificacao_mediana <- if (prob_mediana < 0.01) {
  "Improvável"
} else if (prob_mediana < 0.5) {
  "Pouco Provável"
} else if (prob_mediana == 0.5) {
  "Provável"
} else if (prob_mediana > 0.5) {
  "Muito Provável"
}

#Exibir a probabilidade e a classificação
cat("Probabilidade (maior que a mediana):", prob_mediana, "\n")
cat("Classificação:", classificacao_mediana, "\n")

#C
#Calcular a probabilidade do BMI estar entre a média menos três vezes o desvio padrão e a média mais três vezes o desvio padrão
prob_intervalo <- pnorm(mean(dados$BMI) + 3 * sd(dados$BMI), mean = mean(dados$BMI), sd = sd(dados$BMI)) -
  pnorm(mean(dados$BMI) - 3 * sd(dados$BMI), mean = mean(dados$BMI), sd = sd(dados$BMI))

#Classificar o evento quanto ao resultado probabilístico
classificacao_intervalo <- if (prob_intervalo < 0.01) {
  "Improvável"
} else if (prob_intervalo < 0.5) {
  "Pouco Provável"
} else if (prob_intervalo == 0.5) {
  "Provável"
} else if (prob_intervalo > 0.5) {
  "Muito Provável"
}

#Exibir a probabilidade e a classificação
cat("Probabilidade (entre a média +/- 3 * desvio padrão):", prob_intervalo, "\n")
cat("Classificação:", classificacao_intervalo, "\n")

#2
#A
Amostra = c(40,25,28,27,24,25,30,25,30,24,25,34,26,28,33,33,21,23,23,28)
media_populacional = mean(dados$BMI)
media_amostral = mean(Amostra)
nivel_significancia = 0.06
tamanho_amostra = 20
desvio_padrao = sd(dados$BMI)

Zc = (media_populacional-media_amostral) / (desvio_padrao/sqrt(tamanho_amostra))
Zc

Za = qnorm(nivel_significancia)
Za

ifelse (Zc < Za, "Rejeita Ho", "Aceita Ho")

#Portanto é menor

#B
Amostra = c(40,25,28,27,24,25,30,25,30,24,25,34,26,28,33,33,21,23,23,28,27,31,24,26,23)
media_populacional = mean(dados$BMI)
media_amostral = mean(Amostra)
nivel_significancia = 0.09
tamanho_amostra = 25
desvio_padrao = sd(dados$BMI)

Zc = (media_populacional-media_amostral) / (desvio_padrao/sqrt(tamanho_amostra))
Zc

Za = qnorm(nivel_significancia)
Za

ifelse (Zc < Za, "Rejeita Ho", "Aceita Ho")

#Portanto é maior

#C
Amostra = c(40,25,28,27,24,25,30,25,30,24,25,34,26,28,33)
media_populacional = mean(dados$BMI)
media_amostral = mean(Amostra)
nivel_significancia = 0.02/2
tamanho_amostra = 15
desvio_padrao = sd(dados$BMI)

Zc = (media_populacional-media_amostral) / (desvio_padrao/sqrt(tamanho_amostra))
Zc

Za = qnorm(nivel_significancia)
Za

ifelse (Zc < Za | Zc > (-Za), "Rejeita Ho", "Aceita Ho")

#Portanto é igual

#3) Análise Bivariada

Dados = dados

# a) Gráfico de Dispersão
plot(Dados$Age, Dados$BMI,
     xlab = "Age",
     ylab = "BMI",
     main = "Gráfico de Dispersão")

# b) Covariância e Correlação Linear de Pearson
covariancia <- cov(Dados$Age, Dados$BMI)
correlacao_pearson <- cor(Dados$Age, Dados$BMI)

# c) Gráfico de Correlação Linear de Pearson
correlation_matrix <- cor(Dados[c("Age", "BMI")])
corrplot(correlation_matrix, method = "number")

# d) Reta da Regressão Linear Simples
modelo_regressao <- lm(BMI ~ Age, data = Dados)
abline(modelo_regressao, col = "red")

# e) Verificação da adequação do modelo
r_squared <- summary(modelo_regressao)$r.squared
f_test <- summary(modelo_regressao)$fstatistic

# f) Previsão
novo_dado <- data.frame(Age = 30)
previsao <- predict(modelo_regressao, novo_dado)

# Exibir resultados
cat("Covariância:", covariancia, "\n")
cat("Correlação Linear de Pearson:", correlacao_pearson, "\n")
cat("R²:", r_squared, "\n")
cat("Estatística F (Teste F):", f_test, "\n")
cat("Previsão para Age 30 (BMI estimado):", previsao, "\n")

#4
# a) Gráfico de Dispersão
pairs(dados[c("Diabetes_012", "BMI", "Age")], main = "Gráfico de Dispersão")

# b) Matriz de Covariância e Matriz de Correlação Linear de Pearson
covariancia_matrix <- cov(dados[c("Diabetes_012", "BMI", "Age")])
correlacao_pearson_matrix <- cor(dados[c("Diabetes_012", "BMI", "Age")])

# c) Gráfico de Correlação Linear de Pearson
corrplot(correlacao_pearson_matrix, method = "number")

# d) Regressão Linear Múltipla
modelo_regressao_multivariada <- lm(Diabetes_012 ~ BMI + Age, data = dados)

# e) Verificação da adequação do modelo
r_squared <- summary(modelo_regressao_multivariada)$r.squared
f_test <- summary(modelo_regressao_multivariada)$fstatistic

# f) Previsão com duas variáveis explicativas
novos_dados <- data.frame(BMI = c(25, 30), Age = c(40, 50))
previsao <- predict(modelo_regressao_multivariada, newdata = novos_dados)

#Exibir resultados
cat("Matriz de Covariância:\n", covariancia_matrix, "\n\n")
cat("Matriz de Correlação Linear de Pearson:\n", correlacao_pearson_matrix, "\n\n")
cat("R²:", r_squared, "\n")
cat("Estatística F (Teste F):", f_test, "\n")
cat("Previsão para novos dados:\n", previsao, "\n")