programa {
  inclua biblioteca Util --> u

  cadeia nomeDoPersonagem
  cadeia classe 
  inteiro vidaDoPersonagem = 1
  inteiro ataqueDoPersonagem = 0
  inteiro defesaDoPersonagem = 0
  inteiro xpDoPersonagem = 0 
  inteiro nivel = 0
  inteiro auxVidaDoPersonagem = 0

  inteiro sorteio = 0
  inteiro pOSSUIpOCAO? = 0

  inteiro capacete = 0
  inteiro peitoral = 0
  inteiro calca = 0
  inteiro botas = 0

  inteiro salvaCachorro = 0

  cadeia regioes[5] = {"Floresta das Névoas", "Vila Abandonada","Caverna Sombria","Pântano dos Lamentos","Castelo Dourado"}
  inteiro localizacao = 0

  cadeia inimigosDaCampanhaNormal[15] = {"Lobo das Névoas"}
  inteiro vIdaDosInimigos[15] = {15}
  inteiro aUXVIDADOSINIMIGOS[15] = {30}
  inteiro aTaqueDosInimigos[15] = {12}
  inteiro dEfesaDosInimigos[15] = {15}
  inteiro xPDosInimigos[15] = {35}

  funcao inicio() {
    enquanto(vidaDoPersonagem > 0){
     se(vidaDoPersonagem > 0){

      menu()

     }senao{

      pare

     }
     
    }

    
  
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
    enquanto(opcao != "iiii" e vidaDoPersonagem > 0){
      escreva("Qual opção você quer escolher? i, ii ou iii?\n")
      leia(opcao)
      escolha(opcao){
        caso "i":
          
          novoJogo()
          registrarPersonagem()
          introducaoPosCriacao()
          florestaDaNevoa()
          se(vidaDoPersonagem > 0){
            vilaAbandonada()
          }
          
        
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
    
    escreva("Há muito tempo, no Reino de Eldoria, a paz era mantida pela mística Pedra da Luz, protegida pelos Anciãos do Castelo Dourado.\n")
    escreva("\n")
    
    escreva("Um dia, uma força sombria conhecida como O Devastador invadiu o reino, roubando a relíquia sagrada e mergulhando as terras em trevas e caos.\n")
    
    escreva("Vilas foram saqueadas, florestas corrompidas, e criaturas sombrias começaram a vagar pelas regiões.\n")
    escreva("\n")
    
    escreva("Diante da crise, uma antiga profecia se cumpriu: um herói escolhido surgirá das sombras para restaurar a luz. Você é esse herói.\n")
    escreva("\n")
    
    escreva("Sua missão é atravessar cinco regiões dominadas pelo mal, enfrentando inimigos, evoluindo suas habilidades e se preparando para\n")
    escreva("confrontar O Devastador no Castelo Dourado.\n")
    
    escreva("A jornada será repleta de perigos, escolhas e batalhas. Seu destino e o de Eldoria estão entrelaçados.\n")
    
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
      u.aguarde(1000)
      escreva("\nMago: Se você quer um canhão de vidro, pega ele, os status dele são:\nVida: 15\nDefesa: 20\nAtaque: +20\n")
      u.aguarde(1000)
      escreva("\nArqueiro: Se você quer um cara mais equilibrado, pega ele, os status dele são:\nVida: 30\nDefesa: 27\nAtaque: +10\n")
      u.aguarde(1000)
      
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
        defesaDoPersonagem = 27
        ataqueDoPersonagem = 10
        escreva("\nVida: ", vidaDoPersonagem,"\nDefesa: ", defesaDoPersonagem,"\nAtaque: ", ataqueDoPersonagem,"\n")
      }

      escreva("XP: ", xpDoPersonagem,"\nNível: ", nivel,"\n")
      auxVidaDoPersonagem = vidaDoPersonagem
      
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
    
    
    escreva("PERFEITO, bora começar de fato com a sua jornada, que provavelmente será bem sangrenta e sofrida...\n")
    

  }







  funcao florestaDaNevoa() {
    
    desenhoDaFloresta()

    limpa()
    status()

    escreva("\n",nomeDoPersonagem," começou sua jornada maluca na ", regioes[0],", um lugar que era frequentemente usado para realizar acampamentos\n")
    
    escreva("e piqueniques entre amigos e família, mas depois que aquele VAGABUNDO do \"Devastador\"(ninguém sabe o real nome dele) invadiu Eldoria,\n")
    
    escreva("ninguém mais tem liberdade pra nada, não é seguro ir ali, ainda mais sabendo que criaturas estranhas e poderosas vivem naquela\n")
    
    escreva("floresta, e nosso coitado ",nomeDoPersonagem," se deparará com situações nada agradáveis...\n")
    

    
    seguir()
    

    liberdadeNaFloresta()

    batalhaContraLobo()
    
    descansar()

    

  
  }
 
  funcao batalhaContraLobo(){
    
    
    escreva("\nSeguimos!\nVocê caminha vagarosamente pela Floresta, vendo como aquele lugar é sombrio, e com tanta Névoa que nem dá pra ver um palmo a sua frente\nQuando ouve sons de passos próximos.\n")
    
    escreva("Calmamente, você se aproxima e acaba sendo surpreendido por um Lobo, que te ataca e te derruba no chão.\n")
   
    escreva("Isso te machuchou(levou 1 de dano) mas por sorte, você consegue se livrar dele, mas ele está rosnando, a batalha irá começar!\n")
    

    cadeia opcaoDePreparado

    escreva("Está preparado? Sim? Não?\n")
    leia(opcaoDePreparado)
    
    enquanto(opcaoDePreparado != "Sim"){
      escreva("\nÉ Sim ou Sim, não escreva outra coisa e muito menos tente fugir:\n")
      leia(opcaoDePreparado)
    }
    escreva("Isso mesmo, boa sorte(você vai precisar)\n")
    vidaDoPersonagem = vidaDoPersonagem - 1
      
    enquanto(vidaDoPersonagem > 0 e vIdaDosInimigos[0] > 0){
      

      limpa()
      
      statusDuranteBatalha()

      opcaoNaBatalha()

      u.aguarde(1000)
      sorteio = 0
      escreva("\nVez de ",nomeDoPersonagem, "\n")
      
      u.aguarde(1200)

      sorteio = u.sorteia(1,20) + ataqueDoPersonagem
      se(sorteio - dEfesaDosInimigos[0] > 0){
        vIdaDosInimigos[0] = vIdaDosInimigos[0] - (sorteio - dEfesaDosInimigos[0])

        escreva("Seu ataque + o dado deu: ", sorteio,"\n")
        escreva("Dano dado: ", sorteio  - dEfesaDosInimigos[0],"\n")
      } senao{
        escreva("Seu ataque + o dado deu: ", sorteio,"\n")
        escreva("Seu dano não superou a defesa do ",inimigosDaCampanhaNormal[0] ,"\n")
      }
      se(vIdaDosInimigos[0] <= 0){
        vIdaDosInimigos[0] = 0
        pare
      } 


      u.aguarde(2000)

      sorteio = 0
      escreva("\nVez de ", inimigosDaCampanhaNormal[0])

      u.aguarde(1200)

      sorteio = u.sorteia(1,20) + aTaqueDosInimigos[0]
      
      se(sorteio - defesaDoPersonagem > 0){
        vidaDoPersonagem = vidaDoPersonagem - (sorteio - defesaDoPersonagem)

        escreva("\nO ataque + o dado do ",inimigosDaCampanhaNormal[0],": ", sorteio,"\n")
        escreva("Dano dado: ", sorteio  - defesaDoPersonagem,"\n")
        se(vidaDoPersonagem < 0){
          vidaDoPersonagem = 0
        }
        
      } senao{
        escreva("\nO ataque + o dado do ",inimigosDaCampanhaNormal[0],": ", sorteio,"\n")
        escreva("Seu dano não superou a defesa do ", nomeDoPersonagem,"\n")
        
      }
      u.aguarde(2000)
       
      se(vidaDoPersonagem == 0){
        escreva(nomeDoPersonagem," MORREU...\n")
        taMorto()
        u.aguarde(3000)
      
        limpa()
        

        
      }  
      
      u.aguarde(1000)
      

     }
    
      se(vidaDoPersonagem > 0){
      u.aguarde(1000)
      limpa()
      status()
      escreva("\nPARABÉNS, você conseguiu derrotar o ", inimigosDaCampanhaNormal[0],"\n")
      escreva("\nXP obtido:",xPDosInimigos[0],"\n")

      subirDeNivel()
      
    
      u.aguarde(5000)
      limpa()
      status()
      u.aguarde(5000)
      } senao{
        
      }
  }





  funcao liberdadeNaFloresta(){
    cadeia opcao
    inteiro sorteio = 0

    enquanto(opcao != "1" e opcao != "2" e opcao != "3"){
      status()
      escreva("\nO que deseja fazer agora ",nomeDoPersonagem," ?\n\n1-Seguir em frente\n2-Explorar o local\n3-Voltar região\n")
      leia(opcao)
      escolha(opcao){

        caso "1":

        escreva("Ok então, bora seguir.")
        u.aguarde(1000)
        limpa()

        
          
        pare

        caso "2":
          inteiro opcao
          sorteio = 0
          sorteio = u.sorteia(1,20)
          escreva("\nVocê resolveu explorar o local, mas para conseguir algo bom, precisa ter sorte no dado d20, e você tirou...",u.aguarde(1000),sorteio," no dado")
          se(sorteio > 15){
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
            limpa()
            escolha(opcao){
              caso 1:
                pOSSUIpOCAO = 1

                se(vidaDoPersonagem == auxVidaDoPersonagem){
                escreva("\nPRA QUE TU VAI USAR SENDO QUE TU TA COM A VIDA CHEIA? vou te poupar dessa, vou deixar tua poção guardada")
                pOSSUIpOCAO = 1
                
                } senao{
                pocao()
                
                }

                
          
              pare

              caso 2:
     
              casoEncontrePocao()

            }


          } senao se(sorteio > 10 e sorteio < 16){
            cadeia opcao
            escreva("\nEstava você explorando a floresta, vendo se achava algo de útil,\n")

            escreva("e para sua surpresa, viu uma CACETADA de moscas zumbindo e rodeando algo atrás de um arbusto.\n")

            escreva("Você, sendo um completo curioso, decide ir ali pra ver o motivo das moscas estarem tão agitadas e rodeando o arbusto,\n")

            escreva("e quando tu chega ali...você vê um corpo estirado no chão, com marcas afiadas no corpo todo, e dentre várias características estranhas, tem algo que chama sua atenção!\n")

            escreva("O cádaver estava usando um saco de pão na cabeça, mas o que chamou sua atenção, forams as botas dele, e logo você pensa:\n",nomeDoPersonagem,": E se eu pegar pra mim?\n")

            escreva("\nAgora a escolha é sua, você quer:\n1-Pegar as botas,2-Deixar elas para trás\n")
            leia(opcao)
            enquanto(opcao != "1" e opcao != "2"){
              escreva("Opção 1 ou opção 2?\n")
              leia(opcao)
              se(opcao == "1"){
                escreva("Você decidiu pegar as botas, não são tão fortes(afinal, essa é a primeira região né), mas ajuda na sua defesa.\n")
                escreva("Defesa obtida das botas: +2")
                botas = 1
                defesaDoPersonagem = defesaDoPersonagem + 2
              } senao se(opcao == "2"){
                escreva("Ok então né, as botas concediam 2 de defesa pra você, (tu é muito fresco pra pegar botas de um cadáver né?)\n")
                
              }
            }
            
            
          } senao se(sorteio > 1 e sorteio < 11){
            escreva("\nVocê decide explorar o local tranquilamente pra ver se encontra alguma coisa, mas você procura...procura...\n")
            escreva("procura...e nada, você só perdeu tempo, não foi dessa vez que você achou algo bom kkkkk(peço perdão pela risada).")
          } senao se(sorteio == 1){
            escreva("Você vai tentar explorar a floresta, todo corajoso e confiante de que você sai dali com umas 3 poções de cura e uma espada que dá 100 de dano,\n")
            escreva("porém, hoje não é seu dia, imediatamente depois de começar a explorar, uma criatura que você não sabe se é uma águia esquisita ou o que,\n")
            escreva("voa em sua direção pra te atacar, você tenta correr, mas é inútil, ela te alcança e te acerta um razante lindo(tomou 3 de dano).")

            vidaDoPersonagem - 3
          }

        pare

        caso "3":
          
        se(localizacao == 1){
          limpa()
          status()
          escreva("\nVocê já está na região 1, não tem pra onde voltar\n")
          liberdadeNaFloresta()
          
          
        } senao{
          localizacao--
          se(localizacao == 1){
            desenhoDaFloresta()
            
          }
        }

        pare

      }
    }
  }

  funcao salvarOcachorroDoResidentEvil4(){
    cadeia opcao
    escreva("\nCaminhando pela floresta, você começa a ouvir um barulho de choro, parece de algum animal, e seguindo esse som você\n")
    escreva("avista um cachorro (ou será que é um lobo?) preso em uma aramadilha de urso.\nVocê quer ajudar ele?\n1-Sim, vou ajudar\n2-Não, sou um monstro sem coração.\n")
    leia(opcao)
    
    enquanto(opcao != "1" ou opcao != "2"){
      escreva("\nOpção 1 ou Opção 2?\n")
      leia(opcao)
    }
    //fazer os "se" caso ele ignore o cachorro e caso ele ajude

  }
  




  funcao vilaAbandonada(){
    localizacao++
    escreva("\nVILA ABANDONADA")

    liberdadeNaFloresta()

  }


  funcao casoEncontrePocao(){
    inteiro opcao
    se(pOSSUIpOCAO == 1 e vidaDoPersonagem == auxVidaDoPersonagem){
      escreva("\nVocê já possui uma poção e não poderá carregar mais uma, e também já ta com a vida máxima, ou seja...sem poção extra")
    } senao se(pOSSUIpOCAO == 1 e vidaDoPersonagem < auxVidaDoPersonagem){
      
      escreva("\nVocê já possui uma poção e não poderá carregar mais uma, mas não está com a vida máxima, quer usar a poção que encontrou agora?Sim?Não?\n")
      pocao()
      pOSSUIpOCAO = 1

  
      leia(opcao)
      enquanto(opcao != "Sim" e opcao != "Não"){
        escreva("Sim OU Não?")
        leia(opcao)
      }
      se(opcao == "Sim"){
        pocao()

      } senao{
        escreva("Ok então,")

      }
      
  
    } 
    senao{
      escreva("Ok então, poção guardada!\n")
      pOSSUIpOCAO = 1
    }

  }

  funcao pocao (){
    se(pOSSUIpOCAO == 1){
      se((vidaDoPersonagem + 10) > auxVidaDoPersonagem){
      vidaDoPersonagem = auxVidaDoPersonagem
      } senao{
      vidaDoPersonagem = vidaDoPersonagem + 10
      }
      escreva("Poção usada\n")
      pOSSUIpOCAO--
      escreva("Vida atual: ", vidaDoPersonagem)
    } senao se(pOSSUIpOCAO == 0){
      escreva("\nVocê não tem poção ;-;\n")
    } 
  }



  funcao status(){
    escreva("\nNome:",nomeDoPersonagem)
    escreva("\nClasse:", classe," ———— ","Região:", localizacao,"—",regioes[localizacao])
    escreva("\nVida:",vidaDoPersonagem,"/",auxVidaDoPersonagem,"\t Defesa:",defesaDoPersonagem,"\t Ataque:",ataqueDoPersonagem,"\t XP:",xpDoPersonagem,"\tNível:",nivel,"\n")

  }


  funcao statusDuranteBatalha(){
    inteiro contador = 1
    escreva("Rodada ",contador++)
    escreva("\nUsuário:",nomeDoPersonagem,"\t│\t",vidaDoPersonagem,"/",auxVidaDoPersonagem,"\n")
    escreva("Inimigo:",inimigosDaCampanhaNormal[0],"\t│\t",vIdaDosInimigos[0],"/",aUXVIDADOSINIMIGOS[0],"\n")
  }

  

  funcao seguir(){
    cadeia opcao
    escreva("\nSeguir?\n1-Sim\n2-Não")
    enquanto(opcao != "1"){
      escreva("...\n")
      leia(opcao)
    }
    limpa()
  }

  funcao subirDeNivel() {
      
      xpDoPersonagem = xpDoPersonagem + xPDosInimigos[0]
      enquanto(xpDoPersonagem > 99){
        escreva("\nPARABÉNS, subiu do nível ",nivel," para o nível ",nivel + 1)
        escreva("\nAtributos ganhos:\nVida + 5\tDefesa + 5 e Ataque + 5\n")
        auxVidaDoPersonagem = auxVidaDoPersonagem + 5
        vidaDoPersonagem = vidaDoPersonagem + 5
        defesaDoPersonagem = defesaDoPersonagem + 5
        ataqueDoPersonagem = ataqueDoPersonagem + 5
        nivel = nivel + 1
        xpDoPersonagem = xpDoPersonagem - 100
        
        se(xpDoPersonagem > 99){
          escreva("\nVocê vai subir mais um nível, pois ta com o XP acima de 100\n")
          seguir()
        }
      }
     
  }

  funcao opcaoNaBatalha(){
    cadeia opcao

    enquanto(opcao != "1" e opcao != "2"){
      
      escreva("\nO que você quer fazer?\n1-Atacar\n2-Usar Poção\n")
      leia(opcao)
    }
    limpa()
      se(opcao == 2){
        statusDuranteBatalha()
        pocao()
        opcaoNaBatalha()
      } senao se(opcao == 1){
        limpa()
        statusDuranteBatalha()
        
      }      
  }

  funcao taMorto(){
  
  logico teste

  teste = (vidaDoPersonagem > 0)

  escreva(teste)
  
  
  }

  funcao descansar(){
    escreva("\nVocê se sente cansado depois dessa batalha e decide tirar um cochilo, você avistou uma arvoré proxima que você pode se escorar de descansar")
    escreva("\nSua vida foi restaurada em 4 pontos!(isso se você tiver tomado 4 de dano na última batalha).")
    se((vidaDoPersonagem + 4) > auxVidaDoPersonagem){
      vidaDoPersonagem = auxVidaDoPersonagem
    } senao{
      vidaDoPersonagem = vidaDoPersonagem + 4
    }


  
    















































  
  }


  funcao batalha(){
    inteiro contador = 1
    
    

    cadeia opcaoDePreparado

    seguir()
      
    enquanto(vidaDoPersonagem > 0 e vIdaDosInimigos[0] > 0){
      

      limpa()
      escreva("Rodada ",contador++)
      statusDuranteBatalha()

      opcaoNaBatalha()

      u.aguarde(1000)
      sorteio = 0
      escreva("\nVez de ",nomeDoPersonagem, "\n")
      
      u.aguarde(1200)

      sorteio = u.sorteia(1,20) + ataqueDoPersonagem
      se(sorteio - dEfesaDosInimigos[0] > 0){
        vIdaDosInimigos[0] = vIdaDosInimigos[0] - (sorteio - dEfesaDosInimigos[0])

        escreva("Seu ataque + o dado deu: ", sorteio,"\n")
        escreva("Dano dado: ", sorteio  - dEfesaDosInimigos[0],"\n")
      } senao{
        escreva("Seu ataque + o dado deu: ", sorteio,"\n")
        escreva("Seu dano não superou a defesa do ",inimigosDaCampanhaNormal[0] ,"\n")
      }
      se(vIdaDosInimigos[0] <= 0){
        vIdaDosInimigos[0] = 0
        pare
      } 


      u.aguarde(2000)

      sorteio = 0
      escreva("\nVez de ", inimigosDaCampanhaNormal[0])

      u.aguarde(1200)

      sorteio = u.sorteia(1,20) + aTaqueDosInimigos[0]
      
      se(sorteio - defesaDoPersonagem > 0){
        vidaDoPersonagem = vidaDoPersonagem - (sorteio - defesaDoPersonagem)

        escreva("\nO ataque + o dado do ",inimigosDaCampanhaNormal[0],": ", sorteio,"\n")
        escreva("Dano dado: ", sorteio  - defesaDoPersonagem,"\n")
        se(vidaDoPersonagem < 0){
          vidaDoPersonagem = 0
        }
        
      } senao{
        escreva("\nO ataque + o dado do ",inimigosDaCampanhaNormal[0],": ", sorteio,"\n")
        escreva("Seu dano não superou a defesa do ", nomeDoPersonagem,"\n")
        
      }
      u.aguarde(2000)
       
      se(vidaDoPersonagem == 0){
        escreva(nomeDoPersonagem," MORREU...\n")
        taMorto()
        u.aguarde(3000)
      
        limpa()
        
      }  
      
      u.aguarde(1000)
      
     }
    
      se(vidaDoPersonagem > 0){
      u.aguarde(1000)
      limpa()
      status()
      escreva("\nPARABÉNS, você conseguiu derrotar o ", inimigosDaCampanhaNormal[0],"\n")
      escreva("\nXP obtido:",xPDosInimigos[0],"\n")

      subirDeNivel()
      
    
      u.aguarde(5000)
      limpa()
      status()
      u.aguarde(5000)
      } senao{
        
      }
  }

  funcao liberdade(){
    cadeia opcao
    inteiro sorteio = 0

    enquanto(opcao != "1" e opcao != "2" e opcao != "3"){
      status()
      escreva("\nO que deseja fazer agora ",nomeDoPersonagem," ?\n\n1-Seguir em frente\n2-Explorar o local\n3-Voltar região\n")
      leia(opcao)
      escolha(opcao){

        caso "1":

        escreva("Ok então, bora seguir.")
        u.aguarde(1000)
        limpa()

        
          
        pare

        caso "2":
          inteiro opcao
          sorteio = 0
          sorteio = u.sorteia(1,20)
          escreva("\nVocê resolveu explorar o local, mas para conseguir algo bom, precisa ter sorte no dado d20, e você tirou...",u.aguarde(1000),sorteio," no dado")
          se(sorteio > 15){
            
          } senao se(sorteio > 10 e sorteio < 16){
            
          } senao se(sorteio > 1 e sorteio < 11){

          } senao se(sorteio == 1){
            
          }

        pare

        caso "3":
          
        se(localizacao == 1){
          limpa()
          status()
          escreva("\nVocê já está na região 1, não tem pra onde voltar\n")
          liberdade()
          
          
        } senao{
          localizacao--
          se(localizacao == 1){
            desenhoDaFloresta()
            //Vou colocar um "se" para os números de cada região.
            //e depois vou criar uma função específica pra cada região, se ele voltar,
            //ele irá poder explorar e tals, mas sempre encontrará um inimigo
          }
        }

        pare

      }
    }
  }
  

  

  









  
















  funcao desenhoDaFloresta(){
    limpa()
    localizacao = 1
    escreva(" ___          ____         ___   ___    ___   ____  ___   ___        ___   ___           ___        ___   ___    \n")
    u.aguarde(100)                                          
    escreva("    │   ---  │      │     │   │ │___│  │___  │___    │   │___│      │   ╲ │___│    │╲ │ │___  \\  / │   │ │___│    \n")
    u.aguarde(100)
    escreva("  __|__      │‾‾‾‾  │___  │___│ │   ╲  │___  ____│   │   │   │      │___/ │   │    │ ╲│ │___   \\/  │___│ │   │    \n")

    u.aguarde(2000)
  }
}


  

