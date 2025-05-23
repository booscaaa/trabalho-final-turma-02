programa {
  inclua biblioteca Util --> u

  cadeia nomeDoPersonagem
  cadeia classe 
  inteiro vidaDoPersonagem = 0
  inteiro ataqueDoPersonagem = 0
  inteiro defesaDoPersonagem = 0
  inteiro xpDoPersonagem = 0 
  inteiro nivel = 0
  inteiro auxVidaDoPersonagem
  inteiro sorteio = 0
  inteiro pOSSUIpOCAO? = 0

  cadeia regioes[5] = {"Floresta das Névoas", "Vila Abandonada","Caverna Sombria","Pântano dos Lamentos","Castelo Dourado"}

  cadeia inimigosDaCampanhaNormal[15] = {"Lobo das Névoas"}
  inteiro vIdaDosInimigos[15] = {30}
  inteiro aTaqueDosInimigos[15] = {12}
  inteiro dEfesaDosInimigos[15] = {15}
  inteiro xpDosInimigos[15] = {20}

  funcao inicio() {

    menu()
  
  }
  funcao menu(){ 
    
    cadeia opcao

    u.aguarde(1000)
    escreva("________________________\n")
    u.aguarde(100)
    escreva("│                      │\n")
    u.aguarde(100)
    escreva("│    i.Novo Jogo       │\n")
    u.aguarde(100)
    escreva("│   ii.Créditos        │\n")
    u.aguarde(100)
    escreva("│  iii.Sair do jogo    │\n")
    u.aguarde(100)
    escreva("│                      │\n")
    u.aguarde(100)
    escreva("‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾\n")

    dasOpcoes(opcao)

  }

  funcao dasOpcoes(cadeia opcao){
    enquanto(opcao != "iiii"){
      escreva("Qual opção você quer escolher? i, ii ou iii?\n")
      leia(opcao)
      escolha(opcao){
        caso "i":
      
          novoJogo()
          registrarPersonagem()
          introducaoPosCriacao()
          florestaDaNevoa()
        
        pare

        caso "ii":

        pare

        caso "iii":
      }
    }
    
  }
  funcao novoJogo(){
    

    inteiro contador = 3

    u.aguarde(1000)
    limpa()
    escreva("BORA COMEÇAR ENTÃO...não sei se foi uma boa ideia.\n")
    escreva("\n")
    u.aguarde(3000)
    escreva("Há muito tempo, no Reino de Eldoria, a paz era mantida pela mística Pedra da Luz, protegida pelos Anciãos do Castelo Dourado.\n")
    escreva("\n")
    u.aguarde(2000)
    escreva("Um dia, uma força sombria conhecida como O Devastador invadiu o reino, roubando a relíquia sagrada e mergulhando as terras em trevas e caos.\n")
    u.aguarde(2000)
    escreva("Vilas foram saqueadas, florestas corrompidas, e criaturas sombrias começaram a vagar pelas regiões.\n")
    escreva("\n")
    u.aguarde(2000)
    escreva("Diante da crise, uma antiga profecia se cumpriu: um herói escolhido surgirá das sombras para restaurar a luz. Você é esse herói.\n")
    escreva("\n")
    u.aguarde(2000)
    escreva("Sua missão é atravessar cinco regiões dominadas pelo mal, enfrentando inimigos, evoluindo suas habilidades e se preparando para\n")
    escreva("confrontar O Devastador no Castelo Dourado.\n")
    u.aguarde(2000)
    escreva("A jornada será repleta de perigos, escolhas e batalhas. Seu destino e o de Eldoria estão entrelaçados.\n")
    u.aguarde(2000)
    escreva("Vamos seguir com as escolhas em:\n", contador,"\n")
    u.aguarde(1000)
    contador--
    escreva(contador,"\n")
    u.aguarde(1000)
    contador--
    escreva(contador,"\n")
    u.aguarde(1000)
    contador--
    escreva(contador,"\n")
    u.aguarde(1000)
    limpa()
    
  }

  funcao registrarPersonagem(){

    escreva("Então, primeiramente, preciso saber o nome deste grande guerreiro que vai se ferrar muito nas batalhas:\n")
    leia(nomeDoPersonagem)
    u.aguarde(500)

    limpa()

    escreva(nomeDoPersonagem,"? Ok...cada um com suas ideias.\n")
    escreva("Enfim, vamos continuar, escolha sua classe.\nUm ponto importante...o ataque será sorteado, então a cada vez que você atacar, o seu dano será rolado usando um\ndado d20, e você pode dar 1 de dano ou até 20, e cada classe adicionará mais uma quantidade de dano garantida.\nVamos exemplificar, o guerreiro irá adicionar 5 ao número que você tirar no dado, então se você tirar 10, o seu dano será de 15.\nDITO ISSO, temos 3 opções:\n")
      
    classesDoPersonagem()

  }




  funcao classesDoPersonagem(){
      inteiro contador = 3

      escreva("\nGuerreiro: Se você quer um personagem TANKUDÃO, pega ele, os status dele são:\nVida: 40\nDefesa: 35\nAtaque: +5\n")
      escreva("\nMago: Se você quer um canhão de vidro, pega ele, os status dele são:\nVida: 15\nDefesa: 20\nAtaque: +20\n")
      escreva("\nArqueiro: Se você quer um cara mais equilibrado, pega ele, os status dele são:\nVida: 30\nDefesa: 30\nAtaque: +10\n")
      
      enquanto(classe != "Guerreiro" e classe != "Mago" e classe != "Arqueiro"){

        escreva("\nEntão ", nomeDoPersonagem,", qual classe você deseja escolher?(escreva o nome certo por favor)\n")
        leia(classe)

      }
      u.aguarde(2000)
      limpa()
      escreva("Perfeito, agora vou mostrar seus status iniciais:\nNome: ", nomeDoPersonagem,"\n")
      
      se(classe == "Guerreiro"){
        vidaDoPersonagem = 40
        defesaDoPersonagem = 35
        ataqueDoPersonagem = 5
        escreva("Vida: ", vidaDoPersonagem,"\nDefesa: ", defesaDoPersonagem,"\nAtaque: ", ataqueDoPersonagem,"\n")

      } senao se(classe == "Mago"){
        vidaDoPersonagem = 15
        defesaDoPersonagem = 20
        ataqueDoPersonagem = 20
        escreva("Vida: ", vidaDoPersonagem,"\nDefesa: ", defesaDoPersonagem,"\nAtaque: ", ataqueDoPersonagem,"\n")

      } senao se(classe == "Arqueiro"){
        vidaDoPersonagem = 30
        defesaDoPersonagem = 30
        ataqueDoPersonagem = 10
        escreva("\nVida: ", vidaDoPersonagem,"\nDefesa: ", defesaDoPersonagem,"\nAtaque: ", ataqueDoPersonagem,"\n")
      }

      escreva("XP: ", xpDoPersonagem,"\nNível: ", nivel,"\n")
      auxVidaDoPersonagem = vidaDoPersonagem
      u.aguarde(3000)
      escreva("\nVamos seguir em:\n", contador,"\n")
      u.aguarde(1000)
      contador--
      escreva(contador,"\n")
      u.aguarde(1000)
      contador--
      escreva(contador,"\n")
      u.aguarde(1000)
      contador--
      escreva(contador,"\n")
      u.aguarde(1000)
      limpa()

  }






  funcao introducaoPosCriacao(){
    limpa()
    
    auxVidaDoPersonagem = vidaDoPersonagem
    escreva("PERFEITO, bora começar de fato com a sua jornada, que provavelmente será bem sangrenta e sofrida...\n")
    u.aguarde(3000)

  }







  funcao florestaDaNevoa() {
    limpa()

    escreva(" ___          ____         ___   ___    ___   ____  ___   ___        ___   ___           ___        ___   ___    \n")
    u.aguarde(100)          
    escreva("    │   ---  │      │     │   │ │___│  │___  │___    │   │___│      │   ╲ │___│    │╲ │ │___  \\  / │   │ │___│    \n")
    u.aguarde(100)
    escreva("  __|__      │‾‾‾‾  │___  │___│ │   ╲  │___  ____│   │   │   │      │___/ │   │    │ ╲│ │___   \\/  │___│ │   │    \n")

    u.aguarde(2000)

    escreva("\n",nomeDoPersonagem," começou sua jornada maluca na ", regioes[0],", um lugar que era frequentemente usado para realizar acampamentos\n")
    u.aguarde(2000)
    escreva("e piqueniques entre amigos e família, mas depois que aquele VAGABUNDO do \"Devastador\"(ninguém sabe o real nome dele) invadiu Eldoria,\n")
    u.aguarde(2000)
    escreva("ninguém mais tem liberdade pra nada, não é seguro ir ali, ainda mais sabendo que criaturas estranhas e poderosas vivem naquela\n")
    u.aguarde(2000)
    escreva("floresta, e nosso coitado ",nomeDoPersonagem," se deparará com situações nada agradáveis...\nMas agora a escolha é sua\n")
    u.aguarde(2000)

    

    liberdadeNaFloresta()

    batalhaContraLobo()

  
  }
 
  funcao batalhaContraLobo(){
    inteiro contador = 5
    cadeia opcao

    escreva("\nVocê caminha vagarosamente pela Floresta, vendo como aquele lugar é sombrio, e com tanta Névoa que nem dá pra ver um palmo a sua frente\nQuando ouve sons de passos próximos.\n")
    u.aguarde(2500)
    escreva("Calmamente, você se aproxima e acaba sendo surpreendido por um Lobo, que te ataca e te derruba no chão.\n")
    u.aguarde(2500)
    escreva("Isso te machuchou(levou 5 de dano) mas por sorte, você consegue se livrar dele, mas ele está rosnando, a batalha irá começar!\n")
    u.aguarde(2500)

    escreva("Bora começar sua primeira batalha?Sim?Não?\n")
    leia(opcao)
    
    enquanto(opcao != "Sim"){
      escreva("É Sim ou Sim, não escreva outra coisa e muito menos tente fugir")
    }
    escreva("Isso mesmo, boa sorte(você vai precisar)\n")
    vidaDoPersonagem = vidaDoPersonagem - 5

    inteiro opcao
      
    enquanto(vidaDoPersonagem > 0 e vIdaDosInimigos[0] > 0){

      u.aguarde(2000)
      sorteio = 0
      escreva("\nVez de ",nomeDoPersonagem, "\n")
      
      u.aguarde(1200)

      sorteio = u.sorteia(1,20) + ataqueDoPersonagem
      se(sorteio - dEfesaDosInimigos[0] > 0){
        vIdaDosInimigos[0] = vIdaDosInimigos[0] - (sorteio - dEfesaDosInimigos[0])

        escreva("Seu ataque + o dado deu: ", sorteio,"\n")
      
        escreva("Dano dado: ", sorteio  - dEfesaDosInimigos[0],"\n")
        se(vIdaDosInimigos[0] < 0){
          vIdaDosInimigos[0] = 0
        }
        escreva("Vida restante do inimigo: ",vIdaDosInimigos[0],"\n")

      } senao{
        escreva("Seu ataque + o dado deu: ", sorteio,"\n")
        escreva("Seu dano não superou a defesa do inimigo\n")
        escreva("Vida restante do inimigo: ",vIdaDosInimigos[0],"\n")
      }


      se(vIdaDosInimigos[0] <= 0 ){
        escreva("\nPARABÉNS, você conseguiu derrotar o ", inimigosDaCampanhaNormal[0])
        xpDoPersonagem = xpDosInimigos[0]
        se(xpDoPersonagem == 100){
          nivel = nivel + 1
          xpDoPersonagem = 0
        } senao se(xpDoPersonagem > 100){
          nivel = nivel + 1
          xpDoPersonagem = xpDoPersonagem - 100
        }
      }
      senao{
      

      u.aguarde(2000)

      sorteio = 0
      escreva("\nVez de ", inimigosDaCampanhaNormal[0])

      u.aguarde(1200)

      sorteio = u.sorteia(1,20) + aTaqueDosInimigos[0]
      
      se(sorteio - defesaDoPersonagem > 0){
        vidaDoPersonagem = vidaDoPersonagem - (sorteio - defesaDoPersonagem)

        escreva("Seu ataque + o dado deu: ", sorteio,"\n")
      
        escreva("Dano dado: ", sorteio  - defesaDoPersonagem,"\n")
        se(vidaDoPersonagem < 0){
          vidaDoPersonagem = 0
        }
        escreva("Vida restante do personagem: ",vidaDoPersonagem,"\n")
      } senao{
        escreva("\nO ataque + o dado do inimigo: ", sorteio,"\n")
        escreva("Seu dano não superou a defesa do ", nomeDoPersonagem,"\n")
        escreva("Vida restante do personagem: ",vidaDoPersonagem,"\n")
      }
      u.aguarde(2000)
      } 
      se(vidaDoPersonagem <= 0){
        escreva(nomeDoPersonagem," MORREU...\n")
        escreva("\nVamos seguir em:\n", contador,"\n")
        u.aguarde(1000)
        contador--
        escreva(contador,"\n")
        u.aguarde(1000)
        contador--
        escreva(contador,"\n")
        u.aguarde(1000)
        contador--
        escreva(contador,"\n")
        u.aguarde(1000)
        contador--
        escreva(contador,"\n")
        u.aguarde(1000)
        contador--
        escreva(contador,"\n")
        u.aguarde(3000)
        limpa()

        
        
      } senao{
        u.aguarde(100)
      }

    }
  }





  funcao liberdadeNaFloresta(){
    inteiro opcao
    inteiro sorteio = 0

    enquanto(opcao != 1 e opcao != 2){
      escreva("\nO que deseja fazer agora ",nomeDoPersonagem," ?\n\n1-Seguir em frente\n2-Explorar o local\n")
      leia(opcao)
      escolha(opcao){

        caso 1:

        escreva("Ok então, bora seguir.")
          
        pare

        caso 2:
          inteiro opcao
          sorteio = u.sorteia(1,20) + 15
          escreva("\nVocê resolveu explorar o local, mas para conseguir algo bom, precisa ter sorte no dado d20, e você tirou...",u.aguarde(1000),sorteio," no dado")
          se(sorteio >= 16){
            u.aguarde(2000)
            escreva("\n.")
            u.aguarde(500)
            escreva(".")
            u.aguarde(500)
            escreva(".")
            u.aguarde(500)
            escreva("Você sendo um completo curioso, decidiu dar uma olhada ao seu redor, e avistou uma macieira, e por estar com muita fome, decide\n")
            u.aguarde(2500)
            escreva("sacudir a árvore pra maça cair...e você vê algo caindo na sua cabeça e")
            u.aguarde(2000)
            escreva(".")
            u.aguarde(500)
            escreva(".")
            u.aguarde(500)
            escreva(".")
            u.aguarde(500)
            escreva("\nPOW, você sente uma dor na cabeça, e quando você olha, é um frasco com um líquido vermelho dentro(tomara que não seja sangue).\n")
            u.aguarde(2500)
            escreva("PARABÉNS, DEU SORTE, você conseguiu uma poção de recuperação de vida, ela pode recuperar 10 pontos do seu HP.\n")
            u.aguarde(1000)
            
            escreva("\nVocê quer utilizar ela agora ou guarda-la pra usar futuramente?\n\n1-Usar\n2-Guardar\n")
            leia(opcao)
            enquanto(opcao != 2 e opcao != 1){
              escreva("escreva direito por favor: ")
              leia(opcao)
            }
            escolha(opcao){
              caso 1:

              se(pOSSUIpOCAO == 1){
                
              }

              se(classe == "Guerreiro" e vidaDoPersonagem == 40){
                escreva("\nPRA QUE TU VAI USAR SENDO QUE TU TA COM A VIDA CHEIA? vou te poupar dessa, vou deixar tua poção guardada")
                pOSSUIpOCAO = 1
              }
              se(classe == "Mago" e vidaDoPersonagem == 15){
                escreva("\nPRA QUE TU VAI USAR SENDO QUE TU TA COM A VIDA CHEIA? vou te poupar dessa, vou deixar tua poção guardada")
                pOSSUIpOCAO = 1
              }
              se(classe == "Arqueiro" e vidaDoPersonagem == 30){
                escreva("\nPRA QUE TU VAI USAR SENDO QUE TU TA COM A VIDA CHEIA? vou te poupar dessa, vou deixar tua poção guardada")
                pOSSUIpOCAO = 1
              }
              senao{
                pocao()
                
              }

              pare

              caso 2:

              se(pOSSUIpOCAO == 1 e vidaDoPersonagem == auxVidaDoPersonagem){
                escreva("Você já possui uma poção e não poderá carregar mais uma, e também já ta com a vida máxima, ou seja...sem poção extra")
              } senao se(pOSSUIpOCAO == 1 e vidaDoPersonagem < auxVidaDoPersonagem){
                escreva("Você já possui uma poção e não poderá carregar mais uma, mas não está com a")

                }senao{

              escreva("Ok então, poção guardada!\n")
              pOSSUIpOCAO = 1
              }
            }


          } 

        pare

        caso 3:
          status()
          escreva("\n")
          liberdedeNaFloresta()
        
        pare

      }
    }
  }






  funcao pocao (){
    se(classe == "Guerreiro" e vidaDoPersonagem > 30){
      vidaDoPersonagem = auxVidaDoPersonagem
    } senao se(classe == "Guerreiro" e vidaDoPersonagem < 31){
      vidaDoPersonagem = vidaDoPersonagem + 10
    }
    se(classe == "Mago" e vidaDoPersonagem > 5){
      vidaDoPersonagem = auxVidaDoPersonagem
    } senao se(classe == "Mago" e vidaDoPersonagem < 6){
      vidaDoPersonagem = vidaDoPersonagem + 10
    }
    se(classe == "Arqueiro" e vidaDoPersonagem > 20){
      vidaDoPersonagem = auxVidaDoPersonagem
    } senao se(classe == "Arqueiro" e vidaDoPersonagem < 21){
      vidaDoPersonagem = vidaDoPersonagem + 10
    }
    escreva("Poção usada\n")
    escreva("Vida atual: ", vidaDoPersonagem)

    }



    funcao status(){

      escreva("\nStatus do ",classe," ",nomeDoPersonagem)
      escreva("\nVida: ",vidaDoPersonagem,"\nDefesa: ",defesaDoPersonagem,"\nAtaque: ",ataqueDoPersonagem,"\nXP: ",xpDoPersonagem,"\nNível: ",nivel)

    }

  
    
























































  funcao liberdade(){
    inteiro opcao
    inteiro sorteio = 0

    enquanto(opcao != 1 e opcao != 2){
      escreva("\nO que deseja fazer agora ",nomeDoPersonagem," ?\n\n1-Seguir em frente\n2-Explorar o local\n3-Ver Status\n")
      leia(opcao)
      escolha(opcao){

        caso 1:

        escreva("Ok então, bora seguir.")
          
        pare

        caso 2:
          inteiro opcao
          sorteio = u.sorteia(1,20) + 15
          escreva("\nVocê resolveu explorar o local, mas para conseguir algo bom, precisa ter sorte no dado d20, e você tirou...",u.aguarde(1000),sorteio," no dado")
          se(sorteio >= 16){
            u.aguarde(2000)
            escreva("\n.")
            u.aguarde(500)
            escreva(".")
            u.aguarde(500)
            escreva(".")
            u.aguarde(500)
            escreva("Você sendo um completo curioso, decidiu dar uma olhada ao seu redor, e avistou uma macieira, e por estar com muita fome, decide\n")
            u.aguarde(2500)
            escreva("sacudir a árvore pra maça cair...e você vê algo caindo na sua cabeça e")
            u.aguarde(2000)
            escreva(".")
            u.aguarde(500)
            escreva(".")
            u.aguarde(500)
            escreva(".")
            u.aguarde(500)
            escreva("\nPOW, você sente uma dor na cabeça, e quando você olha, é um frasco com um líquido vermelho dentro(tomara que não seja sangue).\n")
            u.aguarde(2500)
            escreva("PARABÉNS, DEU SORTE, você conseguiu uma poção de recuperação de vida, ela pode recuperar 10 pontos do seu HP.\n")
            u.aguarde(1000)
            
            escreva("\nVocê quer utilizar ela agora ou guarda-la pra usar futuramente?\n\n1-Usar\n2-Guardar\n")
            leia(opcao)
            enquanto(opcao != 2 e opcao != 1){
              escreva("escreva direito por favor: ")
              leia(opcao)
            }
            escolha(opcao){
              caso 1:

              se(classe == "Guerreiro" e vidaDoPersonagem == 40){
                escreva("\nPRA QUE TU VAI USAR SENDO QUE TU TA COM A VIDA CHEIA? vou te poupar dessa, vou deixar tua poção guardada")
                pOSSUIpOCAO = 1
              }
              se(classe == "Mago" e vidaDoPersonagem == 15){
                escreva("\nPRA QUE TU VAI USAR SENDO QUE TU TA COM A VIDA CHEIA? vou te poupar dessa, vou deixar tua poção guardada")
                pOSSUIpOCAO = 1
              }
              se(classe == "Arqueiro" e vidaDoPersonagem == 30){
                escreva("\nPRA QUE TU VAI USAR SENDO QUE TU TA COM A VIDA CHEIA? vou te poupar dessa, vou deixar tua poção guardada")
                pOSSUIpOCAO = 1
              }
              senao{
                pocao()
                
              }

              pare

              caso 2:

              escreva("Ok então, poção guardada!\n")
              pOSSUIpOCAO = 1
            }


          } 
        
        pare
        
        caso 3:
          status()
        pare
      }
    }
  }

  funcao batalha(){

    inteiro opcao
      
    enquanto(vidaDoPersonagem > 0 e vIdaDosInimigos[0] > 0){

      u.aguarde(2000)
      sorteio = 0
      escreva("\nVez de ",nomeDoPersonagem, "\n")
      
      u.aguarde(1200)

      sorteio = u.sorteia(1,20) + ataqueDoPersonagem
      se(sorteio - dEfesaDosInimigos[0] > 0){
        vIdaDosInimigos[0] = vIdaDosInimigos[0] - (sorteio - dEfesaDosInimigos[0])

        escreva("\nSeu ataque + o dado deu: ", sorteio,"\n")
      
        escreva("Dano dado: ", sorteio  - dEfesaDosInimigos[0],"\n")
        se(vIdaDosInimigos[0] < 0){
          vIdaDosInimigos[0] = 0
        }
        escreva("Vida restante do inimigo: ",vIdaDosInimigos[0],"\n")

      } senao{
        escreva("\nSeu ataque + o dado deu: ", sorteio,"\n")
        escreva("Seu dano não superou a defesa do inimigo\n")
        escreva("Vida restante do inimigo: ",vIdaDosInimigos[0],"\n")
      }


      se(vIdaDosInimigos[0] == 0 ){
        escreva("\nPARABÉNS, você conseguiu derrotar o ", inimigosDaCampanhaNormal[0])
        xpDoPersonagem = xpDosInimigos[0]
        se(xpDoPersonagem == 100){
          nivel = nivel + 1
          xpDoPersonagem = 0
        } senao se(xpDoPersonagem > 100){
          nivel = nivel + 1
          xpDoPersonagem = xpDoPersonagem - 100
        }
      }
    
      senao{
      

      u.aguarde(2000)

      sorteio = 0
      escreva("\nVez de ", inimigosDaCampanhaNormal[0])

      u.aguarde(1200)

      sorteio = u.sorteia(1,20) + aTaqueDosInimigos[0]
      
      se(sorteio - defesaDoPersonagem > 0){
        vidaDoPersonagem = vidaDoPersonagem - (sorteio - defesaDoPersonagem)

        escreva("\nSeu ataque + o dado deu: ", sorteio,"\n")
      
        escreva("Dano dado: ", sorteio  - defesaDoPersonagem,"\n")
        se(vidaDoPersonagem < 0){
          vidaDoPersonagem = 0
        }
        escreva("Vida restante do personagem: ",vidaDoPersonagem,"\n")
      } senao{
        escreva("\nO ataque + o dado do inimigo: ", sorteio,"\n")
        escreva("Seu dano não superou a defesa do ", nomeDoPersonagem,"\n")
        escreva("Vida restante do personagem: ",vidaDoPersonagem,"\n")
      }
      u.aguarde(2000)
      } 
      se(vidaDoPersonagem == 0){
        escreva(nomeDoPersonagem," MORREU...\n")
      } senao{
        u.aguarde(100)
      }
    }

    
  }
}
