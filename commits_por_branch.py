import subprocess
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
import os

os.makedirs("relatorios/commits", exist_ok=True)

commits = []

# Coleta commits de cada branch remota
branches = subprocess.check_output(["git", "branch", "-r"], text=True).splitlines()

for br in branches:
    br = br.strip()
    if br == "origin/HEAD":
        continue
    aluno = br.replace("origin/", "")

    print(f"🔍 Coletando commits de {aluno}...")

    log_cmd = ["git", "log", "--pretty=format:%an|%ad", "--date=short", br]
    try:
        output = subprocess.check_output(log_cmd, text=True)
        for line in output.strip().split("\n"):
            autor, data = line.split("|")
            commits.append({"Aluno": aluno, "Autor": autor.strip(), "Data": data.strip()})
    except subprocess.CalledProcessError:
        print(f"⚠️  Sem commits na branch {aluno}")

# Processa DataFrame
df = pd.DataFrame(commits)
df["Data"] = pd.to_datetime(df["Data"])

# Frequência por dia
freq_dia = df.groupby(["Data", "Aluno"]).size().reset_index(name="Commits")
plt.figure(figsize=(14, 6))
sns.lineplot(data=freq_dia, x="Data", y="Commits", hue="Aluno", marker="o")
plt.title("Frequência de Commits por Dia (por Branch)")
plt.xlabel("Data")
plt.ylabel("Commits")
plt.xticks(rotation=45)
plt.tight_layout()
plt.savefig("relatorios/commits/commits_por_dia.png")
plt.close()

# Total por aluno (branch)
freq_total = df.groupby("Aluno").size().reset_index(name="Total de Commits")
plt.figure(figsize=(10, 6))
sns.barplot(data=freq_total, x="Total de Commits", y="Aluno", palette="crest")
plt.title("Total de Commits por Aluno (Branch)")
plt.tight_layout()
plt.savefig("relatorios/commits/commits_por_aluno.png")
plt.close()

# Exporta CSV
freq_total.to_csv("relatorios/commits/total_commits.csv", index=False)
print("✅ Relatórios de commits por branch gerados.")
