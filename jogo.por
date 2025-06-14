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

  funcao aumentarxpbatalhagoblin(){
     experienciaAtual = experienciaAtual + 2
  }

  funcao cavernaSombria(){
    escreva("Você respira fundo e entra na Caverna Sombria...\n")
escreva("O ar é pesado e úmido, e cada passo ecoa como se algo o observasse das sombras.\n")
escreva("Formações rochosas grotescas moldam o caminho, enquanto murmúrios ancestrais sussurram segredos esquecidos.\n")
u.aguarde(3000)
escreva("Subitamente, das profundezas da escuridão, uma criatura emerge — olhos brilhando em vermelho e corpo formado por sombras e ossos.\n")
escreva("Um **Guardião Esquecido** se interpõe em seu caminho. Você terá que lutar para avançar.\n")

  }

  funcao ganhoudaAlma(){
    inteiro opcaoEscolhidaCaminhoVilarejo
    contadordeMapas ++
    posicoesNoMapa[contadordeMapas]
    escreva("Com um último golpe, a alma perdida solta um grito ecoante e se desfaz em partículas de luz...\n")
    escreva("Por um breve instante, você sente paz — como se tivesse libertado algo aprisionado por eras.\n")
    escreva("Sem tempo para descansar, você respira fundo, ergue sua arma e segue em frente por entre as ruínas silenciosas...\n")
  u.aguarde(3000)
    escreva("Após libertar a alma perdida, você avança pela trilha coberta de neblina...\n")
    escreva("À sua frente, uma abertura na encosta da montanha revela a entrada de uma antiga caverna.\n")
    escreva("Você chegou à **Caverna Sombria** — ecos de monstros antigos guardam os segredos do passado.\n")
    u.aguarde(3000)

    enquanto(  opcaoEscolhidaCaminhoVilarejo != 0){
    escreva("\nO que você deseja fazer?\n")
    escreva("1 - Entrar no Vilarejo\n")
    escreva("2 - Voltar a Floresta Almadiçoada\n ")
    escreva("3 - Ver seus status\n")
    leia( opcaoEscolhidaCaminhoVilarejo)

    se(  opcaoEscolhidaCaminhoVilarejo == 1){
      cavernaSombria()
    } senao se ( opcaoEscolhidaCaminhoVilarejo == 2){
      voltouNoMapa()
      continuarPrimeiroWin()
    }senao se( opcaoEscolhidaCaminhoVilarejo == 3){
      mostraAtributos()
      u.aguarde(3000)
      limpa()
      }
    }
  }


  funcao batalhacontraAlma(){
    inteiro vidaDaAlma = 7
  inteiro ataqueDaAlma = 2
  inteiro escolhaTurno
  inteiro escolhaItem
  inteiro rodada = 0

  enquanto(vidaJogador > 0 e vidaDaAlma > 0) {
    escreva("\n-- Rodada ", rodada, " --\n")
    escreva("Sua Vida: ", vidaJogador, " | Vida da Alma: ", vidaDaAlma, "\n")
    escreva("1 - Atacar\n")
    escreva("2 - Usar item\n")
    escreva("Escolha sua ação: ")
    leia(escolhaTurno)

    se(escolhaTurno == 1) {
      escreva("\nVocê ataca a Alma causando ", ataqueJogador, " de dano!\n")
      vidaDaAlma = vidaDaAlma - ataqueJogador
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

    se(vidaDaAlma <= 0) {
      vidaDaAlma = 0
      escreva("\nVocê derrotou a Alma!\n")
      escreva("Sua jornada continua...\n")
      u.aguarde(1000)
      aumentarXP()
      ganhoudaAlma()
      limpa()
    }

    se(vidaJogador <= 0) {
      escreva("Você foi derrotado...\n")
      u.aguarde(3000)
      creditos()
    }

    rodada = rodada + 1
    u.aguarde(2000)

  }
  }

  funcao aumentarXP(){
  experienciaAtual = experienciaAtual + 5

  se(experienciaAtual >= experienciaParaProximoNivel){
    experienciaAtual = experienciaAtual - experienciaParaProximoNivel
    nivelJogador = nivelJogador + 1
    experienciaParaProximoNivel = experienciaParaProximoNivel + 10
    escreva("Parabéns! Você subiu para o nível ", nivelJogador, "\n")

    inteiro escolhaRecompensa
    escreva("Escolha sua recompensa de nível:\n")
    escreva("1 - Aumentar ataque\n")
    escreva("2 - Receber uma Poção de Vida\n")
    escreva("Digite sua escolha: ")
    leia(escolhaRecompensa)

    se(escolhaRecompensa == 1){
      ataqueJogador = ataqueJogador + 1
      escreva("Seu ataque aumentou para ", ataqueJogador, "\n")
    } senao se(escolhaRecompensa == 2){
      quantidadeItens[0] = quantidadeItens[0] + 1
      escreva("Você recebeu uma Poção de Vida. Agora tem ", quantidadeItens[0], " poção(ões).\n")
    } senao {
      escreva("Opção inválida. Nenhuma recompensa foi recebida.\n")
    }
  }
}

  funcao mostraAtributos(){
    escreva("Nome: ", nomedoHeroi, "\n" )
    escreva("Classe: ", classescolhidaMostrar, "\n")
    escreva("Vida: ", vidaJogador, "\n")
    escreva("Nivel:", nivelJogador, "\n")
    escreva("XP: ", experienciaAtual, " / ", experienciaParaProximoNivel)
    escreva()
  }

  funcao vilarejoAbandonado(){
    escreva("Você adentra o vilarejo. O som de correntes e gemidos ecoa entre as casas em ruínas...\n")
    escreva("O céu escurece enquanto corvos sobrevoam em círculos acima de você...\n")
    escreva("O som do vento entre as árvores parece sussurrar palavras esquecidas há séculos.\n")
    escreva("Você sente um arrepio percorrer sua espinha, como se algo antigo estivesse te observando.\n")
    escreva("Das sombras da névoa, uma alma perdida se materializa diante de você...\n")
    escreva("Ela emana dor e raiva — não há mais humanidade em seu olhar vazio.\n")
    escreva("Prepare-se... você terá que batalhar contra a alma perdida!\n")
    batalhacontraAlma()
    ganhoudaAlma()


  }

  funcao voltouNoMapa(){
    escreva("Você resolveu retornar e encontrou um Goblin\n")

    escreva("Será obrigatorio batalhar com ele para não ser saqueado!")

  inteiro vidaDoGoblin = 7
  inteiro ataqueDoGoblin = 2
  inteiro escolhaTurno
  inteiro escolhaItem
  inteiro rodada = 1

  enquanto(vidaJogador > 0 e vidaDoGoblin > 0) {
    escreva(vidaDoGoblin)
    escreva("\n-- Rodada ", rodada, " --\n")
    escreva("Sua Vida: ", vidaJogador, " | Vida do Goblin: ", vidaDoGoblin, "\n")
    escreva("1 - Atacar\n")
    escreva("2 - Usar item\n")
    escreva("Escolha sua ação: ")
    leia(escolhaTurno)

    se(escolhaTurno == 1) {
      escreva("\nVocê ataca a Goblin causando ", ataqueJogador, " de dano!\n")
      vidaDoGoblin = vidaDoGoblin - ataqueJogador
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

    se(vidaDoGoblin <= 0) {
      vidaDoGoblin = 0
      escreva("\nVocê derrotou o Goblin!\n")
      escreva("Sua jornada continua...\n")
      u.aguarde(1000)
      aumentarxpbatalhagoblin()
      limpa()
      continuarPrimeiroWin()
    }

    se(vidaJogador <= 0) {
      escreva("Você foi derrotado...\n")
      u.aguarde(3000)
      creditos()
    }

    rodada = rodada + 1
    u.aguarde(2000)

  }


  }

  funcao continuarPrimeiroWin(){
    aumentarXP()
    contadordeMapas ++
    posicoesNoMapa[contadordeMapas]
    inteiro opcaoEscolhidaCaminhoFloresta    
    escreva("Voce conquistou o respeito das Arvores acabando com a ditadura da Arvore amaldicoada derrotando ela\n")
    escreva("as arvores abrem caminho e o bosque que antes era tomado pela escuridao profunda agora reflete a luz do sol\n")
    escreva("Voce se sentiu um herói ao libertar as arvores\n")
    escreva("Ao inves de voltar para sua casa, voce resolve seguir seu caminho a frente como um herói\n")
    u.aguarde(8000)
     limpa()
    escreva("Logo a frente você encontra a sua frente um Vilarejo Abandonado\n")
    escreva("De longe você escuta grito de almas perdidas\n")
    enquanto(opcaoEscolhidaCaminhoFloresta != 0){
    escreva("\nO que você deseja fazer?\n")
    escreva("1 - Entrar no Vilarejo\n")
    escreva("2 - Voltar a Floresta Almadiçoada\n ")
    escreva("3 - Ver seus status\n")
    leia(opcaoEscolhidaCaminhoFloresta)

    se(opcaoEscolhidaCaminhoFloresta == 1){
      vilarejoAbandonado()
    } senao se (opcaoEscolhidaCaminhoFloresta == 2){
      voltouNoMapa()
      continuarPrimeiroWin()
    }senao se(opcaoEscolhidaCaminhoFloresta == 3){
      mostraAtributos()
      u.aguarde(3000)
      limpa()
    }
     }
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
   enquanto(vidaJogador > 0 e opcaoEsolhidaNaBatalha1 != 99) {
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
  

  se(leiaItemUsado >= 1 e leiaItemUsado <= 3) {
  se(quantidadeItens[leiaItemUsado - 1] > 0) {
    escreva("Você usou ", itensNaMochila[leiaItemUsado - 1])
    quantidadeItens[leiaItemUsado - 1] = quantidadeItens[leiaItemUsado - 1] - 1
  } senao {
    escreva("Você não tem esse item!")}
  }

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
      vidaDaArvore = 0
      aumentarXP()
      escreva("\nVocê derrotou a Árvore do Lamento!\n")
      escreva("Sua jornada continua...\n")
      experienciaAtual + 5
      u.aguarde(1000)
      limpa()
      continuarPrimeiroWin()
    }

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
    } enquanto(classeEscolhida < 1 ou classeEscolhida > 4)

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




