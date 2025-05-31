programa {
    inclua biblioteca Util --> u
    inclua biblioteca Matematica --> mat
 
   funcao inicio() {
        configurarInimigos()
        contarHistoria()
        menu()
    }

    cadeia nomeHeroi
    inteiro indiceClasseHeroi // 0-Guerreiro 1-Mago 2-Arqueiro
    inteiro vidaHeroiAtual
    inteiro vidaHeroiMaxima
    inteiro ataqueHeroiAtual
    inteiro defesaHeroiAtual
    inteiro xpHeroiAtual
    inteiro nivelHeroiAtual
    inteiro xpParaProximoNivel
  
    // Classes Base
    cadeia NOME_CLASSE[3] = {"Guerreiro", "Mago", "Arqueiro"}
    inteiro VIDA_BASE[3] = {120, 80, 100}
    inteiro ATAQUE_BASE[3] = {15, 25, 20}
    inteiro DEFESA_BASE[3] = {10, 5, 8}

    // Inimigos
    cadeia NOME_INIMIGO[6] // 5 normais + 1 chefe
    inteiro VIDA_INIMIGO[6]
    inteiro ATAQUE_INIMIGO[6]
    inteiro DEFESA_INIMIGO[6]
    inteiro XP_INIMIGO[6]

    // Regiões
    cadeia NOME_REGIAO[5] = {"Floresta da Névoa", "Vila Abandonada", "Caverna Sombria", "Pântano dos Lamentos", "Castelo Dourado"}
    cadeia DESCRICAO_REGIAO[5] = {
        "Você adentra a Floresta da Névoa, onde árvores retorcidas e uma névoa densa dificultam a visão. Criaturas espreitam nas sombras.",
        "A Vila Abandonada parece um eco fantasma de tempos melhores. Agora, apenas ruínas e o som do vento servem de lar para ladrões e desesperados.",
        "A escuridão da Caverna Sombria engole a luz. Ecos distantes sugerem que monstros antigos ainda residem aqui, guardando segredos perdidos.",
        "O Pântano dos Lamentos é um terreno traiçoeiro, com águas paradas e um ar pesado. Dizem que espectros venenosos assombram este lugar.",
        "Finalmente, o Castelo Dourado se ergue à distância, uma fortaleza imponente e corrompida. O Devastador aguarda em seu interior."
    }
    inteiro regiaoAtual
    logico jogoEmAndamento 

    //FUNÇÕES DE CONFIGURAÇÃO INICIAL
    funcao configurarInimigos() {
        NOME_INIMIGO[0] = "Goblin Sorrateiro"
        VIDA_INIMIGO[0] = 30
        ATAQUE_INIMIGO[0] = 8
        DEFESA_INIMIGO[0] = 2
        XP_INIMIGO[0] = 25

        // Inimigo 1: Lobo Faminto
        NOME_INIMIGO[1] = "Lobo Faminto"
        VIDA_INIMIGO[1] = 45
        ATAQUE_INIMIGO[1] = 12
        DEFESA_INIMIGO[1] = 4
        XP_INIMIGO[1] = 35

        // Inimigo 2: Bandido da Estrada
        NOME_INIMIGO[2] = "Bandido da Estrada"
        VIDA_INIMIGO[2] = 60
        ATAQUE_INIMIGO[2] = 10
        DEFESA_INIMIGO[2] = 6
        XP_INIMIGO[2] = 45

        // Inimigo 3: Aranha Gigante
        NOME_INIMIGO[3] = "Aranha Gigante Venenosa"
        VIDA_INIMIGO[3] = 70
        ATAQUE_INIMIGO[3] = 18
        DEFESA_INIMIGO[3] = 5
        XP_INIMIGO[3] = 55

        // Inimigo 4: Espectro Lamentador
        NOME_INIMIGO[4] = "Espectro Lamentador"
        VIDA_INIMIGO[4] = 50
        ATAQUE_INIMIGO[4] = 22 // Ataque alto, pouca defesa
        DEFESA_INIMIGO[4] = 3
        XP_INIMIGO[4] = 65

        // Inimigo 5: O Devastador
        NOME_INIMIGO[5] = "O Devastador"
        VIDA_INIMIGO[5] = 350 
        ATAQUE_INIMIGO[5] = 35
        DEFESA_INIMIGO[5] = 15
        XP_INIMIGO[5] = 0 // Não dá XP apenas a vitória
    }

    funcao contarHistoria(){
        inteiro opcao
        cadeia opcao

        escreva("Pular História?\n")
        escreva("\n")
        escreva("1-Sim\n")
        escreva("2-Não\n")
        escreva("\nEscolha uma opção: ")
        leia(opcao)

        se (opcao == 1) {
            limpa()
            u.aguarde(500)
            menu()
        } 
        
        senao se (opcao == 2) {
            limpa()
            u.aguarde(500)
            escreva("\nHá eras incontáveis, o Reino de Eldoria florescia sob a proteção da lendária Pedra da Luz...\n") // Resumido para brevidade na resposta
            u.aguarde(3000)
            limpa()
            escreva("\nMas a escuridão tem paciência...\n")
            u.aguarde(1500)
            limpa()
            escreva("\nDas profundezas esquecidas surgiu O Devastador...\n")
            u.aguarde(3000)
            escreva("\nAs florestas, antes vivas, apodreceram...\n")
            u.aguarde(2500)
            limpa()
            escreva("\nMas nem todas as lendas morrem...\n")
            u.aguarde(1500)
            limpa()
            escreva("\nEm meio ao caos, a antiga profecia ressurge... Esse herói... é você.\n")
            u.aguarde(2500)
            escreva("\nVocê deve cruzar as cinco regiões corrompidas... O futuro de Eldoria está em suas mãos.\n")
            u.aguarde(3000)
            limpa()
            escreva("\nPrepare-se.\nA lenda começa agora!\n")
            u.aguarde(1500)
            limpa()
            menu()
        } 
        
        senao {
            escreva("Opção inválida.\n")
            u.aguarde(1000)
            limpa()
            contarHistoria()
        }
    }

    funcao menu() {
        inteiro opcao
        cadeia opcao

            faca {
            limpa()
            escreva("\n")
            escreva("┌────────────────────────────┐\n")
            escreva("│     A JORNADA DO HERÓI     │\n")
            escreva("└────────────────────────────┘\n")
            escreva("┌────────────────────────────┐\n")
            escreva("│   1. Novo Jogo             │\n")
            escreva("│   2. Créditos              │\n")
            escreva("│   3. Sair                  │\n")
            escreva("└────────────────────────────┘\n")
            escreva("\nEscolha uma opção: ")
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
            
            senao {
            escreva("Opção inválida.\n")
            u.aguarde(1500)
            limpa()
            menu()
        }
      } enquanto (opcao < 1 ou opcao > 3)
    }


    funcao creditos() {
        limpa()
        escreva("┌────────────────────────────┐\n")
        escreva("│          CRÉDITOS          │\n")
        escreva("├────────────────────────────┤\n")
        escreva("│ Desenvolvedor: Giovani.S   │\n")
        escreva("│ Assistente AI: Google Gemini │\n")
        escreva("│ Ano: 2025                  │\n")
        escreva("└────────────────────────────┘\n")
    }

    funcao novoJogo() {
        carregamentoJogo()
        criacaoDoHeroi()

        regiaoAtual = 0
        jogoEmAndamento = verdadeiro
        iniciarJornada()
    }

    funcao carregamentoJogo() {
        limpa()
        escreva("Iniciando novo jogo."); u.aguarde(500)
        limpa(); escreva("Iniciando novo jogo.."); u.aguarde(500)
        limpa(); escreva("Iniciando novo jogo..."); u.aguarde(500)
    }

    funcao criacaoDoHeroi() {
        inteiro escolhaClasse

        limpa()
        escreva("┌────────────────────────────┐\n")
        escreva("│      CRIAÇÃO DO HERÓI      │\n")
        escreva("├────────────────────────────┤\n")
        escreva("│ Digite o nome do seu herói:│\n")
        escreva("└────────────────────────────┘\n")
        escreva("\nNome: ")
        leia(nomeHeroi)
        limpa()

        faca {
            escreva("┌───────────────────────────────────┐\n")
            escreva("│        ESCOLHA SUA CLASSE         │\n")
            escreva("├───────────────────────────────────┤\n")
            escreva("│ 1. Guerreiro HP:", VIDA_BASE[0], " ATK:", ATAQUE_BASE[0], " DEF:", DEFESA_BASE[0],"   │\n")
            escreva("│ 2. Mago      HP:", VIDA_BASE[1], "  ATK:", ATAQUE_BASE[1], " DEF:", DEFESA_BASE[1],"    │\n")
            escreva("│ 3. Arqueiro  HP:", VIDA_BASE[2], " ATK:", ATAQUE_BASE[2], " DEF:", DEFESA_BASE[2],"   │\n")
            escreva("└───────────────────────────────────┘\n")
            escreva("\nEscolha uma opção (1-3): ")
            leia(escolhaClasse)

            se (escolhaClasse >= 1 e escolhaClasse <= 3) {
                indiceClasseHeroi = escolhaClasse - 1

                vidaHeroiAtual = VIDA_BASE[indiceClasseHeroi]
                vidaHeroiMaxima = VIDA_BASE[indiceClasseHeroi]
                ataqueHeroiAtual = ATAQUE_BASE[indiceClasseHeroi]
                defesaHeroiAtual = DEFESA_BASE[indiceClasseHeroi]
                xpHeroiAtual = 0
                nivelHeroiAtual = 1
                xpParaProximoNivel = 75 * nivelHeroiAtual

                heroiCriadoComSucesso()
                u.aguarde(3000)
            } senao {
                escreva("Opção inválida. Tente novamente.\n")
                u.aguarde(1000)
                limpa()
            }
        } enquanto (escolhaClasse < 1 ou escolhaClasse > 3)
    }

    funcao heroiCriadoComSucesso(){
        limpa()
        escreva("Seu herói foi criado!\n\n")
        escreva("Nome: ", nomeHeroi, "\n")
        escreva("Classe: ", NOME_CLASSE[indiceClasseHeroi], "\n")
        escreva("Vida: ", vidaHeroiAtual, "/", vidaHeroiMaxima, "\n")
        escreva("Ataque: ", ataqueHeroiAtual, "\n")
        escreva("Defesa: ", defesaHeroiAtual, "\n")
        escreva("Nível: ", nivelHeroiAtual, "\n")
        escreva("XP: ", xpHeroiAtual, "/", xpParaProximoNivel, "\n")
    }
}
