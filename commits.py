from datetime import datetime
import subprocess
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
import os

# Cria pastas de saída
os.makedirs("relatorios/commits", exist_ok=True)

# Extrai dados do git log
def get_git_commits():
    output = subprocess.check_output(
        ["git", "log", "--pretty=format:%an|%ad", "--date=short"],
        text=True
    )
    linhas = output.strip().split("\n")
    data = [linha.split("|") for linha in linhas]
    df = pd.DataFrame(data, columns=["Autor", "Data"])
    df["Data"] = pd.to_datetime(df["Data"])
    return df

df_commits = get_git_commits()

# Gráfico de frequência por dia
freq_diaria = df_commits.groupby(["Data", "Autor"]).size().reset_index(name="Commits")
plt.figure(figsize=(14, 6))
sns.lineplot(data=freq_diaria, x="Data", y="Commits", hue="Autor", marker="o")
plt.title("Frequência de Commits por Dia")
plt.xlabel("Data")
plt.ylabel("Número de Commits")
plt.xticks(rotation=45)
plt.tight_layout()
plt.savefig("relatorios/commits/commits_por_dia.png")
plt.close()

# Gráfico total por aluno
freq_total = df_commits["Autor"].value_counts().reset_index()
freq_total.columns = ["Aluno", "Total de Commits"]
plt.figure(figsize=(10, 6))
sns.barplot(data=freq_total, x="Total de Commits", y="Aluno", palette="viridis")
plt.title("Total de Commits por Aluno")
plt.tight_layout()
plt.savefig("relatorios/commits/commits_por_aluno.png")
plt.close()

# Exportar CSV com totais
freq_total.to_csv("relatorios/commits/total_commits.csv", index=False)
print("Relatórios de commits gerados.")
