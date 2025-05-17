import pandas as pd
from itertools import combinations
import os
import difflib

# Carrega os dados
submissions = {}
base_dir = "submissions"

for aluno in os.listdir(base_dir):
    path = os.path.join(base_dir, aluno, "jogo.por")
    if os.path.exists(path):
        with open(path, encoding="utf-8", errors="ignore") as f:
            submissions[aluno] = f.read()

# Compara os pares
resultados = []
for (a1, t1), (a2, t2) in combinations(submissions.items(), 2):
    ratio = difflib.SequenceMatcher(None, t1, t2).ratio()
    resultados.append((a1, a2, round(ratio * 100, 2)))

# Salva em CSV para o gráfico
df = pd.DataFrame(resultados, columns=["Aluno 1", "Aluno 2", "Similaridade (%)"])
df.to_csv("similaridade.csv", index=False)
