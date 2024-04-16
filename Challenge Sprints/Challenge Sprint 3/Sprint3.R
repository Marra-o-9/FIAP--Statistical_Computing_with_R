#Integrantes: Arthur Hieda Cunha, Henrique Marra Barbosa, Lucas Bueno Taets Gustavo, Julia Cristina Ferreira Silva, Fabricio Yukio Yamashiro, Leonardo Vaidotas de Araujo

#OBSERVAÇÃO: FOI CRIADA UMA BASE DE DADOS FICTÍCIA E NÃO MAPEADA
#POIS NÃO FOI ENTREGUE O PRIMEIRO SPRINT E TAMBÉM PARA UMA MELHOR
#ORGANIZAÇÃO DO TEMPO

#1
set.seed(123) 
n <- 100  

# Variáveis que impactam nas pré-vendas
dados_pre_vendas <- data.frame(
  Idade_Cliente = sample(18:70, n, replace = TRUE),  # Idade do cliente
  Renda_Cliente = rnorm(n, mean = 40000, sd = 10000),  # Renda mensal do cliente
  Tamanho_Fazenda = rnorm(n, mean = 50, sd = 10),  # Tamanho médio da fazenda
  Experiencia_Agricultura = rnorm(n, mean = 10, sd = 2),  # Anos de experiência em agricultura
  Nivel_Educacao = sample(1:5, n, replace = TRUE),  # Nível de educação (1 a 5)
  Clima_Regiao = sample(1:3, n, replace = TRUE),  # Tipo de clima na região (1 a 3)
  Preco_Equipamento = rnorm(n, mean = 50000, sd = 10000)  # Preço do equipamento agrícola
)

set.seed(456)  

# Variáveis que impactam nas pós-vendas
dados_pos_vendas <- data.frame(
  Satisfacao_Cliente = sample(1:5, n, replace = TRUE),  # Nível de satisfação do cliente (1 a 5)
  Qualidade_Servico = rnorm(n, mean = 4, sd = 0.5),  # Qualidade do serviço pós-venda (escala de 1 a 5)
  Tempo_Resposta = rnorm(n, mean = 2, sd = 0.5),  # Tempo médio de resposta em horas
  Disponibilidade_Pecas = sample(c("Sim", "Não"), n, replace = TRUE),  # Disponibilidade de peças de reposição
  Treinamento_Cliente = sample(c("Sim", "Não"), n, replace = TRUE),  # Treinamento oferecido ao cliente
  Avaliacao_Tecnica = rnorm(n, mean = 4, sd = 0.5),  # Avaliação técnica do equipamento (escala de 1 a 5)
  Custo_Manutencao = rnorm(n, mean = 1000, sd = 200)  # Custo médio de manutenção anual
)

#1
# a) Probabilidade da variável "Renda_Cliente" ser menor que a média
prob_a_var_renda <- pnorm(mean(dados_pre_vendas$Renda_Cliente), mean = mean(dados_pre_vendas$Renda_Cliente), sd = sd(dados_pre_vendas$Renda_Cliente))

# Classificação para a variável "Renda_Cliente" no item (a)
classificacao_var_a_renda <- if (prob_a_var_renda < 0.01) {
  "Improvável"
} else if (prob_a_var_renda < 0.5) {
  "Pouco Provável"
} else {
  "Provável"
}

# b) Probabilidade da variável "Satisfacao_Cliente" ser maior que a mediana
mediana_var_b <- median(dados_pos_vendas$Satisfacao_Cliente)
prob_b_var_satisfacao <- 1 - pnorm(mediana_var_b, mean = mean(dados_pos_vendas$Satisfacao_Cliente), sd = sd(dados_pos_vendas$Satisfacao_Cliente))

# Classificação para a variável "Satisfacao_Cliente" no item (b)
classificacao_var_b_satisfacao <- if (prob_b_var_satisfacao < 0.01) {
  "Improvável"
} else if (prob_b_var_satisfacao < 0.5) {
  "Pouco Provável"
} else {
  "Provável"
}

# c) Probabilidade da variável "Tempo_Resposta" estar entre a média - 2 * desvio padrão e a média + 2 * desvio padrão
prob_c_var_tempo_resposta <- pnorm(mean(dados_pos_vendas$Tempo_Resposta) + 2 * sd(dados_pos_vendas$Tempo_Resposta), 
                                   mean = mean(dados_pos_vendas$Tempo_Resposta), sd = sd(dados_pos_vendas$Tempo_Resposta)) -
  pnorm(mean(dados_pos_vendas$Tempo_Resposta) - 2 * sd(dados_pos_vendas$Tempo_Resposta), 
        mean = mean(dados_pos_vendas$Tempo_Resposta), sd = sd(dados_pos_vendas$Tempo_Resposta))

# Classificação para a variável "Tempo_Resposta" no item (c)
classificacao_var_c_tempo_resposta <- if (prob_c_var_tempo_resposta < 0.01) {
  "Improvável"
} else if (prob_c_var_tempo_resposta < 0.5) {
  "Pouco Provável"
} else {
  "Provável"
}

# Imprimir as probabilidades e classificações
cat("a) Probabilidade da Renda_Cliente ser menor que a média:", prob_a_var_renda, "\n")
cat("   Classificação:", classificacao_var_a_renda, "\n")

cat("b) Probabilidade da Satisfacao_Cliente ser maior que a mediana:", prob_b_var_satisfacao, "\n")
cat("   Classificação:", classificacao_var_b_satisfacao, "\n")

cat("c) Probabilidade do Tempo_Resposta é:", prob_c_var_tempo_resposta, "\n")
cat("   Classificação: Muito Provável", "\n")

#2

#Resultados probabilísticos desempenham um papel crucial na tomada de decisão em diversas áreas, e no contexto do exercício 01, onde examinamos as probabilidades de eventos relacionados a pré-vendas e pós-vendas, eles podem oferecer insights valiosos para orientar estratégias de negócios.
#Avaliação de Risco e Incerteza: As probabilidades permitem que as empresas avaliem o risco associado a diferentes variáveis. No caso do exercício, ao calcular a probabilidade da Renda_Cliente ser menor que a média, podemos identificar o quão arriscado é contar com uma renda abaixo da média em nossas projeções de vendas. Isso ajuda a empresa a se preparar para cenários adversos.
#Priorização de Ações: A classificação dos eventos em "Provável", "Pouco Provável" e "Improvável" facilita a priorização de ações. Por exemplo, se a probabilidade de insatisfação do cliente (Satisfacao_Cliente) ser maior que a mediana for "Provável", a empresa pode priorizar melhorias no atendimento ao cliente para evitar possíveis problemas.
#Ajuste de Metas e Expectativas: Com base nas probabilidades, é possível ajustar as metas e expectativas de desempenho. Se a probabilidade de alcançar determinada meta de vendas for "Pouco Provável", a empresa pode reconsiderar a meta ou desenvolver estratégias mais agressivas para atingi-la.
#Definição de Estratégias de Marketing: A compreensão das probabilidades relacionadas a variáveis como clima na região (Clima_Regiao) pode influenciar as estratégias de marketing. Se a probabilidade de condições climáticas desfavoráveis for alta, a empresa pode adaptar suas campanhas de marketing para abordar esses desafios.
#Otimização de Recursos: Com as probabilidades em mãos, as empresas podem otimizar o uso de recursos. Se a probabilidade de a disponibilidade de peças de reposição (Disponibilidade_Pecas) ser "Improvável" for alta, a empresa pode ajustar seus níveis de estoque e logística de acordo.
#Aprimoramento da Satisfação do Cliente: Probabilidades relacionadas à satisfação do cliente (Satisfacao_Cliente) podem guiar ações para melhorar a experiência do cliente. Se a probabilidade de insatisfação for elevada, a empresa pode investir em treinamento e suporte técnico.
#Redução de Custos: Resultados probabilísticos também podem indicar áreas onde a redução de custos é viável. Se a probabilidade de custo médio de manutenção anual (Custo_Manutencao) ser menor do que o esperado for alta, a empresa pode buscar maneiras de otimizar a manutenção.
#Análise de Tendências Futuras: Com base nas probabilidades históricas, é possível fazer previsões de tendências futuras e planejar estratégias de longo prazo.
#Melhoria Contínua: Acompanhar as probabilidades ao longo do tempo permite que a empresa avalie o impacto de suas ações e ajuste suas estratégias de acordo.
#Base para Decisões Fundamentadas: Em resumo, os resultados probabilísticos fornecem uma base sólida para a tomada de decisões fundamentadas, ajudando as empresas a navegar com confiança em ambientes complexos e incertos.

#3
#a)

Amostra = c(23, 42, 69, 24, 45, 28, 57, 70, 30, 39, 24, 55, 22, 48, 35, 55, 48, 27, 40, 31)

media_amostral = mean(Amostra)
media_populacional = 36.26
nivel_significancia = 0.05
tamanho_amostra = 20
desvio_padrao = 6.45

#H0 <= media_amostral Aceita
#H1 > media_amostral Rejeita

Zc = (media_populacional-media_amostral) / (desvio_padrao/sqrt(tamanho_amostra))
Zc

Za = qnorm(nivel_significancia)
Za

#A média amostral num nível de significância de 5% é menor que a média ou igual a média populacional

#b) 

Amostra = c(23, 42, 69, 24, 45, 28, 57, 70, 30, 39, 24, 55, 22, 48, 35, 55, 48, 27, 40, 31, 23, 43, 67, 34, 22)

media_amostral = mean(Amostra)
media_populacional = 36.26
nivel_significancia = 0.10
tamanho_amostra = 25
desvio_padrao = 6.45

#H0 >= media_amostral Aceita
#H1 < media_amostral Rejeita

Zc = (media_populacional-media_amostral) / (desvio_padrao/sqrt(tamanho_amostra))
Zc

Za = qnorm(nivel_significancia)
Za

#A média amostral num nível de significância de 10% é maior ou igual que a média populacional

#c)

Amostra = c(23, 42, 69, 24, 45, 28, 57, 70, 30, 39, 24, 55, 22, 48, 35)

media_amostral = mean(Amostra)
media_populacional = 36.26
nivel_significancia = 0.01
tamanho_amostra = 15
desvio_padrao = 6.45

#H0 = media_amostral Rejeita
#H1 != media_amostral Aceita

Zc = (media_populacional-media_amostral) / (desvio_padrao/sqrt(tamanho_amostra))
Zc

Za = qnorm(nivel_significancia/2)
Za

#A média amostral num nível de significância de 1% mudou em comparação com a média populacoinal

#04) 

#Os testes de hipótese realizados com as idades dos clientes da empresa proporcionam informações valiosas para a tomada de decisões estratégicas. 
#Primeiramente, consideramos a situação em que a média amostral é menor que a média populacional de referência, com um nível de significância de 5% e uma amostra de tamanho 20. O teste indicou que, a 5% de significância, a média amostral é estatisticamente menor ou igual à média populacional, fornecendo evidências para essa afirmação.
#Em outro cenário, consideramos a possibilidade de a média amostral ser maior que a média populacional de referência, com um nível de significância de 10% e uma amostra de tamanho 25. 
#O teste demonstrou que, a 10% de significância, a média amostral é estatisticamente maior que a média populacional, o que pode indicar um possível aumento nas idades dos clientes.
#Além disso, exploramos a situação em que a média amostral difere da média populacional de referência, com um nível de significância de 1% e uma amostra de tamanho 15. 
#O teste concluiu que, a 1% de significância, a média amostral é estatisticamente diferente da média populacional, sugerindo que mudanças significativas podem estar ocorrendo nas idades dos clientes.
#Esses testes de hipótese são cruciais para a empresa, pois permitem avaliar se intervenções ou estratégias implementadas para a faixa etária dos clientes estão surtindo efeito, seja para manter, aumentar ou diminuir a média de idade. 
#As análises estatísticas fornecem bases sólidas para a tomada de decisões informadas, guiando a empresa na definição de estratégias que possam atender às necessidades e expectativas dos clientes de maneira mais eficaz.
#É fundamental que a empresa continue monitorando as idades dos clientes e realizando testes de hipótese periódicos para garantir que as estratégias adotadas estejam alinhadas com os objetivos organizacionais, 
#otimizando a satisfação e fidelidade dos clientes e, consequentemente, o sucesso do negócio.
