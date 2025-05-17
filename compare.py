import os
import difflib
import pandas as pd
from itertools import combinations

base_dir = "submissions"
out_csv = "relatorios/resumo.csv"
html_dir = "relatorios/html"
blocos_dir = "relatorios/blocos"
os.makedirs(html_dir, exist_ok=True)
os.makedirs(blocos_dir, exist_ok=True)

submissions = {}
for aluno in os.listdir(base_dir):
    path = os.path.join(base_dir, aluno, "jogo.por")
    if os.path.exists(path):
        with open(path, encoding="utf-8", errors="ignore") as f:
            submissions[aluno] = f.read()

resultados = []

for (a1, t1), (a2, t2) in combinations(submissions.items(), 2):
    matcher = difflib.SequenceMatcher(None, t1, t2)
    ratio = round(matcher.ratio() * 100, 2)
    total_dupl = sum([size for _, _, size in matcher.get_matching_blocks()])
    densidade = round((total_dupl / max(len(t1), len(t2))) * 100, 2)

    blocos = []
    for block in matcher.get_matching_blocks():
        _, start_b, size = block
        if size > 20:
            trecho = t2[start_b:start_b+size].strip()
            if len(trecho.splitlines()) < 20:
                blocos.append(trecho)

    bloco_file = f"{blocos_dir}/{a1}_vs_{a2}.md"
    with open(bloco_file, "w", encoding="utf-8") as f:
        for trecho in blocos:
            f.write("### Trecho duplicado:\n")
            f.write("```\n")
            f.write(trecho + "\n")
            f.write("```\n\n")

    html_diff = difflib.HtmlDiff().make_file(t1.splitlines(), t2.splitlines(), a1, a2)
    with open(f"{html_dir}/{a1}_vs_{a2}.html", "w", encoding="utf-8") as f:
        f.write(html_diff)

    resultados.append({
        "Aluno 1": a1,
        "Aluno 2": a2,
        "Similaridade (%)": ratio,
        "Chars duplicados": total_dupl,
        "Densidade de duplicação (%)": densidade,
        "Qtd blocos grandes": len(blocos)
    })

os.makedirs("relatorios", exist_ok=True)
df = pd.DataFrame(resultados)
df.to_csv(out_csv, index=False)
print("Relatório CSV salvo em:", out_csv)
