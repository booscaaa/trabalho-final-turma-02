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

        // Inimigo 5: O Devastador (Chefe)
        NOME_INIMIGO[5] = "O Devastador"
        VIDA_INIMIGO[5] = 350 // Aumentada a vida do chefe
        ATAQUE_INIMIGO[5] = 35
        DEFESA_INIMIGO[5] = 15
        XP_INIMIGO[5] = 0 // Chefe final não dá XP, apenas a vitória
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
        escreva("│ Ano: 2024                  │\n")
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

    // --- LÓGICA PRINCIPAL DO JOGO (EXPLORAÇÃO E BATALHAS) ---
    funcao iniciarJornada() {
        limpa()
        escreva("A jornada de ", nomeHeroi, " começa agora!\n")
        u.aguarde(2000)

        enquanto (jogoEmAndamento e regiaoAtual < 5) {
            explorarRegiao() // Contém a lógica de batalhas e avanço de região
            
            se (nao jogoEmAndamento) { // Se o jogo terminou (derrota ou vitória)
                retorne // Sai da jornada
            }
            
            // Se não for a última região e o jogo ainda estiver em andamento
            se (regiaoAtual < 4 e jogoEmAndamento) { 
                sortearEventoEspecialPosRegiao() // Chance de um evento bom
            }
            regiaoAtual++ // Avança para a próxima região APENAS se não for a última e o jogo continuar
                        // Ou se for a última e o chefe foi derrotado (tratado em batalha)
        }
        // Se sair do loop e jogoEmAndamento for verdadeiro, significa que passou por todas as regiões
        // e a vitória já foi processada pela batalha do chefe.
        // Se jogoEmAndamento for falso, a derrota já foi processada.
    }

    funcao explorarRegiao() {
        limpa()
        escreva("--- ", NOME_REGIAO[regiaoAtual], " ---\n")
        escreva(DESCRICAO_REGIAO[regiaoAtual], "\n\n")
        u.aguarde(3500)

        se (regiaoAtual == 4) { // Castelo Dourado - Batalha contra o Chefe
            escreva("Você sente uma presença maligna avassaladora...\n")
            u.aguarde(2000)
            escreva("O Devastador está à sua frente!\n")
            u.aguarde(2000)
            batalha(5) // Índice 5 é O Devastador
        } senao {
            inteiro numBatalhas = mat.sorteia_entre(1, 3)
            escreva("Você encontrará ", numBatalhas, " ameaça(s) nesta região.\n")
            u.aguarde(2000)

            para (inteiro i = 1; i <= numBatalhas; i++) {
                se (nao jogoEmAndamento) { // Se perdeu em uma batalha anterior
                    retorne // Interrompe a exploração da região
                }
                limpa()
                escreva("--- Batalha ", i, " de ", numBatalhas, " em ", NOME_REGIAO[regiaoAtual], " ---\n")
                u.aguarde(1500)

                inteiro indiceInimigoSorteado = mat.sorteia_entre(0, 4) // Inimigos comuns (0 a 4)
                batalha(indiceInimigoSorteado)
                
                se (nao jogoEmAndamento){ // Verifica novamente após a batalha
                    retorne
                }
                u.aguarde(2000) // Pausa após a batalha (se venceu)
            }
        }
    }

    funcao logico batalha(inteiro idInimigo) {
        inteiro vidaInimigoAtual = VIDA_INIMIGO[idInimigo]
        inteiro ataqueInimigo = ATAQUE_INIMIGO[idInimigo]
        inteiro defesaInimigo = DEFESA_INIMIGO[idInimigo]
        cadeia nomeInimigoBatalha = NOME_INIMIGO[idInimigo]
        inteiro turno = 1
        logico heroiVenceu = falso

        limpa()
        escreva("⚔️ BATALHA INICIADA! ⚔️\n")
        escreva(nomeHeroi, " (HP: ", vidaHeroiAtual, "/", vidaHeroiMaxima, ") vs ", nomeInimigoBatalha, " (HP: ", vidaInimigoAtual, "/", VIDA_INIMIGO[idInimigo], ")\n\n")
        u.aguarde(2000)

        enquanto (vidaHeroiAtual > 0 e vidaInimigoAtual > 0) {
            escreva("--- Turno ", turno, " ---\n")

            // Turno do Herói
            escreva("\nSua vez, ", nomeHeroi, "!\n")
            escreva("Vida: ", vidaHeroiAtual, "/", vidaHeroiMaxima, "  |  ", nomeInimigoBatalha, " Vida: ", vidaInimigoAtual, "/", VIDA_INIMIGO[idInimigo], "\n")
            escreva("1. Atacar\n")
            // Futuramente: 2. Usar Item, 3. Habilidade Especial
            inteiro acaoHeroi
            faca{
                escreva("Escolha sua ação (1): ")
                leia(acaoHeroi)
                se(acaoHeroi != 1){
                    escreva("Opção inválida! Pressione 1 para atacar.\n")
                    u.aguarde(1000)
                }
            } enquanto(acaoHeroi != 1)

            se (acaoHeroi == 1) {
                inteiro danoCausado = ataqueHeroiAtual - defesaInimigo
                se (danoCausado < 1) {
                    danoCausado = mat.sorteia_entre(1, 3) // Dano mínimo variável para tornar interessante
                }
                vidaInimigoAtual -= danoCausado
                escreva(nomeHeroi, " ataca ", nomeInimigoBatalha, " causando ", danoCausado, " de dano!\n")
                u.aguarde(1500)

                se (vidaInimigoAtual <= 0) {
                    vidaInimigoAtual = 0
                    escreva(nomeInimigoBatalha, " foi derrotado!\n")
                    heroiVenceu = verdadeiro
                    u.aguarde(1500)
                    se (idInimigo != 5) { // Se não for o chefe final
                        ganharXP(XP_INIMIGO[idInimigo])
                    }
                    // Não precisa mais de 'pare', o loop while verificará a condição
                }
            }

            // Turno do Inimigo (se ainda estiver vivo e o herói também)
            se (vidaInimigoAtual > 0 e vidaHeroiAtual > 0) {
                escreva("\nVez de ", nomeInimigoBatalha, "!\n")
                u.aguarde(1000)

                // Habilidade especial do Devastador (idInimigo == 5)
                se (idInimigo == 5 e turno % 2 == 0) { // A cada 2 turnos (do Devastador)
                    inteiro curaChefe = mat.sorteia_entre(20, 40) // Aumentada a cura
                    vidaInimigoAtual += curaChefe
                    se (vidaInimigoAtual > VIDA_INIMIGO[idInimigo]) {
                        vidaInimigoAtual = VIDA_INIMIGO[idInimigo]
                    }
                    escreva(nomeInimigoBatalha, " usa sua energia sombria e se cura em ", curaChefe, " HP!\n")
                    escreva(nomeInimigoBatalha, " Vida: ", vidaInimigoAtual, "/", VIDA_INIMIGO[idInimigo], "\n")
                    u.aguarde(2000)
                }

                inteiro danoRecebido = ataqueInimigo - defesaHeroiAtual
                se (danoRecebido < 1) {
                    danoRecebido = mat.sorteia_entre(1, 3) // Dano mínimo variável
                }
                vidaHeroiAtual -= danoRecebido
                escreva(nomeInimigoBatalha, " ataca ", nomeHeroi, " causando ", danoRecebido, " de dano!\n")
                u.aguarde(1500)

                se (vidaHeroiAtual <= 0) {
                    vidaHeroiAtual = 0
                    escreva(nomeHeroi, " foi derrotado...\n")
                    u.aguarde(1500)
                    gameOver() // Define jogoEmAndamento = falso
                    retorne falso // Herói perdeu
                }
            }
            turno++
            escreva("\n")
            u.aguarde(1000)
        } // Fim do while da batalha

        se (heroiVenceu) {
            se (idInimigo == 5) { // Se derrotou O Devastador
                jogoVencido() // Define jogoEmAndamento = falso
                retorne verdadeiro
            }
            retorne verdadeiro // Venceu inimigo comum
        }
        // Se saiu do loop e não venceu, o herói foi derrotado (já tratado pelo gameOver)
        retorne falso // Caso de segurança, mas não deve ser alcançado se gameOver for chamado
    }

    // --- SISTEMA DE PROGRESSO ---
    funcao ganharXP(inteiro xpGanha) {
        escreva("\nVocê ganhou ", xpGanha, " XP!\n")
        xpHeroiAtual += xpGanha
        u.aguarde(1500)
        verificarSubiuDeNivel()
    }

    funcao verificarSubiuDeNivel() {
        enquanto (xpHeroiAtual >= xpParaProximoNivel) {
            nivelHeroiAtual++
            xpHeroiAtual -= xpParaProximoNivel
            xpParaProximoNivel = (75 + (nivelHeroiAtual * 25)) * nivelHeroiAtual // XP para prox nível aumenta mais

            limpa()
            escreva("🎉 PARABÉNS! Você subiu para o Nível ", nivelHeroiAtual, "! 🎉\n")
            u.aguarde(2000)
            
            // Ganho fixo de atributos por nível + escolha
            vidaHeroiMaxima += 5 + mat.sorteia_entre(1,5) // Pequeno aumento base na vida máxima
            ataqueHeroiAtual += 1 // Pequeno aumento base no ataque
            defesaHeroiAtual += 1 // Pequeno aumento base na defesa
            escreva("Seus atributos base aumentaram um pouco!\n")
            u.aguarde(1500)
            
            escolherMelhoriaAtributo() // Jogador escolhe um atributo principal para melhorar

            vidaHeroiAtual = vidaHeroiMaxima // Cura total ao subir de nível
            escreva("Sua vida foi totalmente restaurada!\n")
            u.aguarde(1500)

            escreva("\nXP Atual: ", xpHeroiAtual, "/", xpParaProximoNivel, "\n")
            u.aguarde(2000)
            exibirStatusHeroi() // Mostra status atualizado
        }
    }

    funcao escolherMelhoriaAtributo() {
        inteiro escolha
        faca {
            limpa()
            escreva("Escolha um atributo principal para melhorar:\n")
            escreva("1. Vitalidade (+", (10 + nivelHeroiAtual * 2) ," Vida Máxima)\n") // Bônus escala com nível
            escreva("2. Força (+", (2 + nivelHeroiAtual / 2) ," Ataque)\n")
            escreva("3. Resistência (+", (1 + nivelHeroiAtual / 3) ," Defesa)\n")
            escreva("Opção: ")
            leia(escolha)

            inteiro bonusVida = 10 + nivelHeroiAtual * 2
            inteiro bonusAtaque = 2 + nivelHeroiAtual / 2
            inteiro bonusDefesa = 1 + nivelHeroiAtual / 3


            escolha (escolha) {
                caso 1:
                    vidaHeroiMaxima += bonusVida
                    escreva("Vida Máxima aumentada em ", bonusVida, "!\n")
                    pare
                caso 2:
                    ataqueHeroiAtual += bonusAtaque
                    escreva("Ataque aumentado em ", bonusAtaque, "!\n")
                    pare
                case 3: // Corrigido para 'case'
                    defesaHeroiAtual += bonusDefesa
                    escreva("Defesa aumentada em ", bonusDefesa, "!\n")
                    pare
                caso contrario:
                    escreva("Opção inválida. Tente novamente.\n")
                    u.aguarde(1000)
            }
        } enquanto (escolha < 1 ou escolha > 3)
        u.aguarde(1500)
    }

    funcao exibirStatusHeroi() {
        limpa()
        escreva("--- STATUS DO HERÓI ---\n")
        escreva("Nome: ", nomeHeroi, "\n")
        escreva("Classe: ", NOME_CLASSE[indiceClasseHeroi], "\n")
        escreva("Nível: ", nivelHeroiAtual, "\n")
        escreva("Vida: ", vidaHeroiAtual, "/", vidaHeroiMaxima, "\n")
        escreva("Ataque: ", ataqueHeroiAtual, "\n")
        escreva("Defesa: ", defesaHeroiAtual, "\n")
        escreva("XP: ", xpHeroiAtual, "/", xpParaProximoNivel, "\n")
        escreva("-----------------------\n")
        u.aguarde(3500)
    }

    // --- EVENTOS ESPECIAIS ---
    funcao sortearEventoEspecialPosRegiao() {
        inteiro sorteio = mat.sorteia_entre(1, 100)

        se (sorteio <= 30) { // 30% de chance de poção
            limpa()
            escreva("✨ Evento Especial! ✨\n")
            escreva("Você encontrou uma Poção de Cura potente!\n")
            inteiro cura = vidaHeroiMaxima / 2 // Cura 50% da vida máxima
            vidaHeroiAtual += cura
            se (vidaHeroiAtual > vidaHeroiMaxima) {
                vidaHeroiAtual = vidaHeroiMaxima
            }
            escreva("Sua vida foi restaurada em ", cura, " HP. Vida atual: ", vidaHeroiAtual, "/", vidaHeroiMaxima, "\n")
            u.aguarde(3000)
        } senao se (sorteio > 30 e sorteio <= 55) { // 25% de chance de descanso
            limpa()
            escreva("✨ Evento Especial! ✨\n")
            escreva("Você encontrou um local seguro e abençoado para descansar.\n")
            vidaHeroiAtual = vidaHeroiMaxima // Cura total
            escreva("Você se sente revigorado! Vida totalmente restaurada: ", vidaHeroiAtual, "/", vidaHeroiMaxima, "\n")
            u.aguarde(3000)
        } senao se (sorteio > 55 e sorteio <= 75) { // 20% de chance de XP ou Vida
            limpa()
            escreva("✨ Evento Especial! ✨\n")
            escreva("Um espírito ancestral aparece e oferece uma bênção...\n")
            escreva("1. Bênção da Sabedoria (XP Bônus)\n")
            escreva("2. Bênção da Fortitude (Aumento temporário de Defesa para a próxima região)\n") // Alterado
            inteiro escolhaRecompensa
            faca {
                escreva("Escolha (1 ou 2): ")
                leia(escolhaRecompensa)
                se (escolhaRecompensa == 1) {
                    inteiro xpBonus = xpParaProximoNivel / 3 // Ganha 1/3 do XP para o próximo nível
                    escreva("Você sente sua mente se expandir e recebe ", xpBonus, " XP bônus!\n")
                    ganharXP(xpBonus)
                } senao se (escolhaRecompensa == 2) {
                    inteiro defBonus = 3 + nivelHeroiAtual / 2
                    defesaHeroiAtual += defBonus
                    escreva("Sua pele enrijece! Defesa aumentada em ", defBonus, " para os próximos desafios!\n")
                    // Este bônus seria idealmente temporário, mas para simplicidade, é permanente.
                    // Poderia-se adicionar uma variável para "defesaBonusTemporaria"
                } senao {
                    escreva("Opção inválida.\n")
                    u.aguarde(1000)
                }
            } enquanto (escolhaRecompensa < 1 ou escolhaRecompensa > 2)
            u.aguarde(3000)
        }
        // Se não cair em nenhum evento, nada acontece.
    }

    // --- FIM DE JOGO ---
    funcao gameOver() {
        limpa()
        escreva("💀 GAME OVER 💀\n\n")
        escreva("Sua jornada termina aqui, ", nomeHeroi, ".\n")
        escreva("O Reino de Eldoria permanece nas sombras...\n\n")
        escreva("Pressione Enter para voltar ao menu...")
        cadeia temp; leia(temp)
        jogoEmAndamento = falso // Sinaliza o fim do jogo
        // O retorno ao menu será gerenciado pelo loop em iniciarJornada/explorarRegiao
    }

    funcao jogoVencido() {
        limpa()
        escreva("🏆 VITÓRIA! 🏆\n\n")
        escreva("Parabéns, ", nomeHeroi, "!\n")
        escreva("Você derrotou O Devastador e a Pedra da Luz foi recuperada!\n")
        escreva("O Reino de Eldoria está a salvo graças à sua bravura!\n")
        escreva("Sua lenda será contada por eras!\n\n")
        u.aguarde(5000)
        creditos()
        u.aguarde(4000)
        escreva("\nPressione Enter para voltar ao menu...")
        cadeia temp; leia(temp)
        jogoEmAndamento = falso // Sinaliza o fim do jogo
    }
}
