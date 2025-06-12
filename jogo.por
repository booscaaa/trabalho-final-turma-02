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
    cadeia NOME_CLASSE[3] = {"Técnico de Suspensão", "Eletricista Automotivo", "Mecânico Geral"}
    inteiro VIDA_BASE[3] = {135, 100, 115}
    inteiro ATAQUE_BASE[3] = {25, 45, 30}
    inteiro DEFESA_BASE[3] = {15, 5, 10}

    // Inimigos
    cadeia NOME_INIMIGO[15] // 14 normais + 1 chefe
    inteiro VIDA_INIMIGO[15]
    inteiro ATAQUE_INIMIGO[15]
    inteiro DEFESA_INIMIGO[15]
    inteiro XP_INIMIGO[15]

    // Regiões
cadeia NOME_REGIAO[5] = {
    "Depósito Enferrujado",
    "Bairro dos Quebrados",
    "Túnel das Correias",
    "Sucatão do Caos",
    "Oficina Federal"
}
cadeia DESCRICAO_REGIAO[5] = {
    "Você entra no Depósito Enferrujado, um labirinto de peças velhas, óleo no chão e barulhos estranhos vindos dos cantos escuros. Algo parece te observar entre os chassis abandonados.",
    "O Bairro dos Quebrados é onde carros vêm para morrer — ou para serem revividos nas coxas. É território de gambiarreiros e clientes desesperados. O risco de calote é alto por aqui.",
    "O Túnel das Correias ecoa com barulhos de rolamentos soltos e motores falhando. Umidade, fumaça e peças rolando criam um ambiente tenso. Muitos mecânicos se perdem nesse labirinto sonoro.",
    "Sucatão do Caos: um campo minado de carcaças e motores partidos. Aqui, tudo é reaproveitado — até os monstros. O cheiro de solda e a energia elétrica no ar fazem os cabelos do braço arrepiarem.",
    "A Oficina Federal se ergue como uma fortaleza de burocracia, taxas e terror fiscal. Dentro, o **Devastador** — avatar supremo da Receita Federal — te espera com seus autos de infração e scanner de alma."
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

    NOME_INIMIGO[0] = "Poça de Óleo Viva"
    VIDA_INIMIGO[0] = 20
    ATAQUE_INIMIGO[0] = 5
    DEFESA_INIMIGO[0] = 0
    XP_INIMIGO[0] = 10

    NOME_INIMIGO[1] = "Pneu Vingativo"
    VIDA_INIMIGO[1] = 40
    ATAQUE_INIMIGO[1] = 12
    DEFESA_INIMIGO[1] = 2
    XP_INIMIGO[1] = 15

    NOME_INIMIGO[2] = "Vela de Ignição Infernal"
    VIDA_INIMIGO[2] = 30
    ATAQUE_INIMIGO[2] = 18
    DEFESA_INIMIGO[2] = 1
    XP_INIMIGO[2] = 20

    NOME_INIMIGO[3] = "Mecânico de YouTube"
    VIDA_INIMIGO[3] = 60
    ATAQUE_INIMIGO[3] = 15
    DEFESA_INIMIGO[3] = 5
    XP_INIMIGO[3] = 40

    NOME_INIMIGO[4] = "Motor Raivoso"
    VIDA_INIMIGO[4] = 100
    ATAQUE_INIMIGO[4] = 20
    DEFESA_INIMIGO[4] = 10
    XP_INIMIGO[4] = 60

    NOME_INIMIGO[5] = "Monstro da Ferrugem"
    VIDA_INIMIGO[5] = 90
    ATAQUE_INIMIGO[5] = 10 
    DEFESA_INIMIGO[5] = 15
    XP_INIMIGO[5] = 50

    NOME_INIMIGO[6] = "Lombada Assassina"
    VIDA_INIMIGO[6] = 50
    ATAQUE_INIMIGO[6] = 45
    DEFESA_INIMIGO[6] = 20
    XP_INIMIGO[6] = 55

    NOME_INIMIGO[7] = "Uno com Escada"
    VIDA_INIMIGO[7] = 85
    ATAQUE_INIMIGO[7] = 30
    DEFESA_INIMIGO[7] = 20
    XP_INIMIGO[7] = 60

    NOME_INIMIGO[8] = "Carro Possuído"
    VIDA_INIMIGO[8] = 200
    ATAQUE_INIMIGO[8] = 30
    DEFESA_INIMIGO[8] = 10
    XP_INIMIGO[8] = 90

    NOME_INIMIGO[9] = "Golem de Sucata"
    VIDA_INIMIGO[9] = 250
    ATAQUE_INIMIGO[9] = 30
    DEFESA_INIMIGO[9] = 30
    XP_INIMIGO[9] = 100

    NOME_INIMIGO[10] = "Guincho Abutre"
    VIDA_INIMIGO[10] = 110
    ATAQUE_INIMIGO[10] = 20
    DEFESA_INIMIGO[10] = 10
    XP_INIMIGO[10] = 90

    NOME_INIMIGO[11] = "Fiscal do DETRAN Sinistro"
    VIDA_INIMIGO[11] = 150
    ATAQUE_INIMIGO[11] = 25
    DEFESA_INIMIGO[11] = 10
    XP_INIMIGO[11] = 100

    NOME_INIMIGO[12] = "Rei da Gambiarra"
    VIDA_INIMIGO[12] = 200
    ATAQUE_INIMIGO[12] = 30
    DEFESA_INIMIGO[12] = 15
    XP_INIMIGO[12] = 120

    NOME_INIMIGO[13] = "Carnê do IPVA Maldito"
    VIDA_INIMIGO[13] = 100
    ATAQUE_INIMIGO[13] = 30
    DEFESA_INIMIGO[13] = 5
    XP_INIMIGO[13] = 50

    NOME_INIMIGO[14] = "Receita Federal"
    VIDA_INIMIGO[14] = 500
    ATAQUE_INIMIGO[14] = 40
    DEFESA_INIMIGO[14] = 25
    XP_INIMIGO[14] = 0
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
            u.aguarde(1000)
            escreva("\nHá tempos, a Oficina Central era o coração pulsante da cidade, onde carros ganhavam vida e motores cantavam...\n")
            u.aguarde(11000)
            limpa()
            escreva("\nMas a burocracia tem sua própria engrenagem, lenta e implacável...\n")
            u.aguarde(6500)
            limpa()
            escreva("\nDas sombras dos impostos e multas surgiu a temida Receita Federal...\n")
            u.aguarde(6500)
            limpa()
            escreva("\nOs carros pararam, as ferramentas enferrujaram, e a esperança quase se perdeu...\n")
            u.aguarde(6500)
            limpa()
            escreva("\nMas nem todo motor cessa sua ignição...\n")
            u.aguarde(4000)
            limpa()
            escreva("\nNo meio desse caos, uma lenda desperta... um mecânico... esse mecânico... é você.\n")
            u.aguarde(6500)
            escreva("\nVocê deve encarar as cinco zonas de desafios, desde sucateiros até caloteiros. O destino da Oficina Central depende da sua habilidade.\n")
            u.aguarde(11000)
            limpa()
            escreva("\nPrepare suas ferramentas...\n")
            u.aguarde(2500)
            escreva("\nSua jornada começa agora!\n")
            u.aguarde(2500)
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
            escreva("│   A JORNADA DO MECÂNICO    │\n")
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
        escreva("┌───────────────────────────────┐\n")
        escreva("│      CRIAÇÃO DO MECÂNICO      │\n")
        escreva("├───────────────────────────────┤\n")
        escreva("│ Digite o nome do seu mecânico:│\n")
        escreva("└───────────────────────────────┘\n")
        escreva("\nNome: ")
        leia(nomeHeroi)
        limpa()

        faca {
            escreva("\n")
            escreva("┌──────────────────────────────────────────────────┐\n")
            escreva("│                ESCOLHA SUA CLASSE                │\n")
            escreva("├──────────────────────────────────────────────────┤\n")
            escreva("│ 1. Técnico de Suspensão     HP:", VIDA_BASE[0], " ATK:", ATAQUE_BASE[0], " DEF:", DEFESA_BASE[0]," │\n")
            escreva("│ 2. Eletricista Automotivo   HP:", VIDA_BASE[1], "  ATK:", ATAQUE_BASE[1], " DEF:", DEFESA_BASE[1]," │\n")
            escreva("│ 3. Mecânico Geral           HP:", VIDA_BASE[2], " ATK:", ATAQUE_BASE[2], " DEF:", DEFESA_BASE[2]," │\n")
            escreva("└──────────────────────────────────────────────────┘\n")
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
                u.aguarde(5000)
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
        escreva("Seu mecânico foi criado!\n\n")
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
        escreva("\n")
        escreva("A jornada de ", nomeHeroi, " começa agora!\n")
        u.aguarde(3000)

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
        escreva("\n")
        escreva("--- ", NOME_REGIAO[regiaoAtual], " ---\n")
        escreva(DESCRICAO_REGIAO[regiaoAtual], "\n\n")
        u.aguarde(10000)

        se (regiaoAtual == 4) { // Oficina Federal - Batalha contra o Chefe
            escreva("Você sente uma presença maligna avassaladora...\n")
            u.aguarde(4000)
            escreva("A Receita Federal está à sua frente!\n")
            u.aguarde(4000)
            batalha(14) // Índice 14 é O "Devastador"
        } senao {
            inteiro numBatalhas = u.sorteia(1, 5)
            escreva("Você encontrará ", numBatalhas, " ameaça(s) nesta região.\n")
            u.aguarde(2000)

            para (inteiro i = 1; i <= numBatalhas; i++) {
                se (nao jogoEmAndamento) {
                    retorne
                }
                limpa()
                escreva("--- Batalha ", i, " de ", numBatalhas, " em ", NOME_REGIAO[regiaoAtual], " ---\n")
                u.aguarde(1500)

                inteiro indiceInimigoSorteado = u.sorteia(0, 13)
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
        escreva("\n")
        escreva("⚔️ BATALHA INICIADA! ⚔️\n")
        escreva(nomeHeroi, " (HP: ", vidaHeroiAtual, "/", vidaHeroiMaxima, ") vs ", nomeInimigoBatalha, " (HP: ", vidaInimigoAtual, "/", VIDA_INIMIGO[idInimigo], ")\n\n")
        u.aguarde(5000)
        limpa()

        enquanto (vidaHeroiAtual > 0 e vidaInimigoAtual > 0) {
            escreva("\n")
            escreva("--- Turno ", turno, " ---")
            escreva("\n", nomeHeroi, " (HP: ", vidaHeroiAtual, "/", vidaHeroiMaxima, ")  |  ", nomeInimigoBatalha, " (HP: ", vidaInimigoAtual, "/", VIDA_INIMIGO[idInimigo],")\n")
            escreva("\n")
            escreva("1. Atacar\n")

            faca{
                escreva("Escolha sua ação: ")
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
                escreva("\n")
                escreva(nomeHeroi, " ataca ", nomeInimigoBatalha, " causando ", danoCausado, " de dano!\n")
                u.aguarde(1500)

                se (vidaInimigoAtual <= 0) {
                    vidaInimigoAtual = 0
                    escreva(nomeInimigoBatalha, " foi derrotado!\n")
                    heroiVenceu = verdadeiro
                    u.aguarde(1500)
                    se (idInimigo != 14) { 
                        ganharXP(XP_INIMIGO[idInimigo])
                    }
                }

            // Turno do Inimigo, etc...
            se (vidaInimigoAtual > 0 e vidaHeroiAtual > 0) {
                escreva("\nVez de ", nomeInimigoBatalha, "!\n")
                u.aguarde(1000)

                se (idInimigo == 14 e turno % 2 == 0) { 
                    inteiro curaChefe = u.sorteia(20, 40) 
                    vidaInimigoAtual += curaChefe
                    se (vidaInimigoAtual > VIDA_INIMIGO[idInimigo]) {
                        vidaInimigoAtual = VIDA_INIMIGO[idInimigo]
                    }
                    escreva(nomeInimigoBatalha, " arrecada os tributos devidos e recupera ", curaChefe, " de HP!\n")
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
            limpa()
            turno++
            escreva("\n")
            u.aguarde(1000)
        } // Fim do while da batalha

        se (heroiVenceu) {
            se (idInimigo == 14) { 
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
        escreva("A Oficina Central permanece nas sombras...\n\n")
        escreva("Pressione Enter para voltar ao menu...")
        cadeia temp 
        leia(temp)
        jogoEmAndamento = falso
    }

    funcao jogoVencido() {
        limpa()
        escreva("🏆 VITÓRIA! 🏆\n\n")
        escreva("Parabéns, ", nomeHeroi, "!\n")
        escreva("Você derrotou a Receita Federal e a Pedra da Luz foi recuperada!\n")
        escreva("A Oficina Central está a salvo graças à sua bravura!\n")
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
