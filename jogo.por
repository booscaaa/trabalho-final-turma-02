programa {
    inclua biblioteca Util --> u

    cadeia nomeHeroi
    cadeia nomeClasse[3] = {"Guerreiro", "Mago", "Arqueiro"}
    inteiro vida[3] = {120, 80, 100}
    inteiro ataque[3] = {15, 25, 20}
    inteiro defesa[3] = {10, 5, 8}
    inteiro xp[3] = {0, 0, 0}
    inteiro nivel[3] = {1, 1, 1}
    inteiro classeEscolhida

    funcao inicio() {
        menu()
    }

    funcao menu() {
        inteiro opcao
        faca {
            limpa()
            escreva("┌────────────────────────────┐\n")
            escreva("│     A JORNADA DO HERÓI     │\n")
            escreva("├────────────────────────────┤\n")
            escreva("│   1. Novo Jogo             │\n")
            escreva("│   2. Créditos              │\n")
            escreva("│   3. Sair                  │\n")
            escreva("└────────────────────────────┘\n")
            escreva("\n")
            leia(opcao)

            se (opcao == 1) {
                novoJogo()
            }
            se (opcao == 2) {
                creditos()
                u.aguarde(5000)
                menu()
            }
            se (opcao == 3) {
                ("Saindo do jogo.")
                u.aguarde(500)
                limpa()
                escreva("Saindo do jogo..")
                u.aguarde(500)
                limpa()
                escreva("Saindo do jogo...")
                u.aguarde(500) 
                pare
            }
        } enquanto (opcao < 1 ou opcao > 3)
    }

    funcao creditos() {
        limpa()
        escreva("┌────────────────────────────┐\n")
        escreva("│          CRÉDITOS          │\n")
        escreva("├────────────────────────────┤\n")
        escreva("│ Desenvolvedor: Giovani.S   │\n")
        escreva("│ Ano: 2025                  │\n")
        escreva("└────────────────────────────┘\n")
    }

    funcao novoJogo() {
        carregamentoJogo()
        criacaoDoHeroi()
        batalhaInicial()
        menu()
    }

    funcao carregamentoJogo() {
        limpa()
        escreva("Iniciando novo jogo.")
        u.aguarde(500)
        limpa()
        escreva("Iniciando novo jogo..")
        u.aguarde(500)
        limpa()
        escreva("Iniciando novo jogo...")
        u.aguarde(500)
    }

    funcao criacaoDoHeroi() {
        limpa()
        escreva("┌────────────────────────────┐\n")
        escreva("│   CRIAÇÃO DO HERÓI         │\n")
        escreva("├────────────────────────────┤\n")
        escreva("│ Digite o nome do seu herói:│\n")
        escreva("└────────────────────────────┘\n")
        leia(nomeHeroi)
        limpa ()
        
        escreva("┌────────────────────────────┐\n")
        escreva("│   ESCOLHA SUA CLASSE       │\n")
        escreva("├────────────────────────────┤\n")
        escreva("│ 1. Guerreiro               │\n")
        escreva("│ 2. Mago                    │\n")
        escreva("│ 3. Arqueiro                │\n")
        escreva("└────────────────────────────┘\n")
        leia(classeEscolhida)

        se (classeEscolhida == 1) {
            vida[0] = 120
            ataque[0] = 15
            defesa[0] = 10
        }
        se (classeEscolhida == 2) {
            vida[0] = 80
            ataque[0] = 25
            defesa[0] = 5
        }
        se (classeEscolhida == 3) {
            vida[0] = 100
            ataque[0] = 20
            defesa[0] = 8
        }

        limpa()
        escreva("Seu herói foi criado!\n")
        escreva("Nome: " + nomeHeroi + "\n")
        escreva("Classe: " + nomeClasse[classeEscolhida - 1] + "\n")
        escreva("Vida: " + vida[0] + "\n")
        escreva("Ataque: " + ataque[0] + "\n")
        escreva("Defesa: " + defesa[0] + "\n")
        u.aguarde(2000)
    }

    funcao batalhaInicial() {
        // Implementação básica da batalha
        limpa()
        escreva("┌────────────────────────────┐\n")
        escreva("│       BATALHA              │\n")
        escreva("├────────────────────────────┤\n")
        escreva("│ Seu herói está pronto!     │\n")
        escreva("└────────────────────────────┘\n")
        u.aguarde(2000)
    }
}