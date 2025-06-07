programa {inclua biblioteca Util --> u 
  inteiro vidaMaximaHeroi  
  inteiro vidaHeroi
  inteiro danoHeroi
  inteiro defesaHeroi
  inteiro manaHeroi
  inteiro chefe = 1
  inteiro ondeEstou = 1
  cadeia feitico
  cadeia nomePlayer

  inteiro vidaInimigo
  inteiro danoInimigo
  inteiro defesaInimigo
  cadeia nomeInimigo
  funcao inicio() {
    inteiro comecar
    inteiro gameStart
    
    escreva("                 ############                                    ############                       \n")
    escreva("                ##++          ##                                ##          ++##                    \n")
    escreva("              MM++++            ##                            ##            ++++MM                  \n")
    escreva("              mm  ++++++..                                            ..++++++..++                  \n")
    escreva("              mm  @@@@@@++..    --@@                        ##--    ..::@@@@@@..++                  \n")
    escreva("              mm--@@####mm--    ::##    MM            MM    ##::    --++####@@::mm                  \n")
    escreva("              ####++####::        @@####  ##        ##  @@####        --####++####                  \n")
    escreva("                ########mm::      @@MM::  ##        ##  ::MM##      --mm########                    \n")
    escreva("                  ##++        ++##mm--    ##        ##    --++##++        ++##                      \n")
    escreva("                  ##          ++####MM::::mm        mm::::mm####++          ##                      \n")
    escreva("                  ##----      MMMMmm::------MMMMMMMM------::mmMMMM      ----##                      \n")
    escreva("                  ##::::..  ..##::          ::::::::          ::##..  ..::::##                      \n")
    escreva("                ##      --mm##                                    ##mm::      @@                    \n")
    escreva("                ##++    mmMM             Mundo dos slimes           mmMM    ++##                    \n")
    escreva("                ##++++++..                                            ..++++++##                    \n")
    escreva("                ##@@++++..                                            ..++++@@##                    \n")
    escreva("                  ##mm++....              1: New Game               ....++mm##                      \n")
    escreva("                  ####++..--                                        ::..++####                      \n")
    escreva("                  ######mmmm              2: Credits                mmmm######                      \n")
    escreva("                    ####mmmm                                        mmmm####                        \n")
    escreva("                    ++++@@MM              3: Quit                   mm@@++++                        \n")
    escreva("                  ##..++@@MM                                        mm@@++..##                      \n")
    escreva("                  @@  ::@@MM                                        mm@@::  @@                      \n")
    escreva("                ##      mmMM                                        mmMM      @@                    \n")
    escreva("                ##      mm####                                    ####MM      @@                    \n")
    escreva("              mm      ####@@++####..    ++  ++....++  ++    ..####++@@####      ++                  \n")
    escreva("              ##@@@@@@mm@@##@@----MM@@MM++  ++....++  ++MM@@MM----@@##@@mm@@@@@@##                  \n")
    escreva("              ######mm--++MM##..  ++@@##MM::MM++++MM::MM##@@++  ..##MM++--mm######                  \n")
    escreva("                  ##      --##++    ::####################++    ++##::      ##                      \n")
    escreva("                  ##      --##++      ..################..      ++##::      ##                      \n")
    escreva("                  ##      --####++++++++##  ++....++  ##mm++++++####::      ##                      \n")
    escreva("                  ####    --######mm++++++  ++....++  ++++++++######::    ####                      \n")
    escreva("                    ##mmmmMM##  ##@@@@@@@@mm@@MMMM@@mm@@@@@@@@##  ##@@mmmm##                        \n")
    escreva("                      ########      ########################      ########                          \n")
    escreva("                      ########      ########################      ########                          \n")
    leia(comecar)

    se(comecar == 2){
      limpa()
      escreva("Made by Kingtouro")
      u.aguarde(4000)
      limpa()
      inicio()
    }senao se(comecar == 3){
      limpa()
      escreva(" ")
    }senao se(comecar == 1){
    limpa()
    escreva("Há muito tempo, no Reino de Eldoria, a paz era mantida pela mística Pedra da Luz, Guardada dentro do Castelo Dourado.\n")
    u.aguarde(2000)
    escreva("Mas por anos de negligencia a Pedra da luz, rachou soltando todo a mal acumulado\n ")
    escreva("e invés de escuridão ou corrupção o mal mantido era Slimes\n")
    u.aguarde(2000)
    escreva("Em um instante alagaram e destruindam todas as terras ao redor,\n")
    escreva("depois da primeira onda o slime se condensou, tornando os em monstros para continuar os ataques\n")
    u.aguarde(2000)
    escreva("Mas tinha um heroi qu prometeu derrotar o terror do slime\n")
    u.aguarde(3000)
    escreva("e esse heroi é você\n")
    u.aguarde(4000)
    limpa()
    jogo(gameStart)
    }senao se (comecar == 1984){
    jogo(gameStart)

    }senao{
      limpa()
      escreva("    ########                                        ######  \n")
      escreva("    ##########                                    ########  \n")
      escreva("      ########                                  ########    \n")
      escreva("        ##########                            ########      \n")
      escreva("          ##########                        ########        \n")
      escreva("            ########                      ########          \n")
      escreva("              ##########                ########            \n")
      escreva("                ##########            ########              \n")
      escreva("                  ########          ########                \n")
      escreva("                    ##########    ########                  \n")
      escreva("                      ##################                    \n")
      escreva("                        ##############                      \n")
      escreva("                          ##########                        \n")
      escreva("                          ############                      \n")
      escreva("                        ##############                      \n")
      escreva("                      ########  ##########                  \n")
      escreva("                    ########      ##########                \n")
      escreva("                  ########          ########                \n")
      escreva("                ########              ##########            \n")
      escreva("              ########                  ##########          \n")
      escreva("            ########                      ########          \n")
      escreva("          ########                          ##########      \n")
      escreva("        ########                              ##########    \n")
      escreva("      ########                                  ########    \n")
      escreva("    ########                                      ########  \n")
     
      u.aguarde(500)
      limpa()
      inicio()
    }
    
    
  }
  funcao jogo(inteiro jogo){
     
     inteiro classeEscolha
     
    limpa()
    escreva("E qual é seu nome heroi:\n")
    leia(nomePlayer)
    limpa()
    
    escreva("Qual é sua classe:\n")
    escreva("1: Guerreiro\n")
    escreva("2: Mago\n")
    escreva("3: Arqueiro\n")
    leia(classeEscolha)
    classe(classeEscolha)
    se(classeEscolha == 1){
      escreva("---Guerreiro---")
      escreva("\n---",nomePlayer,"---")
      escreva("\nHP: ", vidaHeroi)
      escreva("\nAtaque: ", danoHeroi)
      escreva("\nDefesa: ", defesaHeroi)
      escreva("\nMana: ", manaHeroi)
      escreva("\nFeitiço: ", feitico)
      }senao se (classeEscolha == 2){
      escreva("-----Mago-----")
      escreva("\n---",nomePlayer,"---")
      escreva("\nHP: ", vidaHeroi)
      escreva("\nAtaque: ", danoHeroi)
      escreva("\nDefesa: ", defesaHeroi)
      escreva("\nMana: ", manaHeroi)
      escreva("\nFeitiço:", feitico)
      }senao se (classeEscolha == 3){
      escreva("---Arqueiro---")
      escreva("\n---",nomePlayer,"---")
      escreva("\nHP: ", vidaHeroi)
      escreva("\nAtaque: ", danoHeroi)
      escreva("\nDefesa: ", defesaHeroi)
      escreva("\nMana: ", manaHeroi)
      escreva("\nFeitiço: ", feitico)
      
      
      }
      u.aguarde(1000)
      limpa()
      exploration()


   
  }
  funcao  classe (inteiro classeEscolhida){
      se(classeEscolhida == 1){
        vidaHeroi = 400  
        danoHeroi = 50
        defesaHeroi = 70 
        manaHeroi = 50 
        feitico = "Barreira"
      }senao se(classeEscolhida == 2){
        vidaHeroi = 250 
        danoHeroi = 100 
        defesaHeroi = 20 
        manaHeroi = 200 
        feitico = "Bola de fogo"
      }senao se(classeEscolhida == 3 ){
        vidaHeroi = 300 
        danoHeroi = 75 
        defesaHeroi = 50
        manaHeroi = 100 
        feitico = "Herbalista"
      }senao{
        classe()
      }
    limpa()
    vidaMaximaHeroi = vidaHeroi
  }
  funcao exploration(){
   inteiro floresta = 1
   inteiro vila = 2
   inteiro caverna = 3
   inteiro pantano = 4
   inteiro castelo = 5
   inteiro decisao
   

   se (ondeEstou == 1){
     escreva("Você está na floresta da névoa\n")//Texto temporario
     escreva("1: Avançar pra proxíma area \n")
     escreva("2: Explorar a area \n")
     escreva("3: Voltar pra area anterior \n")
     leia(decisao)
     se(decisao == 1 e chefe >= 1){
      ondeEstou ++ 
      exploration(ondeEstou)

    }senao se(decisao == 1 e chefe == 0){
       escreva("Chefe bloqueia o caminho\n")
       u.aguarde(2000)
       combateChefe()

    }senao se(decisao == 2){
      combate(1)
      
     }senao se(decisao == 3){

      limpa()
      escreva("Você não pode desistir da aventura")
      u.aguarde(2000)
      limpa()
      exploration(ondeEstou)
       
     }

   }senao se (ondeEstou == 2){
     escreva("Você está na vila abandonada\n")//texto temporario
     escreva("1: Avançar pra proxíma area\n")
     escreva("2: Explorar a area\n")
     escreva("3: Voltar pra area anterior\n")
     leia(decisao)
     

     se(decisao == 1 e chefe >= 2){
      ondeEstou ++ 
      exploration(ondeEstou)

     }senao se(decisao == 1 e chefe == 1){
       escreva("\nChefe bloqueia o caminho\n")
       u.aguarde(2000)
       combateChefe()

     }senao se(decisao == 2){
      combate(2)
      
     }senao se(decisao == 3){
      ondeEstou -- 
      exploration(ondeEstou)

     }

    }senao se (ondeEstou == 3){
     escreva("Você está na Caverna Sombria\n")//texto temporario
     escreva("1: Avançar pra proxíma area\n")
     escreva("2: Explorar a area\n")
     escreva("3: Voltar pra area anterior\n")
     leia(decisao)
     se(decisao == 1 e chefe >= 3){
      ondeEstou ++ 
      exploration(ondeEstou)
     
     }senao se(decisao == 1 e chefe == 2){
       escreva("\nChefe bloqueia o caminho\n")
       u.aguarde(2000)
       combateChefe()

     }senao se(decisao == 2){
      combate(3)
      
     }senao se(decisao == 3){
      ondeEstou -- 
      exploration(ondeEstou)

     }

   }senao se (ondeEstou == 4){
     escreva("Você está na Pântano dos Lamentos\n")//texto temporario
     escreva("1: Avançar pra proxíma area\n")
     escreva("2: Explorar a area\n")
     escreva("3: Voltar pra area anterior\n")
     leia(decisao)
     se(decisao == 1 e chefe >= 4){
      ondeEstou ++ 
      exploration()
     
     }senao se(decisao == 1 e chefe == 3){
       escreva("\nChefe bloqueia o caminho\n")
       u.aguarde(2000)
       combateChefe()

     }senao se(decisao == 2){
      combate(4)
      
     }senao se(decisao == 3){
      ondeEstou -- 
      exploration(ondeEstou)

     }

   }senao se (ondeEstou == 5){
     escreva("Você está no Castelo Dourado\n")//texto temporario
     escreva("1: Avançar pra proxíma area\n")
     escreva("2: Explorar a area\n")
     escreva("3: Voltar pra area anterior\n")
     leia(decisao)
     se(decisao == 1 e chefe >= 5){
      ondeEstou ++ 1
      exploration()
     
     }senao se(decisao == 1 e chefe == 5){
       escreva("\nChefe bloqueia o caminho\n")
       u.aguarde(2000)
       combateChefe()

     }senao se(decisao == 2){
      combate(5)
      
     }senao se(decisao == 3){
      ondeEstou -- 
      exploration()

     }

   }
   

   
  }
  funcao combate(inteiro mundoCombate){
    inteiro tipoEncontro
    se(mundoCombate == 1){
      tipoEncontro = u.sorteia(1, 3)
      
      batalha(tipoEncontro)

      exploration()
    }senao se(mundoCombate == 2){
      tipoEncontro = u.sorteia(3, 5)
      
      batalha(tipoEncontro)

      exploration()
    }senao se(mundoCombate == 3){
      tipoEncontro = u.sorteia(5, 7)
      
      batalha(tipoEncontro)

      exploration()
    }senao se(mundoCombate == 4){
      tipoEncontro = u.sorteia(6, 9)
      
      batalha(tipoEncontro)

      exploration()
    }senao se(mundoCombate == 5){
      tipoEncontro = u.sorteia(8, 10)
      
      batalha(tipoEncontro)

      exploration()
    }


  }
  funcao batalha(inteiro tipoDeBatalha){
    
    se (tipoDeBatalha == 1){
     vidaInimigo = 250
    danoInimigo = 40
    defesaInimigo = 20
    nomeInimigo = "Slime"
     escreva("Você encontra um slime")
     atualCombate()

    }senao se (tipoDeBatalha == 2){
      
    }senao se (tipoDeBatalha == 3){
      
    }senao se (tipoDeBatalha == 4){
      
    }senao se (tipoDeBatalha == 5){
      
    }senao se (tipoDeBatalha == 6){
      
    }senao se (tipoDeBatalha == 7){
      
    }senao se (tipoDeBatalha == 8){
      
    }senao se (tipoDeBatalha == 9){
      
    }senao se (tipoDeBatalha == 10){
      
    }

  }
  funcao atualCombate(){
   escreva("\n │▔▔▔▔▔▔▔▔│  ",nomePlayer)
   escreva("\n│ 1: Ataque       │ ", "Vida: ",vidaHeroi,"/",vidaMaximaHeroi,"\n")
   escreva("│ 2: Poção        │ ", "Ataque: ", danoHeroi,"\n")
   escreva("│ 3: Magia        │ ", "Magia: ", feitico,"\n")
   escreva("│                 │ ","Defesa: ", defesaHeroi)
   escreva("\n│                 │  ")
   escreva("\n│▁▁▁▁▁▁▁▁▁▁▁▁│  \n")
   escreva("\n┠━━━━━━━━━━━━━━━━━━┨ ",nomeInimigo)
   escreva("\n┠━━━━━━━━━━━━━━━━━━┨ ","Vida: ",vidaInimigo)
   escreva("\n┠━━━━━━━━━━━━━━━━━━┨ ","Ataque: ",danoInimigo)
   escreva("\n┠━━━━━━━━━━━━━━━━━━┨ ","Defesa: ", defesaInimigo,"\n")

  }
  funcao combateChefe(){
   chefe ++
   ondeEstou ++
   exploration()
  }
 
}