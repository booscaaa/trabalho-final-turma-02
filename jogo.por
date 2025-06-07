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
    inteiro defesa
    inteiro ataqueBase
    inteiro manaAtual
    inteiro manaMaxima
    inteiro xpAtual = 0
    inteiro xpMaximo = 100
    inteiro nivelAtual
    
    // ITENS ESPECIAIS
    logico possuiCajadoDoReiEsqueleto
    logico possuiArmaduraEsqueletica
    logico possuiArcoDaMorte
    
    // ESTADO DO JOGO
    logico fugiuDeCombate
    logico bossDerrotadoPorCenario[TOTAL_CENARIOS]
    inteiro cenarioAtual
    inteiro escolherDificuldade
    logico aventura
    logico cavaleiroDasAlmas
    inteiro opcao
    
    // CENÁRIOS
    cadeia nomesCenarios[TOTAL_CENARIOS]
    cadeia descricoesCenarios[TOTAL_CENARIOS]

    inteiro chefeFinalRodada[5]
    cadeia nomeChefeFinal[5] = {"Rei Esqueleto", "Agenlo Brontie", "Lobisomen Da Lua Negra", "Rei Crocovile", "Senhor Das Moscas"}
    inteiro hpMaximoChefe[5]
    inteiro hpAtualChefe[5]
    inteiro nivelChefe[5]
    inteiro xpPorChefe[5]
    inteiro chefeAtaque
    inteiro defesaChefe
    




    cadeia inimigosDificuldadeNormal[10] 

    inteiro inimigosFlorestaDaNevoa[10]
    cadeia nomeInimigos[10] = {"Esqueleto Espada Longa", "Esqueleto Armadurado", "Esqueleto Arqueiro", "Esqueleto Barbaro", "Esqueleto Brutamontes", "Esqueleto Demoniaco", "Esqueleto Corrompido", "Esqueleto Enforcado", "Esqueleto Real", "Esqueleto Plebeu"}
    inteiro vidaInimigoMaxima[10]
    inteiro defesaInimigo[10]
    inteiro manainimigoMaxima[10]
    inteiro xpInimigoFacil[10]




    inteiro inimigosVilaAbandonada[10]
    inteiro nomeInimigos[10] =  {"Bandido Comun", "Bandido Novato", "Bandido Experiente", "Bandido Berseker", "Pirata", "Capitão Esmaga Cranios", "Demonio Espreitador", "Soldado Corrupto", "Mago Corrompido", "Druida Da Chama Eterna"}
    inteiro vidaInimigoMaxima[10]
    inteiro defesaInimigo[10]
    inteiro manainimigoMaxima[10]
    inteiro xpInimigoFacil[10]



    inteiro inimigosCavernaSombria[10]
    inteiro nomeInimigos[10] = {"Lobo", "Lobo Cinzento", "Lobo Negro", "Alfa", "Humano Amaldiçoado", "Licantropo", "Licantropo Armadurado", "Licantropo Feiticeiro", "lobisomen Enfraquecido", "Licantropo Das Neves"}
    inteiro vidaInimigoMaxima[10]
    inteiro defesaInimigo[10]
    inteiro manainimigoMaxima[10]
    inteiro xpInimigoFacil[10]



    inteiro inimigosPantanoDosLamentos[10]
    inteiro nomeInimigos[10] = {"Crocovile", "Crocovile Armadurado", "Crocovile Arqueiro", "Crocodilo Primal", "Crocodilo Lendario", "Crocovile Berseker", "Crocovile Brutamontes", "Crocovile Draconico", "Crocovile Tita", "Crocovile Enforcado"}
    inteiro vidaInimigoMaxima[10]
    inteiro defesaInimigo[10]
    inteiro manainimigoMaxima[10]
    inteiro xpInimigoFacil[10]



    inteiro inimigosCasteloDourado[10]
    inteiro nomeInimigos[10]
    inteiro vidaInimigoMaxima[10]
    inteiro defesaInimigo[10]
    inteiro manainimigoMaxima[10]
    inteiro xpInimigoFacil[10]









    cadeia inimigosDificuldadeDificil[20]

    


    cadeia nomeBoss
    inteiro stageBoss

     funcao enfrentarChefe(){
      inteiro chefeFinalRodada[5]
      cadeia nomeChefeFinal[5] = {"Rei Esqueleto", "Agenlo Brontie", "Lobisomen Da Lua Negra", "Rei Crocovile", "Senhor Das Moscas"}
      inteiro hpMaximoChefe[5]
      inteiro hpAtualChefe[5]
      inteiro nivelChefe[5]
      inteiro xpPorChefe[5]
      inteiro chefeAtaque
      inteiro defesaChefe

      para(inteiro i = 0; i < 5; i++){
        se(opcao == 2){
          escreva("Ninguem Mais surgiu em seu caminho porem você Sente uma energia forte")
          u.aguarde(1200)
          escreva("...")
          u.aguarde(1200)
          escreva("Ele Esta Aqui", nomeBoss[i])
          batalhar()
        }
      }
    }
    funcao avancarParaProximaArea(){
      se(bossDerrotadoPorCenario == verdadeiro){
        escreva("Você Chega Na Vila Abandonada")
      }
    }
    
     
  

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
            escreva("║        ⛧DARKEST SOULS⛧        ║\n")
            escreva("╠═════════════════════════════════╣\n")
            escreva("║                                 ║\n")
            escreva("║      I   ▸ Nova História8       ║\n")
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
                
                    escreva("╔═══════════════════════════════╗\n")
                    escreva("║     🔥 ESCOLHA SUA JORNADA 🔥║\n")
                    escreva("╠═══════════════════════════════╣\n")
                    escreva("║                               ║\n")
                    escreva("║  1. ▸  AVENTURA               ║\n")
                    escreva("║                              .║\n")
                    escreva("║                               ║\n")
                    escreva("║                               ║\n")
                    escreva("║  2. ▸  CAVALEIRO DAS ALMAS    ║\n")
                    escreva("║                               ║\n")
                    escreva("║                               ║\n")
                    escreva("║                               ║\n")
                    escreva("║                               ║\n")
                    escreva("╚═══════════════════════════════╝\n")

                    leia(escolherDificuldade)
                    limpa()

                    aventura = falso
                    cavaleiroDasAlmas = falso
                    se(escolherDificuldade == 1){
                      aventura = verdadeiro
                      escreva("Escoheu a Historia inves do desafio Nobre Guerreiro.")
                    } senao {
                      cavaleiroDasAlmas = verdadeiro
                      escreva("Um Guerreiro Que Anseia por desafios entendo.")
                    }
                    limpa()

                    iniciarNovaHistoria()

                    


                escreva("")
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
    


    // HISTÓRIA E CRIAÇÃO DE PERSONAGEM
    funcao iniciarNovaHistoria() {
        mostrarIntroducao()
        definirNomePersonagem()
        escolherClasse()
        mostrarStatusPersonagem()
        iniciarAventura()
    }

    funcao mostrarIntroducao() {
       
escreva("Há muito tempo, no Reino de Eldoria, a paz era mantida pela mística Pedra da Luz,\n")
escreva("protegida pelos Anciãos do Castelo Dourado.\n\n")
u.aguarde(2000)

escreva("Um dia, uma força sombria conhecida como O Devastador invadiu o reino,\n")
escreva("roubando a relíquia sagrada e mergulhando as terras em trevas e caos.\n")
escreva("Vilas foram saqueadas, florestas corrompidas, e criaturas sombrias começaram\n")
escreva("a vagar pelas regiões.\n\n")
u.aguarde(2000)

escreva("Diante da crise, uma antiga profecia se cumpriu: um herói escolhido surgirá\n")
escreva("das sombras para restaurar a luz. Você é esse herói.\n\n")
u.aguarde(2000)

escreva("Sua missão é atravessar cinco regiões dominadas pelo mal,\n")
escreva("enfrentando inimigos, evoluindo suas habilidades e se preparando\n")
escreva("para confrontar O Devastador no Castelo Dourado.\n")
escreva("A jornada será repleta de perigos, escolhas e batalhas.\n")
escreva("Seu destino e o de Eldoria estão entrelaçados.\n")


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
                    defesa = 10
                    ataqueBase = 13
                    manaMaxima = 0
                    xpMaximo = 100
                    nivelAtual = 1
                    valido = verdadeiro
                    pare
                caso 2:
                    classePersonagem = "Arqueiro"
                    hpMaximo = 100
                    defesa = 8
                    ataqueBase = 12
                    manaMaxima = 0
                    xpMaximo = 100
                    nivelAtual = 1
                    valido = verdadeiro
                    pare
                caso 3:
                    classePersonagem = "Mago"
                    hpMaximo = 80
                    defesa = 5
                    ataqueBase = 17
                    manaMaxima = 100
                    xpMaximo = 100
                    nivelAtual = 1
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
            mostrarStatusPersonagem()
        }
       
    }

    // SISTEMA DE AVENTURA
    funcao iniciarAventura() {
        cenarioAtual = 0
        logico emAventura = verdadeiro
        
        enquanto (emAventura == verdadeiro) {
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
                    u.sorteia(1,4)

                     se(u.sorteia == 4){
                     escreva("Você Encontra uma casa abandonada entra nela?")
                     opcao(1 == "Sim", 2 == "Não")
                     leia(opcao)
                     se(opcao == 1){
                       u.sorteia(1,4)
                       } se(u.sorteia < 3){
                        escreva("Você Encontra um enforcado")
                        leia(inimigosFlorestaDaNevoa[8])
                        batalhar()
                         }
                        }
                    

              

                caso "2":
                    enfrentarChefe()
                    para(inteiro i = 0; i < 5; i++){
                   se(opcao == 2){
                    escreva("Ninguem Mais surgiu em seu caminho porem você Sente uma energia forte")
                    u.aguarde(1200)
                    escreva("...")
                    u.aguarde(1200)
                    escreva("Ele Esta Aqui", nomeBoss[i])
                    batalhar()
                    }
                   }
                    
                    
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

    
    funcao explorarArea(){
       u.sorteia(1,4)

      se(u.sorteia == 4){
        escreva("Você Encontra uma casa abandonada entra nela?")
        opcao(1 == "Sim", 2 == "Não")
        leia(opcao)

        se(opcao == 1){
          u.sorteia(1,4)
        } se(u.sorteia < 3){
          escreva("Você Encontra um enforcado")
          leia(inimigosFlorestaDaNevoa[8])
          batalhar()
        }
      }
     
  }
  
        // FUNÇÕES AUXILIARES (implementações completas)
    funcao inicializarCenarios() {
        nomesCenarios[0] = "Floresta da Névoa"
        descricoesCenarios[0] = "Criaturas ocultas espreitam na névoa..."
        // Adicionar outros cenários...
    }
    funcao logico batalhar() {
        inteiro hpInimigoAtual = hpInimigo
        fugiuDeCombate = falso
        
        enquanto (hpAtual > 0 e hpInimigoAtual > 0) {
            limpa()
            escreva("=== BATALHA ===\n")
            escreva(nomeAventureiro, ": ", hpAtual, "/", hpMaximo, " HP")
            se (classePersonagem == "Mago") {
                escreva(" | ", manaAtual, "/", manaMaxima, " Mana")
            }
            escreva("\n", nomeInimigos, ": ", hpInimigoAtual, "/", vidaInimigoMaxima, " HP\n")
            
            // Turno do jogador
            cadeia acao
            escreva("\n1. Atacar\n2. Habilidade\n3. Fugir\nEscolha: ")
            leia(acao)
            
            escolha (acao) {
                caso "1":
                se(ataqueBase < defesaInimigo){

                }
                    inteiro dano = calcularDano(ataqueBase, verdadeiro)
                    hpInimigoAtual -= dano
                    escreva("\nVocê causa ", dano, " de dano!\n")
                    u.aguarde(1500)
                    pare
                caso "2":
                    se (usarHabilidadeEspecial(stageBoss, nomeInimigos, hpInimigoAtual)) {
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
                escreva("\nVocê derrotou ", nomeInimigos, "!\n")
                u.aguarde(2000)
                retorne verdadeiro
            }
            
            // Turno do inimigo
            inteiro danoInimigo = calcularDano(ataqueInimigo, falso)
            hpAtual -= danoInimigo
            escreva("\n", nomeInimigos, " causa ", danoInimigo, " de dano!\n")
            u.aguarde(1500)
            
            // Verifica se jogador foi derrotado
            se (hpAtual <= 0) {
                escreva("\nVocê foi derrotado por ", nomeInimigos, "!\n")
                u.aguarde(2000)
                retorne falso
            }
        }
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
        escreva("Pressione ENTER para continuar...")
        cadeia temp
        leia(temp)
  }
}
