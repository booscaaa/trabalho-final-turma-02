programa {inclua biblioteca Util --> u 
  inteiro vidaMaximaHeroi  
  inteiro vidaHeroi
  inteiro vidaOriginalHeroi
  
  inteiro danoHeroi
  inteiro danoOrginalHeroi
  inteiro danoMinimoHeroi
  inteiro danoDado
  inteiro danoReal
  inteiro defesaHeroi
  inteiro defesaOriginalHeroi
  inteiro nivelAtualHeroi = 1
  inteiro xpAtualHeroi = 0
  inteiro maximoXPHeroi = 100
  
  inteiro manaMaximaHeroi
  inteiro manaHeroi
  inteiro manaOriginalHeroi
  cadeia feitico
  inteiro numeroDePocoes = 2
  inteiro chanceItem
  
  inteiro chefe = 0
  inteiro ondeEstou = 1
  inteiro turnoAtual = 0
  
  cadeia nomePlayer

  inteiro vidaMaximaInimigo
  inteiro vidaInimigo
  inteiro danoInimigo
  inteiro danoTomado
  inteiro defesaInimigo
  inteiro inimigoXP
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
    escreva("Mas por anos de negligencia a Pedra da luz, rachou soltando todo a mal acumulado\n")
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
     
     
     
    limpa()
    escreva("E qual é seu nome heroi:\n")
    leia(nomePlayer)
    limpa()
    escolhaDeClasse()
  }
  funcao escolhaDeClasse(){
    
    cadeia classeEscolha
    escreva("Qual é sua classe:\n")
    escreva("1: Guerreiro\n")
    escreva("2: Mago\n")
    escreva("3: Arqueiro\n")
    leia(classeEscolha)
    
    se(classeEscolha == "1"){
      escreva("---Guerreiro---")
      escreva("\n---",nomePlayer,"---")
      escreva("\nHP: ", vidaHeroi)
      escreva("\nAtaque: ", danoHeroi)
      escreva("\nDefesa: ", defesaHeroi)
      escreva("\nMana: ", manaHeroi)
      escreva("\nFeitiço: ", feitico)
      
      }senao se (classeEscolha == "2"){
      escreva("-----Mago-----")
      escreva("\n---",nomePlayer,"---")
      escreva("\nHP: ", vidaHeroi)
      escreva("\nAtaque: ", danoHeroi)
      escreva("\nDefesa: ", defesaHeroi)
      escreva("\nMana: ", manaHeroi)
      escreva("\nFeitiço:", feitico)
     
      }senao se (classeEscolha == "3"){
      escreva("---Arqueiro---")
      escreva("\n---",nomePlayer,"---")
      escreva("\nHP: ", vidaHeroi)
      escreva("\nAtaque: ", danoHeroi)
      escreva("\nDefesa: ", defesaHeroi)
      escreva("\nMana: ", manaHeroi)
      escreva("\nFeitiço: ", feitico)
      
      }senao{
        limpa()
        escolhaDeClasse()
        
      }
      classe(classeEscolha)
      u.aguarde(1000)
      limpa()
      exploration()
          
  }

  funcao  classe (cadeia classeEscolhida){
      se(classeEscolhida == "1"){
        vidaHeroi = 400  
        danoHeroi = 50
        defesaHeroi = 70 
        manaHeroi = 50 
        feitico = "Barreira"
      }senao se(classeEscolhida == "2"){
        vidaHeroi = 250 
        danoHeroi = 150
        defesaHeroi = 20 
        manaHeroi = 200 
        feitico = "Bola de fogo"
      }senao se(classeEscolhida == "3" ){
        vidaHeroi = 300 
        danoHeroi = 75 
        defesaHeroi = 50
        manaHeroi = 100 
        feitico = "Herbalista"
      }
      danoMinimoHeroi = danoHeroi / 5
      
    limpa()
    vidaMaximaHeroi = vidaHeroi
    manaMaximaHeroi = manaHeroi
    vidaOriginalHeroi = vidaHeroi / 2
    danoOrginalHeroi = danoHeroi / 2
    manaOriginalHeroi = manaHeroi / 2
    defesaOriginalHeroi = defesaHeroi / 2
  }
  funcao exploration(){
   inteiro floresta = 1
   inteiro vila = 2
   inteiro caverna = 3
   inteiro pantano = 4
   inteiro castelo = 5
   cadeia decisao
   se(vidaHeroi <= 0){
    retorne
   }

   se (ondeEstou == 1){
     escreva("Você está na floresta da névoa\n")//Texto temporario
     escreva("1: Avançar pra proxíma area \n")
     escreva("2: Explorar a area \n")
     escreva("3: Voltar pra area anterior \n")
     leia(decisao)
     se(decisao == "1" e chefe >= 1){
      ondeEstou ++ 
      exploration(ondeEstou)

    }senao se(decisao == "1" e chefe == 0){
       nomeInimigo = "Slime Hivemind"
       escreva(nomeInimigo,": A abominação da Floresta, bloqueia o caminho\n")
       u.aguarde(2000)
       combateChefe(1)

    }senao se(decisao == "2"){
      combate(1)
      
     }senao se(decisao == "3"){

      limpa()
      escreva("Você não pode desistir da aventura")
      u.aguarde(2000)
      limpa()
      exploration(ondeEstou)
       
     }senao{
      limpa()
      exploration()
     }

   }senao se (ondeEstou == 2){
     escreva("Você está na vila abandonada\n")//texto temporario
     escreva("1: Avançar pra proxíma area\n")
     escreva("2: Explorar a area\n")
     escreva("3: Voltar pra area anterior\n")
     leia(decisao)
     

     se(decisao == "1" e chefe >= 2){
      ondeEstou ++ 
      exploration(ondeEstou)

     }senao se(decisao == "1" e chefe == 1){
       nomeInimigo = "Mephiles"
       escreva(nomeInimigo,": A angustia do resto, bloqueia o caminho\n")
       u.aguarde(2000)
       combateChefe(2)

     }senao se(decisao == "2"){
      combate(2)
      
     }senao se(decisao == "3"){
      ondeEstou -- 
      exploration(ondeEstou)

     }senao{
      limpa()
      exploration()
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

     
     }senao se(decisao == "1" e chefe == 2){
      nomeInimigo = "Domeo Magmus"
       escreva(nomeInimigo,": Incarnação de magma, bloqueia o caminho\n")
       u.aguarde(2000)
       combateChefe(3)

     }senao se(decisao == "2"){
      combate(3)
      
     }senao se(decisao == "3"){
      ondeEstou -- 
      exploration(ondeEstou)

     }senao{
      limpa()
      exploration()
     }

   }senao se (ondeEstou == 4){
     escreva("Você está na Pântano dos Lamentos\n")//texto temporario
     escreva("1: Avançar pra proxíma area\n")
     escreva("2: Explorar a area\n")
     escreva("3: Voltar pra area anterior\n")
     leia(decisao)
     se(decisao == "1" e chefe >= 4){
      ondeEstou ++ 
      exploration()
     
     }senao se(decisao == "1" e chefe == 3){
      nomeInimigo = "Dendroculi"
       escreva(nomeInimigo,"A alma do Pântano, bloqueia o caminho\n")
       u.aguarde(2000)
       combateChefe(4)

     }senao se(decisao == "2"){
      combate(4)
      
     }senao se(decisao == "3"){
      ondeEstou -- 
      exploration(ondeEstou)

     }senao{
      limpa()
      exploration()
     }

   }senao se (ondeEstou == 5){
     escreva("Você está no Castelo Dourado\n")//texto temporario
     escreva("1: Avançar pra proxíma area\n")
     escreva("2: Explorar a area\n")
     escreva("3: Voltar pra area anterior\n")
     leia(decisao)
     se(decisao == "1" e chefe >= 5){
      ondeEstou ++ 1
      exploration()
     
     }senao se(decisao == "1" e chefe == 5){
      nomeInimigo = "Regalis"
       escreva(nomeInimigo,": Rei dos slimes, bloqueia o caminho\n")
       u.aguarde(2000)
       combateChefe(5)

     }senao se(decisao == "2"){
      combate(5)
      
     }senao se(decisao == "3"){
      ondeEstou -- 
      exploration()

     }senao{
      limpa()
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
      vidaMaximaInimigo = vidaInimigo
      inimigoXP = 10
      nomeInimigo = "Slime"
      escreva("Você encontra um ", nomeInimigo)
      atualCombate()

    }senao se (tipoDeBatalha == 2){
      vidaInimigo = 230
      danoInimigo = 50
      defesaInimigo = 15
      vidaMaximaInimigo = vidaInimigo
      inimigoXP = 20
      nomeInimigo = "Vrumbi"
      escreva("Você encontra um ", nomeInimigo)
      atualCombate()
    }senao se (tipoDeBatalha == 3){
      vidaInimigo = 400
      danoInimigo = 30
      defesaInimigo = 10
      vidaMaximaInimigo = vidaInimigo
      inimigoXP = 25
      nomeInimigo = "Bloomy"
      escreva("Você encontra um ", nomeInimigo)
      atualCombate()
    }senao se (tipoDeBatalha == 4){
      vidaInimigo = 350
      danoInimigo = 35
      defesaInimigo = 40
      vidaMaximaInimigo = vidaInimigo
      inimigoXP = 35
      nomeInimigo = "Tonka"
      escreva("Você encontra um ", nomeInimigo)
      atualCombate()
    }senao se (tipoDeBatalha == 5){
      
    }senao se (tipoDeBatalha == 6){
      
    }senao se (tipoDeBatalha == 7){
      
    }senao se (tipoDeBatalha == 8){
      vidaInimigo = 5
      danoInimigo = 200
      defesaInimigo = 800
      vidaMaximaInimigo = vidaInimigo
      inimigoXP = 75
       nomeInimigo = "Guardio"
      escreva("Você encontra um ", nomeInimigo)
      
    }senao se (tipoDeBatalha == 9){
      vidaInimigo = 250
      danoInimigo = 400
      defesaInimigo = 40
      vidaMaximaInimigo = vidaInimigo
      inimigoXP = 100
       nomeInimigo = "Sparky"
      escreva("Você encontra um ", nomeInimigo)
      
    }senao se (tipoDeBatalha == 10){
      vidaInimigo = 1000
      danoInimigo = 150
      defesaInimigo = 80
      vidaMaximaInimigo = vidaInimigo
      inimigoXP = 200
       nomeInimigo = "Slime Hivemind"
      escreva("Você encontra um ", nomeInimigo)
      
    }

  }
  funcao xpLevelBar(){
    enquanto(xpAtualHeroi >= maximoXPHeroi){
      vidaMaximaHeroi = vidaMaximaHeroi +  vidaOriginalHeroi
      danoHeroi = danoHeroi + danoOrginalHeroi
      defesaHeroi = defesaHeroi + defesaOriginalHeroi
      manaHeroi = manaHeroi + manaOriginalHeroi
      xpAtualHeroi = xpAtualHeroi - maximoXPHeroi
      maximoXPHeroi = maximoXPHeroi + 100
      danoMinimoHeroi = danoHeroi / 5 
      manaMaximaHeroi = manaMaximaHeroi + manaOriginalHeroi
      nivelAtualHeroi= nivelAtualHeroi + 1
    }
      
      
  }
  funcao atualCombate(){
   inteiro sorteioInimigo
   cadeia acaoHeroi

   enquanto(vidaInimigo > 0 e vidaHeroi > 0 ){
   limpa()
   turnoAtual ++
    escreva("\n ┌───────────────┐  ", nomePlayer)
    escreva("\n │ 1: Ataque     │  ", "Vida:   ", vidaHeroi, " / ", vidaMaximaHeroi)
    escreva("\n │ 2: Poção      │  ", "Ataque: ",danoMinimoHeroi," / ", danoHeroi)
    escreva("\n │ 3: Descanso   │  ", "Mana:  ",manaHeroi," / ",manaMaximaHeroi,"│ Magia: ", feitico)
    escreva("\n │ 4: Magia      │  ", "Defesa: ", defesaHeroi, "│ Nivel: ",nivelAtualHeroi," │ ",xpAtualHeroi," / ",maximoXPHeroi)
    escreva("\n └───────────────┘  ","Poções: ",numeroDePocoes,"\n")
   
    escreva("\n ┌───────────────┐  ", nomeInimigo)
    escreva("\n │               │  ", "Vida:   ", vidaInimigo," / ",vidaMaximaInimigo)
    escreva("\n │               │  ", "Ataque: ", danoInimigo)
    escreva("\n │               │  ", "Defesa: ", defesaInimigo)
    escreva("\n └───────────────┘  ", "\n")
    leia(acaoHeroi)
    limpa()
     se(acaoHeroi == "1"){
      escreva("Você ataca: ")
      calculoDeDano()
      escreva(nomePlayer," Rolou um ",danoReal ," de dano contra uma defesa de ",defesaInimigo)
      se(danoReal > defesaInimigo){
        escreva("\nDando ", danoDado ," de dano")
      }senao se(danoReal<= defesaInimigo){
        escreva("\nDando 1 de dano")
      }
      u.aguarde(3000)
      se(vidaInimigo > 0){
        escreva("\nO ",nomeInimigo," ataca dando ", danoTomado," de dano")
      }senao{
        escreva("\n",nomeInimigo," foi derrotado dando ", inimigoXP," de XP")
      }
     }senao se(acaoHeroi == "2" e numeroDePocoes > 0){
        
        se(vidaHeroi < (vidaMaximaHeroi - 200)){
         vidaHeroi = vidaHeroi + 200
         escreva("Você usa uma poção e cura 200 de vida")
         numeroDePocoes = numeroDePocoes - 1
        }senao{
          vidaHeroi = vidaMaximaHeroi
          escreva("Você usa uma poção e cura resto da sua vida")
          numeroDePocoes = numeroDePocoes - 1

        }
         
         sorteioInimigo = u.sorteia(1,danoInimigo)
      se(sorteioInimigo > defesaHeroi){
        danoTomado = sorteioInimigo - defesaHeroi
        vidaHeroi = vidaHeroi - (sorteioInimigo - defesaHeroi)
      }senao se (sorteioInimigo < defesaHeroi){
        danoTomado = 1
        vidaHeroi = vidaHeroi - 1
      }
      u.aguarde(1500)
      escreva("\nO ",nomeInimigo," ataca dando ", danoTomado," de dano")

        u.aguarde(3000)
        atualCombate()
     }senao se(acaoHeroi == "2" e numeroDePocoes <= 0){
       escreva("Você não tem poções")
       u.aguarde(3000)
       atualCombate()
     }senao se(acaoHeroi == "21"){
       escreva("Cheating bastard")
       xpAtualHeroi = maximoXPHeroi
       xpLevelBar()
       u.aguarde(1000)
     }senao{
      atualCombate()
     }
    u.aguarde(2500)
   }
   xpAtualHeroi = xpAtualHeroi + inimigoXP
   xpLevelBar()
   chanceItem = u.sorteia(1,5)
   se(chanceItem == 5){
    numeroDePocoes = numeroDePocoes + 1
    escreva("Você encontra uma poção nos restos de ",nomeInimigo)
    u.aguarde(1000)
   }

   limpa()
   
  }
  funcao calculoDeDano(){
   
    inteiro sorteio = 0
    inteiro sorteioInimigo = 0

    
    se(chefe != 5){sorteio = u.sorteia(danoMinimoHeroi, danoHeroi)
      danoReal = sorteio
      danoDado = (sorteio - defesaInimigo)
      se(sorteio > defesaInimigo){
      vidaInimigo = vidaInimigo - danoDado
      
      }senao se (sorteio <= defesaInimigo){
      
      vidaInimigo = vidaInimigo - 1

      }
      se(vidaInimigo > 0){
        sorteioInimigo = u.sorteia(1,danoInimigo)
        se(sorteioInimigo > defesaHeroi){
          danoTomado = sorteioInimigo - defesaHeroi
          vidaHeroi = vidaHeroi - (sorteioInimigo - defesaHeroi)
        }senao se (sorteioInimigo < defesaHeroi){
          danoTomado = 1
          vidaHeroi = vidaHeroi - 1
        }
      }
    } se(chefe == 5){sorteio = u.sorteia(danoMinimoHeroi, danoHeroi)
      danoReal = sorteio
      danoDado = (sorteio - defesaInimigo)
      se(sorteio > defesaInimigo){
      vidaInimigo = vidaInimigo - danoDado
      
      }senao se (sorteio <= defesaInimigo){
      
      vidaInimigo = vidaInimigo - 1

      }
      sorteioInimigo = u.sorteia(1,danoInimigo)
      se(sorteioInimigo > defesaHeroi){
        danoTomado = sorteioInimigo - defesaHeroi
        vidaHeroi = vidaHeroi - (sorteioInimigo - defesaHeroi)
      }senao se (sorteioInimigo < defesaHeroi){
        danoTomado = 1
        vidaHeroi = vidaHeroi - 1
      }
      se(vidaInimigo < (vidaMaximaInimigo - 100)){
        se (turnoAtual % 2 == 0 ){
         vidaInimigo = vidaInimigo + 100
        }
      }
    } 
  }
  funcao combateChefe(inteiro tipoDeChefe){
    se (tipoDeChefe == 1){
      vidaInimigo = 500
      danoInimigo = 75
      defesaInimigo = 40
      inimigoXP = 100
      vidaMaximaInimigo = vidaInimigo

      atualCombate()
      chefe ++
      ondeEstou ++
    }se (tipoDeChefe == 2){
      vidaInimigo = 750
      danoInimigo = 100
      defesaInimigo = 60
      inimigoXP = 200
      vidaMaximaInimigo = vidaInimigo

      atualCombate()
      chefe ++
      ondeEstou ++
    }se (tipoDeChefe == 3){
      vidaInimigo = 1250
      danoInimigo = 150
      defesaInimigo = 100
      inimigoXP = 300
      vidaMaximaInimigo = vidaInimigo

      atualCombate()
      chefe ++
      ondeEstou ++
    }se (tipoDeChefe == 4){
      vidaInimigo = 1750
      danoInimigo = 230
      defesaInimigo = 120
      inimigoXP = 400
      vidaMaximaInimigo = vidaInimigo

      atualCombate()
      chefe ++
      ondeEstou ++
    }se (tipoDeChefe == 5){
      vidaInimigo = 2000
      danoInimigo = 300
      defesaInimigo = 160
      inimigoXP = 500
      vidaMaximaInimigo = vidaInimigo

      atualCombate()
      chefe ++
      ondeEstou ++
    }
   
   
   exploration()
  }
 
}