programa {
    inclua biblioteca Util --> u

    // CONSTANTES GLOBAIS
    const inteiro TOTAL_CENARIOS = 5
    const inteiro CHANCE_FUGA = 7 // 40% de chance (7-10 em 1d10)
    const inteiro CUSTO_HABILIDADE_MAGO = 20

    // VARIÁVEIS GLOBAIS
    cadeia nomeAventureiro
    cadeia classePersonagem
    inteiro hpAtual
    inteiro hpMaximo
    inteiro ataqueBase
    inteiro manaAtual
    inteiro manaMaxima
    
    // ITENS ESPECIAIS
    logico possuiCajadoDoReiEsqueleto
    logico possuiArmaduraEsqueletica
    logico possuiArcoDaMorte
    
    // ESTADO DO JOGO
    logico fugiuDeCombate
    logico bossDerrotadoPorCenario[TOTAL_CENARIOS]
    inteiro cenarioAtual
    
    // CENÁRIOS
    cadeia nomesCenarios[TOTAL_CENARIOS]
    cadeia descricoesCenarios[TOTAL_CENARIOS]

    // FUNÇÃO PRINCIPAL
    funcao inicio() {
        inicializarJogo()
        mostrarMenuPrincipal()
    }

    // INICIALIZAÇÃO DO JOGO
    funcao inicializarJogo() {
        // Inicializa bosses não derrotados
        para (inteiro i = 0; i < TOTAL_CENARIOS; i++) {
            bossDerrotadoPorCenario[i] = falso
        }
        
        // Inicializa itens especiais
        possuiCajadoDoReiEsqueleto = falso
        possuiArmaduraEsqueletica = falso
        possuiArcoDaMorte = falso
        
        // Inicializa cenários
        inicializarCenarios()
    }

    // MENU PRINCIPAL
    funcao mostrarMenuPrincipal() {
        cadeia opcaoMenu
        
        faca {
            limpa()
            escreva("||HellChampions Studios Apresenta||\n")
            escreva("╔═════════════════════════════════╗\n")
            escreva("║        ⛧ DARKEST SOULS ⛧       ║\n")
            escreva("╠═════════════════════════════════╣\n")
            escreva("║                                 ║\n")
            escreva("║      I   ▸ Nova História        ║\n")
            escreva("║     II   ▸ Créditos             ║\n")
            escreva("║    III   ▸ Sair do Jogo         ║\n")
            escreva("║V 1.1.0                          ║\n")
            escreva("╚═════════════════════════════════╝\n")

            escreva("\nEscolha uma opção: ")
            leia(opcaoMenu)
            limpa()

            escolha (opcaoMenu) {
                caso "I":
                caso "i":
                    iniciarNovaHistoria()
                    pare
                caso "II":
                caso "ii":
                    mostrarCreditos()
                    pare
                caso "III":
                caso "iii":
                    encerrarJogo()
                    pare
                caso contrario:
                    escreva("Opção inválida! Pressione ENTER para continuar.\n")
                    leia(opcaoMenu) // Pausa
            }
        } enquanto (opcaoMenu != "III" e opcaoMenu != "iii")
    }

    // HISTÓRIA E CRIAÇÃO DE PERSONAGEM
    funcao iniciarNovaHistoria() {
        mostrarIntroducao()
        definirNomePersonagem()
        escolherClasse()
        mostrarStatusPersonagem()
        iniciarAventura()
    }

    funcao mostrarIntroducao() {
        escreva("\n||Há muito tempo, no Reino de Eldoria...||\n")
        u.aguarde(1000)
        // Restante da introdução...
    }

    funcao definirNomePersonagem() {
        cadeia confirmacao
        faca {
            escreva("\n||🛡️ Qual é o nome do seu herói?||\n")
            leia(nomeAventureiro)
            escreva("\n", nomeAventureiro, ", certo? (s/n)\n")
            leia(confirmacao)
            limpa()
        } enquanto (confirmacao != "s" e confirmacao != "S")
    }

    // SISTEMA DE CLASSES
    funcao logico escolherClasse() {
        inteiro escolher
        logico valido = falso
        
        enquanto (valido == falso) {
            escreva("\nEscolha sua classe:\n")
            escreva("1. Guerreiro (HP Alto, Ataque Moderado)\n")
            escreva("2. Arqueiro (HP Médio, Ataque Preciso)\n")
            escreva("3. Mago (HP Baixo, Ataque Mágico)\n")
            escreva("Digite o número: ")
            leia(escolher)

            escolha (escolher) {
                caso 1:
                    classePersonagem = "Guerreiro"
                    hpMaximo = 150
                    ataqueBase = 15
                    manaMaxima = 0
                    valido = verdadeiro
                    pare
                caso 2:
                    classePersonagem = "Arqueiro"
                    hpMaximo = 100
                    ataqueBase = 12
                    manaMaxima = 0
                    valido = verdadeiro
                    pare
                caso 3:
                    classePersonagem = "Mago"
                    hpMaximo = 80
                    ataqueBase = 8
                    manaMaxima = 100
                    valido = verdadeiro
                    pare
                caso contrario:
                    escreva("Opção inválida! Tente novamente.\n")
                    u.aguarde(1500)
                    limpa()
            }

            hpAtual = hpMaximo
            manaAtual = manaMaxima
            escreva("\nVocê escolheu ", classePersonagem, "!\n")
            u.aguarde(2000)
            retorne verdadeiro
        }
       
    }

    // SISTEMA DE AVENTURA
    funcao iniciarAventura() {
        cenarioAtual = 0
        logico emAventura = verdadeiro
        
        enquanto (emAventura) {
            limpa()
            inicializarJogo()
            
            se (hpAtual <= hpMaximo / 4) {
                oferecerDescanso()
            }
            
            cadeia acao
            escreva("\nAções disponíveis:\n")
            escreva("1. Explorar (encontrar inimigos)\n")
            escreva("2. Enfrentar o Chefe\n")
            escreva("3. Avançar para próxima área\n")
            escreva("4. Ver status\n")
            escreva("5. Voltar ao menu\n")
            escreva("Escolha: ")
            leia(acao)
            
            escolha (acao) {
                caso "1":
                    explorarArea()
                    pare
                caso "2":
                    enfrentarChefe()
                    pare
                caso "3":
                    avancarParaProximaArea()
                    pare
                caso "4":
                    mostrarStatusPersonagem()
                    pare
                caso "5":
                    emAventura = falso
                    pare
                caso contrario:
                    escreva("Ação inválida!\n")
                    u.aguarde(1500)
            }
            
            se (hpAtual <= 0) {
                escreva("\nGAME OVER - Você foi derrotado!\n")
                emAventura = falso
                u.aguarde(3000)
            }
        }
    }

    // SISTEMA DE COMBATE (versão melhorada)
    funcao logico batalhar(cadeia nomeInimigo, inteiro hpInimigo, inteiro ataqueInimigo, logico ehBoss) {
        inteiro hpInimigoAtual = hpInimigo
        fugiuDeCombate = falso
        
        enquanto (hpAtual > 0 e hpInimigoAtual > 0) {
            limpa()
            escreva("=== BATALHA ===\n")
            escreva(nomeAventureiro, ": ", hpAtual, "/", hpMaximo, " HP")
            se (classePersonagem == "Mago") {
                escreva(" | ", manaAtual, "/", manaMaxima, " Mana")
            }
            escreva("\n", nomeInimigo, ": ", hpInimigoAtual, "/", hpInimigo, " HP\n")
            
            // Turno do jogador
            cadeia acao
            escreva("\n1. Atacar\n2. Habilidade\n3. Fugir\nEscolha: ")
            leia(acao)
            
            escolha (acao) {
                caso "1":
                    inteiro dano = calcularDano(ataqueBase, verdadeiro)
                    hpInimigoAtual -= dano
                    escreva("\nVocê causa ", dano, " de dano!\n")
                    u.aguarde(1500)
                    pare
                caso "2":
                    se (usarHabilidadeEspecial(ehBoss, nomeInimigo, hpInimigoAtual)) {
                        u.aguarde(1500)
                    } senao {
                        continue() // Volta ao início do loop
                    }
                    pare
                caso "3":
                    se (tentarFugir()) {
                        retorne falso
                    }
                    pare
                caso contrario:
                    escreva("Ação inválida!\n")
                    u.aguarde(1000)
                    continue()
            }
            
            // Verifica se inimigo foi derrotado
            se (hpInimigoAtual <= 0) {
                escreva("\nVocê derrotou ", nomeInimigo, "!\n")
                u.aguarde(2000)
                retorne verdadeiro
            }
            
            // Turno do inimigo
            inteiro danoInimigo = calcularDano(ataqueInimigo, falso)
            hpAtual -= danoInimigo
            escreva("\n", nomeInimigo, " causa ", danoInimigo, " de dano!\n")
            u.aguarde(1500)
            
            // Verifica se jogador foi derrotado
            se (hpAtual <= 0) {
                escreva("\nVocê foi derrotado por ", nomeInimigo, "!\n")
                u.aguarde(2000)
                retorne falso
            }
        }
        retorne falso
    }

    // FUNÇÕES AUXILIARES (implementações completas)
    funcao inicializarCenarios() {
        nomesCenarios[0] = "Floresta da Névoa"
        descricoesCenarios[0] = "Criaturas ocultas espreitam na névoa..."
        // Adicionar outros cenários...
    }

    funcao mostrarStatusPersonagem() {
        escreva("\n=== STATUS ===\n")
        escreva("Nome: ", nomeAventureiro, "\n")
        escreva("Classe: ", classePersonagem, "\n")
        escreva("HP: ", hpAtual, "/", hpMaximo, "\n")
        escreva("Ataque: ", ataqueBase, "\n")
        
        se (classePersonagem == "Mago") {
            escreva("Mana: ", manaAtual, "/", manaMaxima, "\n")
            se (possuiCajadoDoReiEsqueleto) {
                escreva("Habilidade: Dono de Pedaço (Custo: 20 mana)\n")
            }
        }
        // Outras classes...
        
        escreva("Pressione ENTER para continuar...")
        cadeia temp
        leia(temp)
    }
    
  
    }

    // ... (implementar outras funções necessárias)

    funcao mostrarCreditos() {
        limpa()
        escreva("=== CRÉDITOS ===\n")
        escreva("Desenvolvido por: Mestre Fanfas\n")
        escreva("Versão: 1.1.0\n")
        escreva("\nPressione ENTER para voltar...")
        cadeia temp
        leia(temp)
    }

    funcao encerrarJogo() {
        limpa()
        escreva("Encerrando o jogo...\n")
        u.aguarde(2000)
        limpa()
    }
}