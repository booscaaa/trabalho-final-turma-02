programa {
    inclua biblioteca Util --> u
    inclua biblioteca Matematica --> mat

    // DECLARAÇÕES GLOBAIS
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
    inteiro ATAQUE_BASE[3] = {99, 25, 20}
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

    // FUNÇÃO PRINCIPAL
    funcao inicio() {
        configurarInimigos()
        contarHistoria()
    }

    // FUNÇÕES DE CONFIGURAÇÃO INICIAL 
    funcao configurarInimigos() {
        NOME_INIMIGO[0] = "Goblin Sorrateiro"
        VIDA_INIMIGO[0] = 30
        ATAQUE_INIMIGO[0] = 8
        DEFESA_INIMIGO[0] = 2
        XP_INIMIGO[0] = 25

        NOME_INIMIGO[1] = "Lobo Faminto"
        VIDA_INIMIGO[1] = 45
        ATAQUE_INIMIGO[1] = 12
        DEFESA_INIMIGO[1] = 4
        XP_INIMIGO[1] = 35

        NOME_INIMIGO[2] = "Bandido da Estrada"
        VIDA_INIMIGO[2] = 60
        ATAQUE_INIMIGO[2] = 10
        DEFESA_INIMIGO[2] = 6
        XP_INIMIGO[2] = 45

        NOME_INIMIGO[3] = "Aranha Gigante Venenosa"
        VIDA_INIMIGO[3] = 70
        ATAQUE_INIMIGO[3] = 18
        DEFESA_INIMIGO[3] = 5
        XP_INIMIGO[3] = 55

        NOME_INIMIGO[4] = "Espectro Lamentador"
        VIDA_INIMIGO[4] = 50
        ATAQUE_INIMIGO[4] = 22
        DEFESA_INIMIGO[4] = 3
        XP_INIMIGO[4] = 65

        NOME_INIMIGO[5] = "O Devastador"
        VIDA_INIMIGO[5] = 350
        ATAQUE_INIMIGO[5] = 35
        DEFESA_INIMIGO[5] = 15
        XP_INIMIGO[5] = 0
    }

    funcao contarHistoria(){
        cadeia opcao
        
        escreva("\n")
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
            escreva("\nHá eras incontáveis, o Reino de Eldoria florescia sob a proteção da lendária Pedra da Luz...\n")
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
            retorne
        }
    }

    funcao menu() {
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
            senao se (opcao == 2) {
                creditos()
                u.aguarde(5000)
            }
            senao se (opcao == 3) {
                limpa()
                escreva("\n")
                escreva("Saindo do jogo.")
                u.aguarde(500)
                limpa()
                escreva("\n")
                escreva("Saindo do jogo..")
                u.aguarde(500)
                limpa()
                escreva("\n")
                escreva("Saindo do jogo...")
                u.aguarde(500)
            }
            senao {
                escreva("Opção inválida.\n")
                u.aguarde(1500)
            }
        } enquanto (opcao != 3)
    }


    funcao creditos() {
        limpa()
        escreva("\n")
        escreva("┌────────────────────────────┐\n")
        escreva("│          CRÉDITOS          │\n")
        escreva("├────────────────────────────┤\n")
        escreva("│ Desenvolvedor: Giovani.S   │\n")
        escreva("│ Assistente AI: Gemini      │\n")
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
        escreva("\n")
        escreva("Iniciando novo jogo.") 
        u.aguarde(500)
        limpa()
        escreva("\n")
        escreva("Iniciando novo jogo..") 
        u.aguarde(500)
        limpa()
        escreva("\n") 
        escreva("Iniciando novo jogo...") u.aguarde(500)
    }

    funcao criacaoDoHeroi() {
        cadeia escolhaTexto // Ler como texto primeiro
        inteiro escolhaClasseNumerica = 0 // Armazenar o valor

        limpa()
        escreva("\n")
        escreva("┌────────────────────────────┐\n")
        escreva("│      CRIAÇÃO DO HERÓI      │\n")
        escreva("├────────────────────────────┤\n")
        escreva("│ Digite o nome do seu herói:│\n")
        escreva("└────────────────────────────┘\n")
        escreva("\nNome: ")
        leia(nomeHeroi)
        limpa()

        faca {
            escreva("\n")
            escreva("┌───────────────────────────────────┐\n")
            escreva("│        ESCOLHA SUA CLASSE         │\n")
            escreva("├───────────────────────────────────┤\n")
            escreva("│ 1. Guerreiro HP:", VIDA_BASE[0], " ATK:", ATAQUE_BASE[0], " DEF:", DEFESA_BASE[0]," │\n")
            escreva("│ 2. Mago      HP:", VIDA_BASE[1], "  ATK:", ATAQUE_BASE[1], " DEF:", DEFESA_BASE[1],"  │\n")
            escreva("│ 3. Arqueiro  HP:", VIDA_BASE[2], " ATK:", ATAQUE_BASE[2], " DEF:", DEFESA_BASE[2],"  │\n")
            escreva("└───────────────────────────────────┘\n")
            escreva("\nEscolha uma opção (1-3): ")
            leia(escolhaTexto)

            // Validar e converter
            se (escolhaTexto == "1") {
                escolhaClasseNumerica = 1
            } senao se (escolhaTexto == "2") {
                escolhaClasseNumerica = 2
            } senao se (escolhaTexto == "3") {
                escolhaClasseNumerica = 3
            } senao {
                escolhaClasseNumerica = 0 // Sinaliza inválido
            }

            se (escolhaClasseNumerica >= 1 e escolhaClasseNumerica <= 3) {
                indiceClasseHeroi = escolhaClasseNumerica - 1 // Usa o valor numérico

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
                escreva("Opção inválida. Digite um número entre 1 e 3.\n")
                u.aguarde(1000)
                limpa()
            }
        } enquanto (escolhaClasseNumerica < 1 ou escolhaClasseNumerica > 3)
    }

    funcao heroiCriadoComSucesso(){
        limpa()
        escreva("\n")
        escreva("Seu herói foi criado!\n\n")
        escreva("Nome: ", nomeHeroi, "\n")
        escreva("Classe: ", NOME_CLASSE[indiceClasseHeroi], "\n")
        escreva("Vida: ", vidaHeroiAtual, "/", vidaHeroiMaxima, "\n")
        escreva("Ataque: ", ataqueHeroiAtual, "\n")
        escreva("Defesa: ", defesaHeroiAtual, "\n")
        escreva("Nível: ", nivelHeroiAtual, "\n")
        escreva("XP: ", xpHeroiAtual, "/", xpParaProximoNivel, "\n")
    }
    
    funcao iniciarJornada() {
        limpa()
        escreva("A jornada de ", nomeHeroi, " começa agora!\n")
        u.aguarde(2000)

        enquanto (jogoEmAndamento e regiaoAtual < 5) {
            explorarRegiao()

            se (nao jogoEmAndamento) {
                retorne
            }

            // Se não for a última região e o jogo ainda estiver em andamento
            se (regiaoAtual < 4 e jogoEmAndamento) {
                sortearEventoEspecialPosRegiao()
            }

            se (jogoEmAndamento) {
                 regiaoAtual++
                 // Se regiaoAtual virar 5 o chefe foi derrotado e o loop enquanto vai parar na próxima verificação
            }
        }
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
            inteiro numBatalhas = u.sorteia(1, 3)
            escreva("Você encontrará ", numBatalhas, " ameaça(s) nesta região.\n")
            u.aguarde(2000)

            para (inteiro i = 1; i <= numBatalhas; i++) {
                se (nao jogoEmAndamento) {
                    retorne
                }
                limpa()
                escreva("--- Batalha ", i, " de ", numBatalhas, " em ", NOME_REGIAO[regiaoAtual], " ---\n")
                u.aguarde(1500)

                inteiro indiceInimigoSorteado = u.sorteia(0, 4)
                batalha(indiceInimigoSorteado)

                se (nao jogoEmAndamento){
                    retorne
                }
                se(jogoEmAndamento){
                    u.aguarde(2000)
                }
            }
        }
    }

        funcao logico batalha(inteiro idInimigo) {
        // inicialização da batalha
        cadeia acaoHeroiTexto // Para ler a ação como texto
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
            escreva("\nSua vez, ", nomeHeroi, "!\n")
            escreva("Vida: ", vidaHeroiAtual, "/", vidaHeroiMaxima, "  |  ", nomeInimigoBatalha, " Vida: ", vidaInimigoAtual, "/", VIDA_INIMIGO[idInimigo], "\n")
            escreva("1. Atacar\n")

            faca{
                escreva("Escolha sua ação (1): ")
                leia(acaoHeroiTexto) // Lê como texto
                se(acaoHeroiTexto != "1"){ // Compara com o texto "1"
                    escreva("Opção inválida! Pressione 1 para atacar.\n")
                    u.aguarde(1000)
                }
            } enquanto(acaoHeroiTexto != "1")

                inteiro danoCausado = ataqueHeroiAtual - defesaInimigo
                se (danoCausado < 1) {
                    danoCausado = u.sorteia(1, 3)
                }
                vidaInimigoAtual -= danoCausado
                escreva(nomeHeroi, " ataca ", nomeInimigoBatalha, " causando ", danoCausado, " de dano!\n")
                u.aguarde(1500)

                se (vidaInimigoAtual <= 0) {
                    vidaInimigoAtual = 0
                    escreva(nomeInimigoBatalha, " foi derrotado!\n")
                    heroiVenceu = verdadeiro
                    u.aguarde(1500)
                    se (idInimigo != 5) { 
                        ganharXP(XP_INIMIGO[idInimigo])
                    }
                }

            // Turno do Inimigo, etc...
            se (vidaInimigoAtual > 0 e vidaHeroiAtual > 0) {
                escreva("\nVez de ", nomeInimigoBatalha, "!\n")
                u.aguarde(1000)

                se (idInimigo == 5 e turno % 2 == 0) { 
                    inteiro curaChefe = u.sorteia(20, 40) 
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
                    danoRecebido = u.sorteia(1, 3) 
                }
                vidaHeroiAtual -= danoRecebido
                escreva(nomeInimigoBatalha, " ataca ", nomeHeroi, " causando ", danoRecebido, " de dano!\n")
                u.aguarde(1500)

                se (vidaHeroiAtual <= 0) {
                    vidaHeroiAtual = 0
                    escreva(nomeHeroi, " foi derrotado...\n")
                    u.aguarde(1500)
                    gameOver() 
                    retorne falso 
                }
            }
            turno++
            escreva("\n")
            u.aguarde(1000)
        } // Fim do while da batalha

        se (heroiVenceu) {
            se (idInimigo == 5) { 
                jogoVencido() 
                retorne verdadeiro
            }
            retorne verdadeiro 
        }
        
        retorne falso
    }
    
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
            xpParaProximoNivel = (75 + (nivelHeroiAtual * 25)) * nivelHeroiAtual 

            limpa()
            escreva("🎉 PARABÉNS! Você subiu para o Nível ", nivelHeroiAtual, "! 🎉\n")
            u.aguarde(2000)
            
            vidaHeroiMaxima += 5 + u.sorteia(1,5) 
            ataqueHeroiAtual += 1 
            defesaHeroiAtual += 1 
            escreva("Seus atributos base aumentaram um pouco!\n")
            u.aguarde(1500)
            
            escolherMelhoriaAtributo() 

            vidaHeroiAtual = vidaHeroiMaxima 
            escreva("Sua vida foi totalmente restaurada!\n")
            u.aguarde(1500)

            escreva("\nXP Atual: ", xpHeroiAtual, "/", xpParaProximoNivel, "\n")
            u.aguarde(2000)
            exibirStatusHeroi() 
        }
    }

    funcao escolherMelhoriaAtributo() {
        cadeia escolhaTexto
        inteiro escolhaNumerica = 0 // Guardar a opção válida
        faca {
            limpa()
            escreva("Escolha um atributo principal para melhorar:\n")
            escreva("1. Vitalidade (+", (10 + nivelHeroiAtual * 2) ," Vida Máxima)\n") 
            escreva("2. Força (+", (2 + nivelHeroiAtual / 2) ," Ataque)\n")
            escreva("3. Resistência (+", (1 + nivelHeroiAtual / 3) ," Defesa)\n")
            escreva("Opção: ")
            leia(escolhaTexto)

            inteiro bonusVida = 10 + nivelHeroiAtual * 2
            inteiro bonusAtaque = 2 + nivelHeroiAtual / 2
            inteiro bonusDefesa = 1 + nivelHeroiAtual / 3

            se (escolhaTexto == "1") {
                escolhaNumerica = 1
                vidaHeroiMaxima += bonusVida
                escreva("Vida Máxima aumentada em ", bonusVida, "!\n")
            } senao se (escolhaTexto == "2") {
                escolhaNumerica = 2
                ataqueHeroiAtual += bonusAtaque
                escreva("Ataque aumentado em ", bonusAtaque, "!\n")
            } senao se (escolhaTexto == "3") {
                escolhaNumerica = 3
                defesaHeroiAtual += bonusDefesa
                escreva("Defesa aumentada em ", bonusDefesa, "!\n")
            } senao {
                escolhaNumerica = 0 // Inválido
                escreva("Opção inválida. Tente novamente.\n")
                u.aguarde(1000)
            }
        } enquanto (escolhaNumerica < 1 ou escolhaNumerica > 3)
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

    funcao sortearEventoEspecialPosRegiao() {
        inteiro sorteio = u.sorteia(1, 100)

        se (sorteio <= 30) { 
            limpa()
            escreva("✨ Evento Especial! ✨\n")
            escreva("Você encontrou uma Poção de Cura potente!\n")
            inteiro cura = vidaHeroiMaxima / 2 
            vidaHeroiAtual += cura
            se (vidaHeroiAtual > vidaHeroiMaxima) {
                vidaHeroiAtual = vidaHeroiMaxima
            }
            escreva("Sua vida foi restaurada em ", cura, " HP. Vida atual: ", vidaHeroiAtual, "/", vidaHeroiMaxima, "\n")
            u.aguarde(3000)
        } senao se (sorteio > 30 e sorteio <= 55) { 
            limpa()
            escreva("✨ Evento Especial! ✨\n")
            escreva("Você encontrou um local seguro e abençoado para descansar.\n")
            vidaHeroiAtual = vidaHeroiMaxima 
            escreva("Você se sente revigorado! Vida totalmente restaurada: ", vidaHeroiAtual, "/", vidaHeroiMaxima, "\n")
            u.aguarde(3000)
        } senao se (sorteio > 55 e sorteio <= 75) { 
            limpa()
            escreva("✨ Evento Especial! ✨\n")
            escreva("Um espírito ancestral aparece e oferece uma bênção...\n")
            escreva("1. Bênção da Sabedoria (XP Bônus)\n")
            escreva("2. Bênção da Fortitude (Aumento temporário de Defesa para a próxima região)\n")
            cadeia escolhaRecompensaTexto
            inteiro escolhaRecompensaNumerica = 0
            faca {
                escreva("Escolha (1 ou 2): ")
                leia(escolhaRecompensaTexto)
                se (escolhaRecompensaTexto == "1") {
                    escolhaRecompensaNumerica = 1
                    inteiro xpBonus = xpParaProximoNivel / 3 
                    escreva("Você sente sua mente se expandir e recebe ", xpBonus, " XP bônus!\n")
                    ganharXP(xpBonus)
                } senao se (escolhaRecompensaTexto == "2") {
                    escolhaRecompensaNumerica = 2
                    inteiro defBonus = 3 + nivelHeroiAtual / 2
                    defesaHeroiAtual += defBonus
                    escreva("Sua pele enrijece! Defesa aumentada em ", defBonus, " para os próximos desafios!\n")
                } senao {
                    escolhaRecompensaNumerica = 0
                    escreva("Opção inválida.\n")
                    u.aguarde(1000)
                }
            } enquanto (escolhaRecompensaNumerica < 1 ou escolhaRecompensaNumerica > 2)
            u.aguarde(3000)
        }
    }

    funcao gameOver() {
        limpa()
        escreva("💀 GAME OVER 💀\n\n")
        escreva("Sua jornada termina aqui, ", nomeHeroi, ".\n")
        escreva("O Reino de Eldoria permanece nas sombras...\n\n")
        escreva("Pressione Enter para voltar ao menu...")
        cadeia temp 
        leia(temp)
        jogoEmAndamento = falso
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
        cadeia temp 
        leia(temp)
        jogoEmAndamento = falso
    }
}
