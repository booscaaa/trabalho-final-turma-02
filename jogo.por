programa {
  inclua biblioteca Util --> u
  cadeia nomedoHeroi
  inteiro classeEscolhida
  funcao inicio() {

  inteiro opcaoEscolhidaMenu = 0

  faca{
    limpa()
    escreva("\n-- MENU --\n")
    escreva("\nOpção 1 - Iniciar Jornada\n")
    escreva("\nOpção 2 - Créditos\n")
    escreva("\nOpção 3 - Sair do Jogo\n")
    leia(opcaoEscolhidaMenu)
    
    se(opcaoEscolhidaMenu == 1){
        iniciougame()
        u.aguarde(2000)
      }senao se(opcaoEscolhidaMenu == 2){
        creditos()
        u.aguarde(6000)
      }senao se(opcaoEscolhidaMenu == 3){
        escreva("Até logo!")
        u.aguarde(8000)
        limpa()
      }senao{
        escreva("\nOpção Invalida!\n")
       u.aguarde(7000)
      }
    } enquanto(opcaoEscolhidaMenu > 3 e opcaoEscolhidaMenu <1)
  }

  funcao creditos(){
    limpa()
    escreva("---------------------------------------\n")
    escreva("--Creditos--\n")
    escreva("Tudo - Ronaldo\n")
    escreva("Professor - Vini Boscaa\n")
    escreva("---------------------------------------\n")
    u.aguarde(5000)
  
  }

  funcao iniciougame(){
    inteiro vidaJogador = 0
    inteiro ataqueJogador = 0
    
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
  escreva("Olá ",nomedoHeroi, "\n")
  escreva("\n no reino de Eldoria, é comum que as pessoas escolham trilhar o caminho de guerreiro, mago ou arqueiro, moldando seu destino conforme essas lendárias vocações.\n")
  u.aguarde(1)
  limpa()
  escreva("\n 1. Guerreiro")
  mostrardesenhoguerreiro()
  u.aguarde(3000)
  limpa()
  escreva("\n 2. Mago\n")
  // imagem
  escreva("\nconjurador arcano poderoso, frágil fisicamente, mas mestre em feitiços destrutivos e utilitários.\n")
  u.aguarde(3000)
  limpa()
  escreva("\n 3. Arqueiro\n")
  //imagem
  escreva("\nespecialista em combate à distância, ágil e preciso, domina arcos e táticas de emboscada.\n")
  u.aguarde(3000)
  limpa()
  escreva("\n 4 Aldeão\n")
  mostrardesenhoaldeao()
  limpa()
  //imagem
  escreva("\nQual classe você ira escolher para ", nomedoHeroi, "? (OBS) 1 a 4\n")
  leia(classeEscolhida)

  faca{

    se(classeEscolhida == 1){
      escreva("\nBem vindo Guerreiro ", nomedoHeroi, "\n")
      vidaJogador = 10
      ataqueJogador = 3
    }senao se(classeEscolhida == 2){
      escreva("\nBem vindo Mago" , nomedoHeroi, "\n")
      vidaJogador = 8
      ataqueJogador = 5
    }senao se(classeEscolhida == 3){
      escreva("\nBem vindo Arqueiro ", nomedoHeroi, "\n")
      vidaJogador = 7
      ataqueJogador = 6 
    }senao se(classeEscolhida == 4){
      escreva("\nAgricultor ", nomedoHeroi, "\n")
       vidadealdeao()
      u.aguarde(2000)
      limpa()
      creditos()
    } senao{
      escreva("\nVocê não se dicidiu e virou um Agricultor comum!\n")
      classeEscolhida = 4
      vidadealdeao()
      u.aguarde(2000)
      limpa()
      creditos()
    }

  }enquanto(classeEscolhida <1 e  classeEscolhida> 4)
  
  
  }

 funcao vidadealdeao(){

  escreva("Em Eldoria, o aldeão ", nomedoHeroi, " passava os dias cuidando da terra, enfrentando o frio e a escassez.\n Silencioso e solitário, vivia sem sonhos grandiosos, apenas sobrevivendo entre plantações secas e esperanças esquecidas.")
  u.aguarde(7000)
  escreva( nomedoHeroi, " levava uma vida simples, cultivando sua horta em silêncio.\n Quando a Febre de Eldor se espalhou pelo reino, ele tentou resistir, mas sem acesso a curas ou ajuda, adoeceu lentamente até seu fim, esquecido entre as neblinas dos campos.")
  u.aguarde(7000)
  limpa()
  escreva(":)")
  u.aguarde(5000)
  limpa()

 }
  
  funcao mostrardesenhoaldeao(){
    escreva("                                                          \n")
escreva("                         ++++++++++++                         \n")
escreva("                       ++++++++++++++++                        \n")
escreva("                      ++++++++++++++++++                       \n")
escreva("                      ++++++++++++++++++                       \n")
escreva("                     ++++++++++++++++++++                      \n")
escreva("                  ==========================                   \n")
escreva("                ==============+++++++=========+                \n")
escreva("                ======##:::::::=#####*##======                 \n")
u.aguarde(1000)
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
u.aguarde(1000)
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

  funcao mostrardesenhoguerreiro(){
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
    u.aguarde(1000)
    escreva("               -@@=-#@#.        :%@@@@@@@@@@@@@@%.                           \n")
    escreva("           :%#.-@@=-#@#.-@*.                                                   \n")
    escreva("           .%@@@@@@@@@@@@@-.   .=@@@@@@@@@@@@@@@@@@%*.                         \n")
    escreva("             .=*@@%%@@%+-.   .-@@@@@@*++++++*@@@@*+%@@.                        \n")
    escreva("               -@@%#@@@@:. .:%@@#@@@@@+-::-*@@%@@-::@@:                        \n")
    escreva("               -@@%#@@@@@%:%@@+:=@@**%@@@@@@%*+@@@@@@@:                        \n")
    escreva("               .#@@@@@=:#@@@*:::#@@@#********#@@@@@@@@:....                    \n")
    escreva("                  :%@@+:::-:::+@@@@@@@@@%%@@@@%@@+#@@@@@@@@@*:.                \n")
    escreva("                   .:@@@=:::=@@@#@@::-%@@@@*:::@@@@%+====++@@@@:               \n")
    u.aguarde(1000)
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

}
