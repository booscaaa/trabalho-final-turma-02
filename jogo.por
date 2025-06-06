programa {
  inclua biblioteca Util --> u
  inteiro vidaMaxima = 100
  inteiro vidaJogador
  inteiro ataqueJogador
  cadeia nomedoHeroi
  cadeia classescolhidaMostrar = ""
  inteiro classeEscolhida
  inteiro contadordeMapas = 0
  inteiro nivelJogador = 1
  inteiro experienciaAtual = 0
  inteiro experienciaParaProximoNivel = 10
  inteiro quantidadeItens[3] = {1, 1, 0}
  cadeia itensNaMochila[3] ={
    "Poção de vida \n",
    "Poção estranha\n",
    "Vazio\n"
  }
  inteiro contadorItens = 0
  cadeia posicoesNoMapa[5] = {
    "Floresta Amaldiçoada",
    "Vilarejo abandonado",
    "Entrada do castelo",
    "Castelo",
    "Campo aberto com tempestade nada suspeito"
  } 

  funcao mostraAtributos(){
    escreva("Nome: ", nomedoHeroi, "\n" )
    escreva("Classe: ", classescolhidaMostrar, "\n")
    escreva("Vida: ", vidaJogador, "\n")
    escreva("XP: ", experienciaAtual, " / ", experienciaParaProximoNivel)
    escreva()
  }

  funcao upadeNivelXP(){

  }

  funcao continuarPrimeiroWin(){
    escreva("Voce conquistou o respeito das Arvores acabando com a ditadura da Arvore amaldicoada derrotando ela")
    escreva("as arvores abrem caminho e o bosque que antes era tomado pela escuridao profunda agora reflete a luz do sol")
    escreva("Voce se sentiu um herói ao libertar as arvores")
    escreva("Ao inves de voltar para sua casa, voce resolve seguir seu caminho a frente como um herói")
  }

  funcao usarPocaoEstranha() {
  inteiro sorte = u.sorteia(0, 1)

  se(sorte == 0) {
    vidaJogador = 0
    escreva("Você bebeu a Poção Estranha...\n")
    escreva("Seu corpo começa a tremer... seus olhos escurecem...\n")
    escreva("VOCÊ MORREU DE FORMA TERRÍVEL!\n")
    u.aguarde(5000)
    creditos()
  } senao {
    ataqueJogador = ataqueJogador + 1
    escreva("Você bebeu a Poção Estranha...\n")
    escreva("Você sente uma energia sobrenatural percorrendo seu corpo!\n")
    escreva("Seu ATAQUE aumentou para ", ataqueJogador, "\n")
  }

  

}


  funcao MenuTop() {
    inteiro opcaoEscolhidaMenu = 0

    faca {
      limpa()
      escreva("\n-- MENU --\n")
      escreva("\nOpção 1 - Iniciar Jornada\n")
      escreva("\nOpção 2 - Créditos\n")
      escreva("\nOpção 3 - Sair do Jogo\n")
      leia(opcaoEscolhidaMenu)

      se(opcaoEscolhidaMenu == 1) {
        iniciougame()
        u.aguarde(2000)
      } senao se(opcaoEscolhidaMenu == 2) {
        creditos()
        u.aguarde(6000)
      } senao se(opcaoEscolhidaMenu == 3) {
        escreva("Até logo!")
        u.aguarde(8000)
        limpa()
      } senao {
        escreva("\nOpção Inválida!\n")
        u.aguarde(7000)
      }
    } enquanto(opcaoEscolhidaMenu > 3 e opcaoEscolhidaMenu < 1)
  }

  funcao PrimeiroMapa() {
    inteiro vidaDaArvore = 10
    inteiro ataqueDaArvore = 2
    inteiro opcaoEsolhidaNaBatalha1
    inteiro leiaItemUsado

    posicoesNoMapa[contadordeMapas]

    escreva("Você saiu para andar com seus equipamentos e entrou na Floresta Amaldiçoada sem perceber!\n")
    escreva("\nVocê tenta voltar mas a floresta se distorce e muda os seus locais.\n")
    escreva("\nSó lhe resta seguir em frente para dentro da floresta.\n")
    escreva("\nEnquanto você caminha pela floresta...\n")
    escreva("\nAs árvores se fecham em formato de arena, no meio da escuridão você vê 2 olhos vermelhos como sangue.\n")
    escreva("\nVocê encontra Árvore do Lamento, não há para onde correr sua única escolha é batalhar!\n")
  enquanto(vidaJogador>0 e vidaDaArvore>0){
    escreva("O que você você deseja fazer agora ?\n")
    escreva("1- Atacar\n")
    escreva("2- Usar um item\n")
    escreva("3- Ver seus atributos\n")
    escreva("Escolha: ")
    leia(opcaoEsolhidaNaBatalha1)
  

    se(opcaoEsolhidaNaBatalha1 == 1) {
      batalhaContraArvore() 

    } senao se(opcaoEsolhidaNaBatalha1 == 2) {
      itensnoinventario()
      escreva("Qual item você deseja usar ?")
      leia(leiaItemUsado)
    } senao se(opcaoEsolhidaNaBatalha1 ==3){
      mostraAtributos()
    } senao {
      escreva("Você não fez absolutamente nada e morreu.")
      u.aguarde(5000)
      creditos()
    }

    se(leiaItemUsado==1){
      usarPocaoDeVida()
    } senao se(leiaItemUsado==2){
      usarPocaoEstranha()
    }
  }

  se(leiaItemUsado >= 1 e leiaItemUsado <= 3) {
  se(quantidadeItens[leiaItemUsado - 1] > 0) {
    escreva("Você usou ", itensNaMochila[leiaItemUsado - 1])
    quantidadeItens[leiaItemUsado - 1] = quantidadeItens[leiaItemUsado - 1] - 1
  } senao {
    escreva("Você não tem esse item!")}


    }

    itensnoinventario()
  }

  funcao batalhaContraArvore() {
  inteiro vidaDaArvore = 10
  inteiro ataqueDaArvore = 2
  inteiro escolhaTurno
  inteiro escolhaItem
  inteiro rodada = 1

  enquanto(vidaJogador > 0 e vidaDaArvore > 0) {
    escreva(vidaDaArvore)
    escreva("\n-- Rodada ", rodada, " --\n")
    escreva("Sua Vida: ", vidaJogador, " | Vida da Árvore: ", vidaDaArvore, "\n")
    escreva("1 - Atacar\n")
    escreva("2 - Usar item\n")
    escreva("Escolha sua ação: ")
    leia(escolhaTurno)

    se(escolhaTurno == 1) {
      escreva("\nVocê ataca a Árvore do Lamento causando ", ataqueJogador, " de dano!\n")
      vidaDaArvore = vidaDaArvore - ataqueJogador
    } senao se(escolhaTurno == 2) {
      itensnoinventario()
      escreva("Qual item deseja usar? ")
      leia(escolhaItem)

      se(escolhaItem >= 1 e escolhaItem <= 3) {
        se(quantidadeItens[escolhaItem - 1] > 0) {
          se(escolhaItem == 1) {
            usarPocaoDeVida()
            quantidadeItens[escolhaItem - 1] = quantidadeItens[escolhaItem - 1] - 1
          } senao se(escolhaItem == 2) {
            usarPocaoEstranha()
            quantidadeItens[escolhaItem - 1] = quantidadeItens[escolhaItem - 1] - 1
          } senao {
            escreva("Esse item não faz nada...\n")
          }
        } senao {
          escreva("Você não tem esse item!\n")
        }
      } senao {
        escreva("Item inválido!\n")
      }
    } senao {
      escreva("Você hesitou... e perdeu sua chance de agir!\n")
    }

    se(vidaDaArvore <= 0) {
      escreva("\nVocê derrotou a Árvore do Lamento!\n")
      escreva("Sua jornada continua...\n")
      continuarPrimeiroWin()
      pare
    }

    escreva("A Árvore do Lamento ataca causando ", ataqueDaArvore, " de dano!\n")
    vidaJogador = vidaJogador - ataqueDaArvore

    se(vidaJogador <= 0) {
      escreva("Você foi derrotado...\n")
      u.aguarde(3000)
      creditos()
    }

    rodada = rodada + 1
    u.aguarde(2000)
  }
}

  funcao inicio() {
    MenuTop()
  }

  funcao creditos() {
    limpa()
    escreva("---------------------------------------\n")
    escreva("--Creditos--\n")
    escreva("Tudo - Ronaldo\n")
    escreva("Professor - Vini Boscaa\n")
    escreva("---------------------------------------\n")
    u.aguarde(5000)
    MenuTop()
  }

  funcao iniciougame() {

    limpa()
    escreva("Você acaba de iniciar sua Aventura!")
    u.aguarde(5000)
    escreva("\n --------------------\n")
    escreva("\n  A jornada do Herói \n")
    escreva("\n --------------------\n")
    u.aguarde(1)
    limpa()

    escreva("\n Há muito tempo, no Reino de Eldoria, a paz era mantida pela mística Pedra da Luz, protegida pelos Anciãos do Castelo Dourado.\n")
    u.aguarde(1)
    escreva("\nUm dia, uma força sombria conhecida como O Devastador invadiu o reino, roubando a relíquia sagrada e mergulhando as terras em trevas e caos.\n")
    escreva("Vilas foram saqueadas, florestas corrompidas, e criaturas sombrias começaram a vagar pelas regiões.\n")
    u.aguarde(1)
    escreva("\nDiante da crise, uma antiga profecia se cumpriu: um herói escolhido surgirá das sombras para restaurar a luz. Você é esse herói.\n")
    u.aguarde(1)
    escreva("\nSua missão é atravessar cinco regiões dominadas pelo mal, enfrentando inimigos, evoluindo suas habilidades e se preparando para confrontar O Devastador no Castelo Dourado.\n")
    escreva(" A jornada será repleta de perigos, escolhas e batalhas. Seu destino e o de Eldoria estão entrelaçados.")
    u.aguarde(1)
    limpa()

    escreva("\n--Bem Vindo ao RPG A jornada do Herói--\n")
    u.aguarde(1)
    escreva("Primeiramente digite o nome que seu Herói terá: ")
    leia(nomedoHeroi)
    escreva("Olá ", nomedoHeroi, "\n")
    escreva("\n no reino de Eldoria, é comum que as pessoas escolham trilhar o caminho de guerreiro, mago ou arqueiro, moldando seu destino conforme essas lendárias vocações.\n")
    u.aguarde(1)
    limpa()

    escreva("\n 1. Guerreiro")
    mostrardesenhoguerreiro()
    u.aguarde(1000)
    limpa()

    escreva("\n 2. Mago\n")
    mostrardesenhomago()
    u.aguarde(1000)
    limpa()

    escreva("\n 3. Arqueiro\n")
    escreva("\nespecialista em combate à distância, ágil e preciso, domina arcos e táticas de emboscada.\n")
    u.aguarde(1000)
    limpa()

    escreva("\n 4 Aldeão\n")
    mostrardesenhoaldeao()
    limpa()
    

    escreva("\nQual classe você ira escolher para ", nomedoHeroi, "? (OBS) 1 a 4\n")
    leia(classeEscolhida)

    faca {
      se(classeEscolhida == 1) {
        escreva("\nBem vindo Guerreiro ", nomedoHeroi, "\n")
        classescolhidaMostrar = "Guerreiro"
        vidaJogador = 10
        ataqueJogador = 3
      } senao se(classeEscolhida == 2) {
        escreva("\nBem vindo Mago " , nomedoHeroi, "\n")
        classescolhidaMostrar = "Mago"
        vidaJogador = 8
        ataqueJogador = 5
      } senao se(classeEscolhida == 3) {
        escreva("\nBem vindo Arqueiro ", nomedoHeroi, "\n")
        classescolhidaMostrar = "Arqueiro"
        vidaJogador = 7
        ataqueJogador = 6 
      } senao se(classeEscolhida == 4) {
        escreva("\nAgricultor ", nomedoHeroi, "\n")
        vidadealdeao()
        u.aguarde(2000)
        limpa()
        creditos()
      } senao {
        escreva("\nVocê não se decidiu e virou um Agricultor comum!\n")
        classeEscolhida = 4
        vidadealdeao()
        u.aguarde(2000)
        limpa()
        creditos()
      }
    } enquanto(classeEscolhida < 1 e classeEscolhida > 4)

    PrimeiroMapa()
  }

  funcao vidadealdeao() {
    escreva("Em Eldoria, o aldeão ", nomedoHeroi, " passava os dias cuidando da terra, enfrentando o frio e a escassez.\n Silencioso e solitário, vivia sem sonhos grandiosos, apenas sobrevivendo entre plantações secas e esperanças esquecidas.")
    u.aguarde(7000)
    escreva(nomedoHeroi, " levava uma vida simples, cultivando sua horta em silêncio.\n Quando a Febre de Eldor se espalhou pelo reino, ele tentou resistir, mas sem acesso a curas ou ajuda, adoeceu lentamente até seu fim, esquecido entre as neblinas dos campos.")
    u.aguarde(7000)
    limpa()
    escreva(":)")
    u.aguarde(5000)
    limpa()
  }

  funcao mostrardesenhoaldeao() {
    escreva("                                                          \n")
escreva("                         ++++++++++++                         \n")
escreva("                       ++++++++++++++++                        \n")
escreva("                      ++++++++++++++++++                       \n")
escreva("                      ++++++++++++++++++                       \n")
escreva("                     ++++++++++++++++++++                      \n")
escreva("                  ==========================                   \n")
escreva("                ==============+++++++=========+                \n")
escreva("                ======##:::::::=#####*##======                 \n")
u.aguarde(1)
escreva("                  ====+-::::::::::::::=+====                   \n")
escreva("                      :::::::::::::::::-                       \n")
escreva("                       ::::::::::::::::                        \n")
escreva("                        ::::::::::::::                         \n")
escreva("                         ::::::::::::                          \n")
escreva("                         :.::::::::.:+                         \n")
escreva("                   ++++++-..::::::..-++++++                    \n")
escreva("                  :++++++=...::::...=++++++:     \n")
escreva("                ..:+++++++:..::::...+++++++:..   \n")
escreva("               ...:+++++++-...::...-+++++++:...                \n")
escreva("              .....=+++++++=-:..:-=++++++++.....:              \n")
escreva("            .......=+++++++-.-===.-+++++++=.......             \n")
escreva("           ........=++++++++:....:++++++++=........            \n")
escreva("          .........-++++++++=+--+=++++++++-..........          \n")
u.aguarde(1)
escreva("         :::.......:+++++++++-::-+++++++++:.......::           \n")
escreva("         :::::..... ++++++++++-:++++++++++ .....::::           \n")
escreva("         :::::::    ++++++++++++++++++++++    ::::::           \n")
escreva("         :::::::    ++++++++++++++++++++++    ::::::           \n")
escreva("         :::::::   +++++++++++++++++++++++*   ::::::           \n")
escreva("         :::::::   ++++++++++++++++++++++++   ::::::           \n")
escreva("         :::::::  ++++++++++++++++++++++++++  ::::::           \n")
escreva("         :::::::  ++++++++++++++++++++++++++  ::::::           \n")
escreva("                  ++++++++++++++++++++++++++          \n")
escreva("                     ++++++++++++++++++++      \n")
u.aguarde(1000)
  }

  funcao mostrardesenhoguerreiro() {
    escreva("                                                   \n")
    escreva("                 .=*:             .:+*######*=.                              \n")
    escreva("                .=@@@.          .:@@@@@@@@@@@@@%.                            \n")
    escreva("               .+@@%@@.         :@@#==========%@@.                           \n")
    escreva("               :@@+-%@#.        -@@@@@@@@@@@@@@@@:                           \n")
    escreva("               -@@=-#@#.        -@@::::::::::::@@:                           \n")
    escreva("               -@@=-#@#.        -@@::-=-::-=:::@@:")       escreva(          "Um guerreiro é um combatente forte e resistente, especializado em combate corpo a corpo.\n")
    escreva("               -@@=-#@#.        -@@::*@*::%@=::@@:                           \n")
    escreva("               -@@=-#@#.        -@@::::::::::::@@:                           \n")
    escreva("               -@@=-#@#.        -@@::::::::::::@@:                           \n")
    escreva("               -@@=-#@#.        -@@************@@:                           \n")
    u.aguarde(1)
    escreva("               -@@=-#@#.        :%@@@@@@@@@@@@@@%.                           \n")
    escreva("           :%#.-@@=-#@#.-@*.                                                   \n")
    escreva("           .%@@@@@@@@@@@@@-.   .=@@@@@@@@@@@@@@@@@@%*.                         \n")
    escreva("             .=*@@%%@@%+-.   .-@@@@@@*++++++*@@@@*+%@@.                        \n")
    escreva("               -@@%#@@@@:. .:%@@#@@@@@+-::-*@@%@@-::@@:                        \n")
    escreva("               -@@%#@@@@@%:%@@+:=@@**%@@@@@@%*+@@@@@@@:                        \n")
    escreva("               .#@@@@@=:#@@@*:::#@@@#********#@@@@@@@@:....                    \n")
    escreva("                  :%@@+:::-:::+@@@@@@@@@%%@@@@%@@+#@@@@@@@@@*:.                \n")
    escreva("                   .:@@@=:::=@@@#@@::-%@@@@*:::@@@@%+====++@@@@:               \n")
    u.aguarde(1)
    escreva("                      =@@@@@@@@*#@@:::#@@@@%=:%@@*==+#%%%*===#@@*.            \n")
    escreva("                        :*#**@%*#@@=@@@%-:*%@@@@+=+@@@%#@@@%+=+@@+            \n")
    escreva("                           .@@%*#@@@@@@@@@@@@@@+=+@@*-----#@@+=#@@            \n")
    escreva("                           :@@**@@@#@@#%@@%%@@@==%@@--%@#-=@@*=*@@.           \n")
    escreva("                           *@@**@@==@@-*@@=+@@@==*@@=-----+@@+=#@@.           \n")
    escreva("                          .%@%*%@@-#@@-*@@=+@@@%==#@@@=-*@@@*=+@@*            \n")
    escreva("                          :@@**@@*-#@#-*@@==%@@@%==+#@@@@@*==+@@@.            \n")
    escreva("                          =@@*#@@=-#@*-*@@=-%@#%@@%+=======*%@@+.             \n")
    escreva("                          +@%*%@%-=@@*-*@@+-%@@--@@@@@@@@@@@@+.               \n")
    escreva("                          @@%*#@@@@@@@@@@@@@@@@@@@@**@@@=-:..                 \n")
    escreva("                         :@@****%@@-:#@%**@@*:-@@#****@@:                     \n")
    escreva("                        .*@@####%@@-=*@%##@@+=-@@#####@@+.\n")    
    u.aguarde(1000)
  }

  funcao mostrardesenhomago(){
        escreva("                      .@@@@-                            \n")
    escreva("                          .@=  .@%.    .@..                \n")
    escreva("                 ..      .*%..+@:-@*. .=@@.                \n")
    escreva("            .-..:@%.     =@. .*@@%:=%@@@@%.                \n")
    escreva("          .-%..+%+*%=.  .@+   :@=:#@@@@@=       conjurador arcano poderoso, frágil fisicamente, mas mestre em feitiços destrutivos e utilitários.\n")  
    escreva("          -@:#. .*=    .%%.   .=@.            .              \n")
    escreva("         .@%-=@# ..    -@:     .%#          .*%:            \n")
    escreva("          -@*+@+      .@+.:-=-:.:@:          ..              \n")
    escreva("            *%.    ..*@@@*:...-#@@@+..                         \n")
    escreva("            *%.  .=@%:.:-*%@@@%*-:.-%@-.                     \n")
    escreva("      .+=.  *%. .@@#@@@*:..  ...-#@@@#@%.                    \n")
    escreva("      .+=   *%. .=@@@@@= -=:-:+..+@@@@@-      ..              \n")
    escreva("            *%.    .@%:%@@%--=@@@#.@#.       .##.            \n")
    escreva("            *%.    +@.--@=#@@@*%@.+:@=.    .%@=-@#.          \n")
    escreva("            *%.  .-@%.@#.@*  .@@.@@.@@.       *#              \n")
    escreva("          .:%@:..=@@%..=*.    ..*- .@@@.      ..              \n")
    escreva("         .@%..#@%%.+@= ..       . .%@:%%.                  \n")
    escreva("         :@- ..@+  +@@=.*.     .-.*@@..#%..                \n")
    escreva("          :@@@@=   +@-@*.=    .%.%@+@. .-@@=               \n")
    escreva("            *@@-   +@..+@%+  .#%@= :@.  .#@@%.             \n")
    escreva("     .=.    *@@@.  +%. ..%@#.%@#.  .@- .+@:.+@.  =.        \n")
    escreva("    .-#.    *@@@* .##     -@@@. .  .%%.-@+.-@*. .*-        \n")
    escreva("            *@@@@..@-  .=  .=.  -   +%.*@@@+.              \n")
    escreva("            *@@@@.#%   .#       *.  :@-*@@-                \n")
    escreva("            *%-@%#@-   --       *=   =@%@#.                \n")
    escreva("            *%.-+@=   .#.       .%   .%@-.                 \n")
    escreva("            *%.-@+.   +#        .**.  .%%.                 \n")
    escreva("            *%.@@#:...@-         -@-..=%@@.                \n")
    escreva("            ..  ..=%@@@@@@@@@@@@@@@@@#-..                  \n")
    escreva("                          ......           \n")              
}
  


  funcao itensnoinventario(){

    para(inteiro i = 0; i<3; i++)
    escreva((i + 1), " - ", itensNaMochila[i], " Quantidade: ", quantidadeItens[i], "\n")


  }

  funcao usarPocaoDeVida() {
  se(vidaJogador < vidaMaxima) {
    vidaJogador = vidaJogador + 5
    se(vidaJogador > vidaMaxima) {
      vidaJogador = vidaMaxima
    }
    escreva("Você usou uma Poção de Vida. Vida atual: ", vidaJogador, "\n")
  } senao {
    escreva("Sua vida já está cheia!\n")
  }
}
}




