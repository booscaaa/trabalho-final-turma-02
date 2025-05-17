import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

# Lê a tabela gerada por compare.py
df = pd.read_csv("similaridade.csv")  # ou converta o .md em CSV

# Ordenar pelos mais semelhantes
df_sorted = df.sort_values(by="Similaridade (%)", ascending=False).head(20)

# Gráfico
plt.figure(figsize=(12, 8))
sns.barplot(
    data=df_sorted,
    x="Similaridade (%)",
    y=df_sorted["Aluno 1"] + " × " + df_sorted["Aluno 2"]
)
plt.title("Top 20 Similaridades entre Alunos")
plt.xlabel("Similaridade (%)")
plt.ylabel("Par de Alunos")
plt.tight_layout()

# Salvar como imagem
plt.savefig("similaridade.png")
