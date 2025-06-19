    programa {
    inclua biblioteca Util --> u
    inclua biblioteca Matematica --> mat

    // DECLARAÇÕES GLOBAIS
    cadeia nomeHeroi
    inteiro indiceClasseHeroi // 0-Técnico de Suspensão 1-Eletricista Automotivo 2-Mecânico Geral
    inteiro vidaHeroiAtual
    inteiro vidaHeroiMaxima
    inteiro ataqueHeroiAtual
    inteiro defesaHeroiAtual
    inteiro xpHeroiAtual
    inteiro nivelHeroiAtual
    inteiro xpParaProximoNivel
    logico heroiEstaDefendendo
    const real MULTIPLICADOR_CRITICO = 1.5 // Dano crítico será 50% maior
    const inteiro CHANCE_CRITICO = 20 // Chance de 20% de acerto crítico
    const inteiro CHANCE_ESQUIVA = 15     // Chance de 15% de esquiva

    // Classes Base
    cadeia NOME_CLASSE[3] = {"Técnico de Suspensão", "Eletricista Automotivo", "Mecânico Geral"}
    inteiro VIDA_BASE[3] = {150, 110, 135}
    inteiro ATAQUE_BASE[3] = {35, 65, 45}
    inteiro DEFESA_BASE[3] = {20, 10, 15}

    // Inimigos
    cadeia NOME_INIMIGO[16] // 14 normais + Symon + 1 chefe
    inteiro VIDA_INIMIGO[16]
    inteiro ATAQUE_INIMIGO[16]
    inteiro DEFESA_INIMIGO[16]
    inteiro XP_INIMIGO[16]

    // Regiões
    cadeia NOME_REGIAO[5] = {
    "Depósito Enferrujado",
    "Bairro dos Quebrados",
    "Túnel das Correias",
    "Labirinto Burocrático",
    "Oficina Federal"
    }
    cadeia DESCRICAO_REGIAO[5] = {
    "Você entra no Depósito Enferrujado, um labirinto de peças velhas, óleo no chão e barulhos estranhos vindos dos cantos escuros. Algo parece te observar entre os chassis abandonados.",
    "O Bairro dos Quebrados é onde carros vêm para morrer ou para serem revividos nas coxas. É território de gambiarreiros e clientes desesperados. O risco de calote é alto por aqui.",
    "O Túnel das Correias ecoa com barulhos de rolamentos soltos e motores falhando. Umidade, fumaça e peças rolando criam um ambiente tenso. Muitos mecânicos se perdem na loucura no meio desse labirinto sonoro.",
    "O Labirinto Burourocrático, um pesadelo de formulários, taxas e fiscais. As paredes são feitas de processos e a única saída parece ser através de mais formulários antes da Oficina Federal.",
    "A Oficina Federal se ergue como uma fortaleza de burocracia, taxas e terror fiscal. Dentro, o devastador... a Receita Federal te espera com seus autos de infração e scanner de alma."
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

    NOME_INIMIGO[0] = "Poça de Óleo Viva" //Depósito Enferrujado
    VIDA_INIMIGO[0] = 40
    ATAQUE_INIMIGO[0] = 23
    DEFESA_INIMIGO[0] = 5
    XP_INIMIGO[0] = 25

    NOME_INIMIGO[1] = "Pneu Vingativo" //Depósito Enferrujado
    VIDA_INIMIGO[1] = 45
    ATAQUE_INIMIGO[1] = 26
    DEFESA_INIMIGO[1] = 7
    XP_INIMIGO[1] = 25

    NOME_INIMIGO[2] = "Escapamento Fantasma" //Depósito Enferrujado
    VIDA_INIMIGO[2] = 50
    ATAQUE_INIMIGO[2] = 32
    DEFESA_INIMIGO[2] = 10
    XP_INIMIGO[2] = 35

    NOME_INIMIGO[3] = "Pneu Mordedor" //Bairro dos Quebrados
    VIDA_INIMIGO[3] = 60
    ATAQUE_INIMIGO[3] = 38
    DEFESA_INIMIGO[3] = 12
    XP_INIMIGO[3] = 135

    NOME_INIMIGO[4] = "Motor Raivoso" //Bairro dos Quebrados
    VIDA_INIMIGO[4] = 75
    ATAQUE_INIMIGO[4] = 39
    DEFESA_INIMIGO[4] = 15
    XP_INIMIGO[4] = 145

    NOME_INIMIGO[5] = "Radiador Furioso" //Bairro dos Quebrados
    VIDA_INIMIGO[5] = 85
    ATAQUE_INIMIGO[5] = 40
    DEFESA_INIMIGO[5] = 20
    XP_INIMIGO[5] = 170

    NOME_INIMIGO[6] = "Sucata Assombrada" //Túnel das Correias
    VIDA_INIMIGO[6] = 100
    ATAQUE_INIMIGO[6] = 43
    DEFESA_INIMIGO[6] = 22
    XP_INIMIGO[6] = 225

    NOME_INIMIGO[7] = "Uno com Escada" //Túnel das Correias
    VIDA_INIMIGO[7] = 110
    ATAQUE_INIMIGO[7] = 45
    DEFESA_INIMIGO[7] = 23
    XP_INIMIGO[7] = 245

    NOME_INIMIGO[8] = "Carro Possuído" //Túnel das Correias
    VIDA_INIMIGO[8] = 125
    ATAQUE_INIMIGO[8] = 47
    DEFESA_INIMIGO[8] = 25
    XP_INIMIGO[8] = 280

    NOME_INIMIGO[9] = "Super Motor Demoníaco" //Túnel das Correias
    VIDA_INIMIGO[9] = 265
    ATAQUE_INIMIGO[9] = 55
    DEFESA_INIMIGO[9] = 10
    XP_INIMIGO[9] = 335

    NOME_INIMIGO[10] = "Taxador Aprendiz" //Labirinto Burocrático
    VIDA_INIMIGO[10] = 135
    ATAQUE_INIMIGO[10] = 50
    DEFESA_INIMIGO[10] = 30
    XP_INIMIGO[10] = 360

    NOME_INIMIGO[11] = "Fiscal do DETRAN" //Labirinto Burocrático
    VIDA_INIMIGO[11] = 150
    ATAQUE_INIMIGO[11] = 51
    DEFESA_INIMIGO[11] = 10
    XP_INIMIGO[11] = 415

    NOME_INIMIGO[12] = "Arrancador de CPF" //Labirinto Burocrático
    VIDA_INIMIGO[12] = 200
    ATAQUE_INIMIGO[12] = 52
    DEFESA_INIMIGO[12] = 15
    XP_INIMIGO[12] = 435

    NOME_INIMIGO[13] = "Carro da Receita Camuflado" //Labirinto Burocrático
    VIDA_INIMIGO[13] = 100
    ATAQUE_INIMIGO[13] = 53
    DEFESA_INIMIGO[13] = 35
    XP_INIMIGO[13] = 480

    NOME_INIMIGO[14] = "Symon" //Especial
    VIDA_INIMIGO[14] = 350 
    ATAQUE_INIMIGO[14] = 60 
    DEFESA_INIMIGO[14] = 20 
    XP_INIMIGO[14] = 1000
    
    NOME_INIMIGO[15] = "Receita Federal" //Boss
    VIDA_INIMIGO[15] = 450
    ATAQUE_INIMIGO[15] = 65
    DEFESA_INIMIGO[15] = 35
    XP_INIMIGO[15] = 0
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
            escreva("│ 2. Eletricista Automotivo   HP:", VIDA_BASE[1], " ATK:", ATAQUE_BASE[1], " DEF:", DEFESA_BASE[1]," │\n")
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

            // Se não for a última região sorteia evento
            se (regiaoAtual < 4 e jogoEmAndamento) {
                sortearEventoEspecialPosRegiao()
            }

            se (jogoEmAndamento) {
                 regiaoAtual++
                 // Se regiaoAtual virar 5 o chefe foi derrotado
            }
        }
    }

    funcao explorarRegiao() {
        limpa()
        escreva("\n")
        escreva("--- ", NOME_REGIAO[regiaoAtual], " ---\n")
        escreva(DESCRICAO_REGIAO[regiaoAtual], "\n\n")
        u.aguarde(10000)

        se (regiaoAtual == 4) { // ENCONTRO COM SYMON ANTES DO CHEFE
            limpa()
            escreva("\n")
            escreva("Antes de encarar o grande desafio, uma figura surge das sombras...\n")
            u.aguarde(6000)
            limpa()
            escreva("\n")
            escreva("Symon: 'E aí, ", nomeHeroi, "! Chegou na reta final, hein? Mas sinto lhe informar... aqui só passa Gremista! Prepare-se!'\n")
            u.aguarde(6000)
            
            batalha(14) // Batalha contra Symon

            se (nao jogoEmAndamento) { // Se o jogador perdeu para o Symon
               retorne
            }
            // Se venceu o Symon, continua para o chefe
            limpa()
            escreva("\n")
            escreva("Depois de dar um jeito no Symon, você se recompõe.\n")
            escreva("Mas a verdadeira ameaça ainda te aguarda...\n")
            u.aguarde(6000)
            limpa()
            escreva("\n")
            escreva("Você sente uma presença maligna e burocrática avassaladora...\n")
            u.aguarde(5000)
            escreva("A Receita Federal está à sua frente!\n")
            u.aguarde(5000)
            batalha(15) // Batalha contra a Receita Federal  
          } senao {
            inteiro numBatalhas = u.sorteia(5, 7)
            escreva("Você encontrará ", numBatalhas, " ameaça(s) nesta região.\n")
            u.aguarde(2500)

            para (inteiro i = 1; i <= numBatalhas; i++) {
                se (nao jogoEmAndamento) {
                }
                
            inteiro indiceInimigoSorteado = -1 // Inicializa como inválido

            // SORTEAR INIMIGOS ESPECÍFICOS POR REGIÃO
            se (regiaoAtual == 0) { // Depósito Enferrujado
                indiceInimigoSorteado = u.sorteia(0, 2) // Inimigos 0, 1, 2
            } senao se (regiaoAtual == 1) { // Bairro dos Quebrados
                indiceInimigoSorteado = u.sorteia(3, 5) // Inimigos 3, 4, 5
            } senao se (regiaoAtual == 2) { // Túnel das Correias
                indiceInimigoSorteado = u.sorteia(6, 9) // Inimigos 6, 7, 8, 9
            } senao se (regiaoAtual == 3) { // Sucatão do Caos
                indiceInimigoSorteado = u.sorteia(10, 13) // Inimigos 10, 11, 12, 13
            }


            se (indiceInimigoSorteado >= 0) {
                batalha(indiceInimigoSorteado)
            } senao {
                    escreva("Erro: Não foi possível sortear um inimigo para esta região.\n") // Mensagem só pa ficar bonito
            }


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
        cadeia acaoHeroiTexto 
        inteiro vidaInimigoAtual = VIDA_INIMIGO[idInimigo]
        inteiro ataqueInimigo = ATAQUE_INIMIGO[idInimigo]
        inteiro defesaInimigo = DEFESA_INIMIGO[idInimigo]
        cadeia nomeInimigoBatalha = NOME_INIMIGO[idInimigo]
        inteiro turno = 1
        logico heroiVenceu = falso
        logico dialogoEspecialUsado = falso

        limpa()
        escreva("\n")
        escreva("⚔️ BATALHA INICIADA! ⚔️\n")
        escreva(nomeHeroi, " (HP: ", vidaHeroiAtual, "/", vidaHeroiMaxima, ") vs ", nomeInimigoBatalha, " (HP: ", vidaInimigoAtual, "/", VIDA_INIMIGO[idInimigo], ")\n\n")
        u.aguarde(4000)
        
        // DIÁLOGO INICIAL DO SYMON (14)
        se (idInimigo == 14) {
            escreva("\n")
            escreva(NOME_INIMIGO[14], ": 'Vejo que sobreviveu até aqui. Pena que sua sorte acaba agora. Este é território sagrado do Grêmio!'\n")
            u.aguarde(3500)
        }
        // DIÁLOGO INICIAL DA RECEITA FEDERAL (15)
        se (idInimigo == 15) {
            escreva("\n")
            escreva(nomeInimigoBatalha, ": 'CONTRIBUINTE ", nomeHeroi, "! SEUS DÉBITOS ACUMULADOS ULTRAPASSARAM O LIMITE DA PACIÊNCIA FISCAL! PREPARE-SE PARA A AUDITORIA FINAL!'\n")
            u.aguarde(5000)
        }
        limpa()


        enquanto (vidaHeroiAtual > 0 e vidaInimigoAtual > 0) {
            escreva("\n")
            escreva("--- Turno ", turno, " ---")
            escreva("\n", nomeHeroi, " (HP: ", vidaHeroiAtual, "/", vidaHeroiMaxima, ")  |  ", nomeInimigoBatalha, " (HP: ", vidaInimigoAtual, "/", VIDA_INIMIGO[idInimigo],")\n")
            escreva("\n")
            escreva("1. Atacar\n")
            
        faca{
            escreva("Escolha sua ação: ")
            leia(acaoHeroiTexto) 
            se(acaoHeroiTexto != "1"){ 
                escreva("Opção inválida! Pressione 1 para atacar.\n")
                u.aguarde(1000)
              }
          } enquanto(acaoHeroiTexto != "1")

          // --- TURNO DO HERÓI ---
        se (acaoHeroiTexto == "1") { 
          escreva("\n")
          inteiro sorteioEsquivaInimigo = u.sorteia(1, 100)
          se (sorteioEsquivaInimigo <= CHANCE_ESQUIVA) {
              escreva("💨 ", nomeInimigoBatalha, " se esquivou do seu ataque!\n")
              u.aguarde(1500)
          } senao { 
              inteiro danoBaseHeroi = ataqueHeroiAtual - defesaInimigo
              se (danoBaseHeroi < 1) {
                  danoBaseHeroi = u.sorteia(1, 3)
              }

              inteiro danoCausado = danoBaseHeroi
              logico criticoHeroi = falso
              inteiro sorteioCriticoHeroi = u.sorteia(1, 100)

              se (sorteioCriticoHeroi <= CHANCE_CRITICO) {
                  criticoHeroi = verdadeiro
                  danoCausado = mat.arredondar(danoBaseHeroi * MULTIPLICADOR_CRITICO, 0) 
              }

              vidaInimigoAtual -= danoCausado
                    
              se (criticoHeroi) {
                  escreva("💥 ACERTO CRÍTICO!\n")
              }
              escreva(nomeHeroi, " ataca ", nomeInimigoBatalha, " causando ", danoCausado, " de dano!\n")
              u.aguarde(1500)

              // DIÁLOGO DE DANO DA RECEITA FEDERAL
              se (idInimigo == 15 e vidaInimigoAtual > 0 e vidaInimigoAtual < VIDA_INIMIGO[15] / 2 e nao dialogoEspecialUsado) {
                    escreva("\n")
                    escreva(nomeInimigoBatalha, ": 'SUA INSOLÊNCIA SERÁ TAXADA! SENTE O PESO DA CANETA BIC AZUL!'\n")
                    u.aguarde(3500)
                    dialogoEspecialUsado = verdadeiro // Para não repetir este diálogo
              }
              // DIÁLOGO DE DANO DO SYMON
              se (idInimigo == 14 e vidaInimigoAtual > 0 e vidaInimigoAtual < VIDA_INIMIGO[14] / 3) {
                    escreva("\n")
                    escreva(NOME_INIMIGO[14], ": 'Essa foi na trave! Ainda tô no jogo!'\n")
                    u.aguarde(3500)
              }


              se (vidaInimigoAtual <= 0) {
                 vidaInimigoAtual = 0
                 escreva(nomeInimigoBatalha, " foi derrotado!\n")
                 heroiVenceu = verdadeiro
                 u.aguarde(1500)
                 // Symon (14) e Chefe (15) não dão XP diretamente na batalha
                 se (idInimigo != 15 e idInimigo != 14) { 
                     ganharXP(XP_INIMIGO[idInimigo])
                     escreva("XP Atual: ", xpHeroiAtual, "/", xpParaProximoNivel, "")
                     u.aguarde(2000)
                 } 
              }
           } 
        } 

        // --- TURNO DO INIMIGO ---
        se (vidaInimigoAtual > 0 e vidaHeroiAtual > 0) {
            escreva("\nVez de ", nomeInimigoBatalha, "!\n")
            u.aguarde(1000)

            // HABILIDADE ESPECIAL DO CHEFE (RECEITA FEDERAL)
            se (idInimigo == 15 e turno % 2 == 0) { 
              inteiro curaChefe = u.sorteia(20, 40) 
              vidaInimigoAtual += curaChefe
              se (vidaInimigoAtual > VIDA_INIMIGO[idInimigo]) {
                  vidaInimigoAtual = VIDA_INIMIGO[idInimigo]
              }
              escreva(nomeInimigoBatalha, ": 'RECOLHENDO IMPOSTOS ATRASADOS...' Recupera ", curaChefe, " de HP!\n")
              escreva(nomeInimigoBatalha, " Vida: ", vidaInimigoAtual, "/", VIDA_INIMIGO[idInimigo], "\n")
              u.aguarde(3000)
          }
     
          inteiro sorteioEsquivaHeroi = u.sorteia(1, 100)
          se (sorteioEsquivaHeroi <= CHANCE_ESQUIVA) {
              escreva("💨 ", nomeHeroi, " se esquivou do ataque de ", nomeInimigoBatalha, "!\n")
              u.aguarde(1500)
          } senao { 
              inteiro danoBaseInimigo = ataqueInimigo - defesaHeroiAtual
              se (danoBaseInimigo < 1) {
                  danoBaseInimigo = u.sorteia(1, 3) 
              }

              inteiro danoRecebido = danoBaseInimigo
              logico criticoInimigo = falso
              inteiro sorteioCriticoInimigo = u.sorteia(1, 100)

              se (sorteioCriticoInimigo <= CHANCE_CRITICO) {
                  criticoInimigo = verdadeiro
                  danoRecebido = mat.arredondar(danoBaseInimigo * MULTIPLICADOR_CRITICO, 0) 
                }

                vidaHeroiAtual -= danoRecebido
                se (criticoInimigo) {
                    escreva("💥 DANO CRÍTICO DO INIMIGO!\n")
                }
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
            }
            limpa()
            turno++
        } 

        se (heroiVenceu) {
            se (idInimigo == 15) { // Se derrotou a Receita Federal
                jogoVencido() 
                retorne verdadeiro
            }
            // Se derrotou Symon (14) ou outro inimigo a função explorarRegiao continua ou avança.
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
            
            // ATRIBUTOS BASE AUMENTADOS EM +3
            ataqueHeroiAtual += 3
            defesaHeroiAtual += 3 
            escreva("Seus atributos base aumentaram!\n")
            u.aguarde(2500)
            
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
        inteiro escolhaNumerica = 0 
        faca {
            limpa()
            escreva("Escolha um atributo principal para melhorar:\n")

            inteiro bonusVida = 10 + nivelHeroiAtual * 2
            inteiro bonusAtaque = 2 + mat.arredondar(nivelHeroiAtual / 2.0, 0)
            inteiro bonusDefesa = 1 + mat.arredondar(nivelHeroiAtual / 3.0, 0)

            se (bonusDefesa < 1) {
                bonusDefesa = 1
            }
            
            escreva("1. Vitalidade (+", bonusVida ," Vida Máxima)\n") 
            escreva("2. Força (+", bonusAtaque ," Ataque)\n")
            escreva("3. Resistência (+", bonusDefesa ," Defesa)\n") 
            escreva("Opção: ")
            leia(escolhaTexto)

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
                escolhaNumerica = 0 
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
            escreva("\n")
            escreva("🔩 Achado Raro! 🔩")
            escreva("\n")
            u.aguarde(1500)
            escreva("No meio da sucata, você encontra um galão do lendário 'Óleo Milagroso 10W40'!\n")
            inteiro cura = vidaHeroiMaxima / 2 
            vidaHeroiAtual += cura
            se (vidaHeroiAtual > vidaHeroiMaxima) {
                vidaHeroiAtual = vidaHeroiMaxima
            }
            escreva("Sua vida foi restaurada em ", cura, " HP. Vida atual: ", vidaHeroiAtual, "/", vidaHeroiMaxima, "\n")
            u.aguarde(10000)
       } senao se (sorteio > 30 e sorteio <= 55) {
            limpa()
            escreva("\n")
            escreva("💰 Gorjeta Inesperada! 💰")
            escreva("\n")
            u.aguarde(1500)
            escreva("De repente, um carro antigo para ao seu lado. É Seu Antenor, um cliente de anos atrás!\n")
            u.aguarde(5000)
            escreva("Seu Antenor: '", nomeHeroi, "! Rapaz, nunca me esqueci daquela vez que você arrumou a junta homocinética do meu Corcel II! Pegue isso como agradecimento!'\n")
            u.aguarde(6000)
            escreva("Ele te entrega uma caixa empoeirada cheia de 'Velas de Iridium dos Deuses Antigos'!\n")

            inteiro xpExtraGeneroso = xpParaProximoNivel / 2 // Ganha metade do XP necessário para o próximo nível

            escreva("Essas peças valem uma fortuna em experiência!\n")
            ganharXP(xpExtraGeneroso) // Chama a função ganharXP que já trata a subida de nível
            u.aguarde(7000)
        } senao se (sorteio > 30 e sorteio <= 55) { 
            limpa()
            escreva("\n")
            escreva("🏝️ Oásis de Graxa 🏝️\n")
            escreva("\n")
            u.aguarde(1500)
            escreva("Você encontra a lendária 'Garagem do Sossego', um lugar sem clientes chatos ou barulho de motor batendo.\n")
            vidaHeroiAtual = vidaHeroiMaxima 
            escreva("Você se sente revigorado! Vida totalmente restaurada: ", vidaHeroiAtual, "/", vidaHeroiMaxima, "\n")
            u.aguarde(10000)
        } senao se (sorteio > 55 e sorteio <= 75) { 
            limpa()
            escreva("\n")
            escreva("👻 Aparição Misteriosa! 👻\n")
            escreva("\n")
            u.aguarde(1500)
            escreva("O fantasma de um Mecânico Lendário, com o macacão translúcido, oferece um segredo da profissão...\n")
            escreva("\n")
            u.aguarde(2500)
            escreva("1. Bênção da Sabedoria (XP Bônus)\n")
            escreva("2. Bênção da Fortitude (Defesa)\n")
            escreva("\n")
            cadeia escolhaRecompensaTexto
            inteiro escolhaRecompensaNumerica = 0
            faca {
                escreva("Escolha (1 ou 2): ")
                leia(escolhaRecompensaTexto)
                se (escolhaRecompensaTexto == "1") {
                    escolhaRecompensaNumerica = 1
                    inteiro xpBonus = xpParaProximoNivel / 3
                    limpa()
                    escreva("\n") 
                    escreva("Você sente sua mente se expandir e recebe ", xpBonus, " XP bônus!\n")
                    ganharXP(xpBonus)
                } senao se (escolhaRecompensaTexto == "2") {
                    escolhaRecompensaNumerica = 2
                    inteiro defBonus = 3 + nivelHeroiAtual / 2
                    defesaHeroiAtual += defBonus
                    limpa()
                    escreva("\n")
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
        escreva("\n")
        escreva("💸 DEU PERDA TOTAL 💸\n")
        escreva("\n")
        escreva("Sua jornada termina aqui, ", nomeHeroi, ".\n")
        escreva("O motor da esperança bateu pino e a burocracia venceu...\n")
        escreva("\n")
        escreva("Pressione Enter para voltar à garagem...")
        cadeia temp 
        leia(temp)
        jogoEmAndamento = falso
    }

    funcao jogoVencido() {
        limpa()
        escreva("\n")
        escreva("🔧 SERVIÇO CONCLUÍDO! 🔧\n")
        escreva("\n")
        escreva("Parabéns, ", nomeHeroi, "!\n")
        escreva("Você balanceou as contas e derrotou o Leão da Receita Federal!\n")
        escreva("A verdadeira arte da mecânica foi restaurada e pode prosperar novamente!\n")
        escreva("Sua lenda será gravada em toda chave de boca e cantada em cada oficina!\n")
        u.aguarde(10000)
        creditos()
        u.aguarde(5000)
        escreva("\n")
        escreva("Pressione Enter para voltar ao menu...")
        cadeia temp 
        leia(temp)
        jogoEmAndamento = falso
    }
}