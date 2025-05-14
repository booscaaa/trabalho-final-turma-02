# 🎮 Projeto de RPG em Portugol Studio: A Jornada do Herói

## 📖 Enredo

Há muito tempo, no Reino de **Eldoria**, a paz era mantida pela mística **Pedra da Luz**, protegida pelos Anciãos do Castelo Dourado. 

Um dia, uma força sombria conhecida como **O Devastador** invadiu o reino, roubando a relíquia sagrada e mergulhando as terras em trevas e caos. Vilas foram saqueadas, florestas corrompidas, e criaturas sombrias começaram a vagar pelas regiões.

Diante da crise, uma antiga profecia se cumpriu: **um herói escolhido surgirá das sombras para restaurar a luz**. Você é esse herói.

Sua missão é atravessar cinco regiões dominadas pelo mal, enfrentando inimigos, evoluindo suas habilidades e se preparando para confrontar **O Devastador** no Castelo Dourado. A jornada será repleta de perigos, escolhas e batalhas. Seu destino e o de Eldoria estão entrelaçados.

---

## 🌍 Regiões do Reino (em ordem linear)

1. **Floresta da Névoa** – Criaturas ocultas atacam os viajantes. Local sombrio e traiçoeiro.
2. **Vila Abandonada** – Antiga comunidade agora infestada de ladrões e almas perdidas.
3. **Caverna Sombria** – Ecos de monstros antigos guardam os segredos do passado.
4. **Pântano dos Lamentos** – Terreno instável, cheio de armadilhas e espectros venenosos.
5. **Castelo Dourado** – Lar do Devastador. Última esperança de Eldoria.

---

## 👤 Criação do Herói

### Classes disponíveis:

- **Guerreiro**: Foco em vida e defesa. Ideal para resistência prolongada.
- **Mago**: Ataque poderoso, porém frágil. Especialista em dano rápido.
- **Arqueiro**: Equilibrado entre ataque e mobilidade. Versátil.

### Atributos principais:
- **Nome**
- **Classe**
- **Vida**
- **Ataque**
- **Defesa**
- **XP**
- **Nível**

---

## 🔧 Tarefas do Projeto

### 🎮 Estrutura inicial do jogo
- Criar um menu principal com as opções:
  1. Novo Jogo
  2. Créditos
  3. Sair
- Exibir introdução narrativa do jogo
- Permitir o jogador digitar o nome do herói

---

### 🛡️ Registro do herói
- Criar estrutura de dados para armazenar os atributos do herói
- Permitir escolha de classe com atribuição de valores diferentes para cada classe
- Exibir o status inicial do personagem após a criação

---

### ⚔️ Batalha
- Criar estrutura de dados para inimigos
- Definir inimigos com atributos (vida, ataque, defesa, XP)
- Criar função de combate com turnos alternados:
  - Jogador ataca
  - Inimigo ataca
  - Exibir dano, vida restante
  - Determinar vitória ou derrota
- Adicionar vetor com diferentes inimigos para serem sorteados

---

### 🎯 Sistema de progresso
- Criar sistema de XP e evolução de nível
- Ao acumular XP suficiente, subir de nível
- Permitir escolha de atributo para melhorar (vida, ataque ou defesa)

---

### 🧭 Exploração do reino
- Criar vetor de regiões
- Exibir nome e narrativa de cada região
- Sortear de 1 a 3 batalhas por região
- Avançar automaticamente para a próxima após vencer

---

### 🌟 Eventos especiais
- Após batalhas ou regiões, sortear eventos como:
  - Encontrar poção (cura)
  - Descansar (cura parcial)
  - Escolher entre recompensa de XP ou vida

---

### 👑 Chefe final
- Criar chefe “O Devastador” com atributos altos
- Implementar habilidade especial: curar vida a cada turno
- Exibir texto narrativo especial de batalha
- Exibir mensagem de vitória ou derrota ao final

---

### 🧠 Personalizações e desafios 
- Criar itens (armas ou poções) que o jogador pode usar
- Adicionar um “modo difícil” com inimigos mais fortes

---

## ✅ Requisitos mínimos de entrega

- Menu funcional
- Criação e exibição do herói
- Batalha com pelo menos 5 inimigos diferentes
- Sistema de XP e evolução
- Narrativa com 5 regiões
- Chefe final com lógica especial
- Código bem organizado com funções e comentários

---

## 📌 Observações
- O jogo deve rodar no console do Portugol Studio
- O projeto pode ser feito em grupo ou individual
- Criatividade e organização serão valorizadas

---

### 🎥 Apresentação do Jogo

- Criar slides abordando:
    - Sua versão única da história do jogo
    - História do personagem principal
    - Descrição das regiões com elementos visuais
    - Mecânicas especiais do jogo
    - Desafios do desenvolvimento
    - Demonstração do jogo
    - Melhorias futuras

### 📋 Requisitos do GitHub
- Criar uma branch neste repositório público no GitHub
- Manter um histórico claro de commits mostrando o progresso do projeto
- Incluir:
  - Código fonte em um PR neste repositório
  - README.md com descrição do projeto
  - Pasta de documentação