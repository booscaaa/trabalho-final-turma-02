import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

df = pd.read_csv("relatorios/resumo.csv")

df_sorted = df.sort_values(by="Similaridade (%)", ascending=False).head(20)

plt.figure(figsize=(12, 8))
sns.barplot(
    data=df_sorted,
    x="Similaridade (%)",
    y=df_sorted["Aluno 1"] + " × " + df_sorted["Aluno 2"],
    palette="coolwarm"
)
plt.title("Top 20 Similaridades entre Alunos")
plt.xlabel("Similaridade (%)")
plt.ylabel("Par de Alunos")
plt.tight_layout()
plt.savefig("relatorios/similaridade.png")
print("Gráfico salvo em relatorios/similaridade.png")
