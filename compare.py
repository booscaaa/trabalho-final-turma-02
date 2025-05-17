import os
import difflib
from itertools import combinations

def read_file(path):
    with open(path, encoding='utf-8', errors='ignore') as f:
        return f.read()

submissions = {}
base_dir = "submissions"

# Carrega todos os arquivos
for aluno in os.listdir(base_dir):
    path = os.path.join(base_dir, aluno, "jogo.por")
    if os.path.exists(path):
        submissions[aluno] = read_file(path)

# Compara todos os pares
relatorio = []
for (a1, t1), (a2, t2) in combinations(submissions.items(), 2):
    ratio = difflib.SequenceMatcher(None, t1, t2).ratio()
    relatorio.append((a1, a2, round(ratio * 100, 2)))

# Ordena por maior similaridade
relatorio.sort(key=lambda x: x[2], reverse=True)

# Gera arquivo Markdown
with open("similaridade.md", "w") as f:
    f.write("| Aluno 1 | Aluno 2 | Similaridade (%) |\n")
    f.write("|---------|---------|------------------|\n")
    for a1, a2, score in relatorio:
        f.write(f"| {a1} | {a2} | {score} |\n")

print("Relatório gerado: similaridade.md")
