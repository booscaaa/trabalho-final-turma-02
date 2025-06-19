programa {
    inclua biblioteca Util --> u

    // CONSTANTES GLOBAIS
    const inteiro TOTAL_CENARIOS = 5
    const inteiro CHANCE_FUGA = 7 // 40% de chance (7-10 em 1d10)
    const inteiro CUSTO_HABILIDADE_MAGO = 20

    inteiro xpProximoNivel
    inteiro calcularXp

    inteiro controladorDeSenario = 0

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
    inteiro habulidadeEspecial

   inteiro habilidadeGuerreiro[3] = {"1 - Golpe Demolidor", "2 - Destruir Carapaça", "3 -Divine Smite"}
   inteiro danoHabilidadeGueirreiro[3] = {10,12,30}
   inteiro habilidadeMago[3] = {"Bola De Fogo", "Raio Congelante", "Meteoro Flamejante"}
   inteiro danoHabilidadeMago[3] = {10,12,30}
   inteiro habilidadeArqueiro[3] = {"Chuva De Meteoro", "Tiro Certeiro", "Disparo Final"}
   inteiro danoHabilidadeArqueiro[3] = {10,12,30}
    
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

    
    cadeia nomeChefeFinal[5] = {"Rei Esqueleto", "Agenlo Brontie", "Lobisomen Da Lua Negra", "Rei Crocovile", "Senhor Das Moscas"}
    inteiro hpMaximoChefe[5]
    inteiro hpAtualChefe[5]
    inteiro nivelChefe[5]
    inteiro xpPorChefe[5]
    inteiro chefeAtaque
    inteiro defesaChefe
    




    cadeia inimigosDificuldadeNormal[10] 

    cadeia nomeInimigos[24] = {"Esqueleto Espada Longa", "Esqueleto Armadurado", "Esqueleto Arqueiro", "Esqueleto Barbaro", "Esqueleto Brutamontes", "Esqueleto Demoniaco", "Esqueleto Corrompido", "Esqueleto Enforcado", "Esqueleto Real", "Esqueleto Plebeu","Bandido Comun", "Bandido Novato", "Bandido Experiente", "Bandido Berseker", "Pirata", "Capitão Esmaga Cranios", "Demonio Espreitador", "Soldado Corrupto", "Mago Corrompido", "Druida Da Chama Eterna","Lobo", "Lobo Cinzento", "Lobo Negro", "Alfa", "Humano Amaldiçoado", "Licantropo", "Licantropo Armadurado", "Licantropo Feiticeiro", "lobisomen Enfraquecido", "Licantropo Das Neves", "Crocovile", "Crocovile Armadurado", "Crocovile Arqueiro", "Crocodilo Primal", "Crocodilo Lendario", "Crocovile Berseker", "Crocovile Brutamontes", "Crocovile Draconico", "Crocovile Tita", "Crocovile Enforcado", "Demonio Vermelho", "Demonio Palido", "Rebelion", "Moscas", "Cerberus"}
    inteiro vidaInimigoMaxima[24] = {150,150,150,150,150,200,200,200,200,200,250,250,250,250,250,300,300,300,300,300,350,350,350,350,350}
    inteiro defesaInimigo[24]  = {10,9,13,12,10,9,8,9,10,7,10,9,7,10,13,9,3,10,8,10,14,10,9,8}
    inteiro manainimigoMaxima[24] = {100,130,140,150,155,123,0,330,250,190,178,180,198,177,290,300,340,230,430,500,322,540,650,430}
    inteiro xpInimigoFacil[24] = {30,20,10,30,50,20,27,11,76,34,32,90,11,15,54,65,32,43,21,19,98,76,32,90}
    inteiro ataqueinimigo[24] = {13, 14, 15,16,17,18,18,18,17,18,19,20,19,18,20,19,18,19,18,18,19,19,17,20}
    inteiro inimigosDerrotado = 0

    
    

    cadeia inimigosDificuldadeDificil[20]

    cadeia nomeBoss
    inteiro stageBoss


    cadeia nomeChefeFinal[5] = {"Rei Esqueleto", "Agenlo Brontie", "Lobisomen Da Lua Negra", "Rei Crocovile"}
    inteiro hpMaximoChefe[5] = {200, 250,300,350,400}
    inteiro xpPorChefe[5] = {100, 200,300,400}
    inteiro chefeAtaque[5] = {25,30,35,40}
    inteiro defesaChefe[5] ={10,10,15,13}
    inteiro chefesDerrotados = 0

     
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
        u.aguarde(0)
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
u.aguarde(0)

escreva("Um dia, uma força sombria conhecida como O Devastador invadiu o reino,\n")
escreva("roubando a relíquia sagrada e mergulhando as terras em trevas e caos.\n")
escreva("Vilas foram saqueadas, florestas corrompidas, e criaturas sombrias começaram\n")
escreva("a vagar pelas regiões.\n\n")
u.aguarde(0)

escreva("Diante da crise, uma antiga profecia se cumpriu: um herói escolhido surgirá\n")
escreva("das sombras para restaurar a luz. Você é esse herói.\n\n")
u.aguarde(0)

escreva("Sua missão é atravessar cinco regiões dominadas pelo mal,\n")
escreva("enfrentando inimigos, evoluindo suas habilidades e se preparando\n")
escreva("para confrontar O Devastador no Castelo Dourado.\n")
escreva("A jornada será repleta de perigos, escolhas e batalhas.\n")
escreva("Seu destino e o de Eldoria estão entrelaçados.\n")


        u.aguarde(0)
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
                    defesa = 14
                    ataqueBase = 15
                    manaMaxima = 0
                    xpMaximo = 100
                    nivelAtual = 1
                    valido = verdadeiro
                    pare
                caso 2:
                    classePersonagem = "Arqueiro"
                    hpMaximo = 120
                    defesa = 12
                    ataqueBase = 20
                    manaMaxima = 100
                    xpMaximo = 100
                    nivelAtual = 1
                    valido = verdadeiro
                    pare
                caso 3:
                    classePersonagem = "Mago"
                    hpMaximo = 100
                    defesa = 10
                    ataqueBase = 23
                    manaMaxima = 100
                    xpMaximo = 100
                    nivelAtual = 1
                    valido = verdadeiro
                    pare
                caso contrario:
                    escreva("Opção inválida! Tente novamente.\n")
                    u.aguarde(0)
                    limpa()
                    
            }

            hpAtual = hpMaximo
            manaAtual = manaMaxima
            escreva("\nVocê escolheu ", classePersonagem, "!\n")
            u.aguarde(0)
            retorne verdadeiro
            mostrarStatusPersonagem()
        }
       
    }

    // SISTEMA DE AVENTURA
    funcao iniciarAventura() {
        cenarioAtual = 0
        logico emAventura = verdadeiro

        cadeia testeSenario[5] = {"Floresta Das Nevoas", "Vila Abandonada", "Caverna Sombria", "Pantano Dos Lamentos", "Castelo Dourado"}

        inteiro matriz[2][5]
        matriz [0][0] = 0
        matriz [1][0] = 4

        matriz [0][1] = 5
        matriz [1][1] = 9

        matriz [0][2] = 10
        matriz [1][2] = 14

        matriz [0][3] = 15
        matriz [1][3] = 19

        matriz [0][4] = 20
        matriz [1][4] = 24

        enquanto (emAventura == verdadeiro) {
            limpa()

             se(xpAtual > xpMaximo){
              subirDeNivel()
              xpMaximo = xpMaximo + 100
            }
            
            se (hpAtual < hpMaximo) {
                escreva("Você Venceu Parabens Descanse um pouco")
                oferecerDescanso()
            }
           
            
            cadeia acao
            limpa()
            escreva(testeSenario[controladorDeSenario])
            escreva("\nAções disponíveis:\n")
            escreva("1. Explorar (encontrar inimigos)\n")
            escreva("2. Enfrentar o Chefe\n")
            escreva("3. Avançar para próxima área\n")
            escreva("4. Ver status\n")
            escreva("5. Descansar\n")
            escreva("6. Voltar ao menu\n")
            escreva("Escolha: ")
            leia(acao)
            escolha (acao) {
                caso "1":
            
                    explorarArea(matriz[0][controladorDeSenario],matriz[1][controladorDeSenario])
                    pare

                caso "2":
                se(inimigosDerrotado >= 5){
                  escreva("Você Derrotou todos os meus servos humano, então es digno de me enfrentar!")
                  u.aguarde(1060)
                  batalhar(nomeChefeFinal[chefesDerrotados],hpMaximoChefe[chefesDerrotados],hpMaximoChefe[chefesDerrotados],defesaChefe[chefesDerrotados],chefeAtaque[chefesDerrotados],xpPorChefe[chefesDerrotados])
                  chefesDerrotados = chefesDerrotados + 1
                } senao{
                  escreva("Meus Servos ainda estão vivos saia daqui")
                  escreva("Voce derrorou somente" + inimigosDerrotado)
                  u.aguarde(1060)
                }
                

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
                    oferecerDescanso()
                    pare
                caso "6":
                    emAventura = falso
                    pare
                caso contrario:
                    escreva("Ação inválida!\n")
                    u.aguarde(1500)
            }
            
            se (hpAtual <= 0) {
              limpa()
                escreva("\n")
                escreva("================================\n")
                escreva("         ✦ GAME OVER ✦\n")
                escreva("================================\n")
                escreva("O destino de ", nomeAventureiro, " chegou ao fim nesta jornada.\n")
                escreva("Classe     : ", classePersonagem, "\n")
                escreva("Nível      : ", nivelAtual, "\n")
                escreva("XP alcançado: ", xpAtual, "/", xpMaximo, "\n")
                escreva("Defesa final: ", defesa, "\n")
                escreva("--------------------------------\n")
                escreva("Às vezes, a derrota é apenas um novo começo.\n")
                escreva("Reflita. Aprimore-se. Retorne mais forte.\n")
                escreva("================================\n")

                emAventura = falso
                u.aguarde(3000)
            }
        }
     }

    
    funcao explorarArea(inteiro b, inteiro c){
      inteiro a = u.sorteia(b,c)
      logico iniciarBatalhar
      batalhar(nomeInimigos[a],vidaInimigoMaxima[a],vidaInimigoMaxima[a],defesaInimigo[a],ataqueinimigo[a],xpInimigoFacil[a])
      inimigosDerrotado = inimigosDerrotado + 1
      iniciarBatalhar = verdadeiro
    }
      
        // FUNÇÕES AUXILIARES (implementações completas)
    funcao inicializarCenarios() {
        nomesCenarios[0] = "Floresta da Névoa"
        descricoesCenarios[0] = "Criaturas ocultas espreitam na névoa..."
        // Adicionar outros cenários...
    }
    funcao logico batalhar( 
      cadeia nomeInimigo, 
      inteiro vidaInimigoEnfretando, 
      inteiro vidaInimigoMaximaEnfrentado,
      inteiro defesaInimgoEnfrentado,
      inteiro ataqueinimigoEnfrentado,
      inteiro xpInimigo) {

        logico iniciarBatalhar
        
        iniciarBatalhar = verdadeiro
        enquanto (vidaInimigoMaximaEnfrentado >= 0 e vidaInimigoEnfretando >= 0) {
            limpa()
           escreva("================================\n")
           escreva("           === BATALHA ===\n")
           escreva("================================\n")
           escreva(nomeAventureiro, "\n")
           escreva("Classe: ", classePersonagem, "\n")
           escreva("HP     : ", hpAtual, " / ", hpMaximo, "\n")

           se (classePersonagem == "Mago") {
              escreva("Mana   : ", manaAtual, " / ", manaMaxima, "\n")
           }

           escreva("Defesa : ", defesa, "\n")
            escreva("\nXP     : ", xpAtual, " / ", xpMaximo, "\n")

           escreva("--------------------------------\n")


           escreva("Inimigo: ", nomeInimigo, "\n")
           escreva("HP     : ", vidaInimigoEnfretando, " / ", vidaInimigoMaximaEnfrentado, "\n")
           escreva("Defesa  :", defesaInimgoEnfrentado,"\n")

          escreva("================================\n")

            
            // Turno do jogador
            cadeia acao
          

            escreva("\n1. Atacar\n2. Habilidade\nEscolha: ")
            leia(acao)
            
            escolha (acao) {
                caso "1":
                se(ataqueBase < defesaInimigo){

                }
              
                    inteiro dano = calcularDano(12, ataqueBase)
                    vidaInimigoEnfretando -= dano
                    escreva("\nVocê causa ", dano, " de dano!\n")
                    u.aguarde(1500)
                    pare
                caso "2":escreva("=== MENU DE HABILIDADES ===\n")
                    inteiro acao
                    inteiro danoHabilidadesValor
                    inteiro dano
                    inteiro valordados[3] = {10,12,30}
                
                    se (classePersonagem == "Guerreiro") {
                      escreva(habilidadeGuerreiro )
                      escreva("\nEscolha uma habilidade digitando o número correspondente: ")
                      leia(acao)
                      danoHabilidadesValor = danoHabilidadeGueirreiro[acao - 1]
                    } senao se(classePersonagem == "Arqueiro"){
                      escreva(habilidadeArqueiro)
                      escreva("Escolha uma habilidade digitando o número correspondente: ")
                      leia(acao)
                      danoHabilidadesValor = danoHabilidadeArqueiro[acao - 1]
                    } senao se(classePersonagem == "Mago"){
                      escreva(habilidadeMago)
                      escreva("Escolha uma habilidade digitando o número correspondente: ")
                      leia(acao)
                      danoHabilidadesValor = danoHabilidadeMago[acao - 1]
                        
                    }
                    dano = calcularDanoHabilidade(valordados[acao - 1], danoHabilidadesValor) 
                    vidaInimigoEnfretando -= dano
                    escreva("\nVocê causa ", dano, " de dano!\n")
                    

            }
            
            // Verifica se inimigo foi derrotado
            se (vidaInimigoEnfretando <= 0) {
                escreva("\nVocê derrotou ", nomeInimigo, "!\n")
                u.aguarde(2000)
                xpAtual = xpAtual + xpInimigo
                retorne verdadeiro
            }
            
            // Turno do inimigo
            inteiro danoInimigo = calcularDano(10, ataqueinimigoEnfrentado)
            hpAtual -= danoInimigo
            escreva("\n", nomeInimigo, " causa ", danoInimigo, " de dano!\n")
            u.aguarde(1500)
            
            // Verifica se jogador foi derrotado
            se (hpAtual <= 0) {
              limpa()
                escreva("\n")
                escreva("================================\n")
                escreva("         ✦ GAME OVER ✦\n")
                escreva("================================\n")
                escreva("O destino de ", nomeAventureiro, " chegou ao fim nesta jornada.\n")
                escreva("Classe     : ", classePersonagem, "\n")
                escreva("Nível      : ", nivelAtual, "\n")
                escreva("XP alcançado: ", xpAtual, "/", xpMaximo, "\n")
                escreva("Defesa final: ", defesa, "\n")
                escreva("--------------------------------\n")
                escreva("Às vezes, a derrota é apenas um novo começo.\n")
                escreva("Reflita. Aprimore-se. Retorne mais forte.\n")
                escreva("================================\n")

                u.aguarde(2500)
                retorne falso
                encerrarJogo()
                calcular()
                habilidades()
                calcularDano()
                calcularDanoHabilidade()
                calcualarXp()
                
            }
          
        }
  }  
  funcao oferecerDescanso(){
    inteiro acao
    escreva ("1- sim, 2- não")
    leia(acao)
    se(acao == 1){
      hpAtual = hpMaximo
      para(inteiro i = 0; i <= 5; i++){
        escreva(".")
        u.aguarde(1200)
        
      }
    }
  }
  funcao inteiro calcularDano(inteiro numeroFinal, inteiro danoDoAtaque){

    inteiro resultado = u.sorteia(1,numeroFinal) + danoDoAtaque
    
   
    retorne resultado
  } 
  funcao habilidades(){
    inteiro habilidades
    inteiro habilidadeGuerreiro
    inteiro habilidadeMago 
    inteiro habilidadeArqueiro 

    "Chuva De Meteoro"
    "Bola De Fogo"
   

  } 
  funcao inteiro calcularDanoHabilidade(inteiro numeroFinal, inteiro danoHabilidades){
    inteiro resultadoHabilidade = u.sorteia(1,numeroFinal) + danoHabilidades

    retorne resultadoHabilidade
  }
  funcao subirDeNivel(){
    inteiro acao
    escreva("Você upou de nivel escolha qual atributo deseja aprimorar 1- vitalidade 2 - ataque 3 - defesa")
    leia(acao)
    escolha(acao){
      caso 1:
      escreva("Aumentar Vitalidade")
      hpMaximo = hpMaximo + (10 * nivelAtual)
      caso 2:
      escreva("Aumentar Ataque")
      ataqueBase = ataqueBase + (2 * nivelAtual)
      caso 3:
      escreva("Aumentar Defesa")
      defesa = defesa + (2 * nivelAtual)
    }
    nivelAtual + 1
  }

    funcao mostrarStatusPersonagem() {
        escreva("\n=== STATUS ===\n")
        escreva("Nome: ", nomeAventureiro, "\n")
        escreva("Classe: ", classePersonagem, "\n")
        escreva("HP: ", hpAtual, "/", hpMaximo, "\n")
        escreva("Ataque: ", ataqueBase, "\n")
        escreva("Nivel De Xp:\n", xpAtual, "/", xpMaximo, "\n")
        
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