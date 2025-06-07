programa {
  inclua biblioteca Util --> u

  cadeia nomeDoPersonagem
  cadeia classe 
  inteiro vidaDoPersonagem = 1
  inteiro ataqueDoPersonagem = 0
  inteiro defesaDoPersonagem = 0
  inteiro xpDoPersonagem = 0 
  inteiro nivel = 1
  inteiro auxVidaDoPersonagem = 0
  inteiro sorteDoPersonagem = 0

  inteiro sorteio = 0
  inteiro pOSSUIpOCAO? = 0
  

  inteiro arma[2] = {0,0}

  inteiro capacete[2] = {0,0}
  inteiro peitoral[2] = {0,0}
  inteiro calca[2] = {0,0}
  inteiro botas[2] = {0,0}

  inteiro salvaCachorro = 0
  inteiro encontrouOcadaverComAsBotas = 0

  cadeia regioes[5] = {"Floresta das Névoas", "Vila Abandonada","Caverna Sombria","Pântano dos Lamentos","Castelo Dourado"}
  inteiro mEUlOCALaTUAL = 0
  inteiro localizacao = 0

  cadeia inimigosDaCampanhaNormal[15] = {"Lobo das Névoas","El Gigante","Dr.Salvador","Chaves","Seu Madruga"}
  inteiro vIdaDosInimigos[15] = {30,100,60,30,60}
  inteiro aUXVIDADOSINIMIGOS[15] = {30,100,60,30,60}
  inteiro aTaqueDosInimigos[15] = {12,15,30,30,35}
  inteiro dEfesaDosInimigos[15] = {15,8,20,30,35}
  inteiro xPDosInimigos[15] = {25,75,125,30,90}


  inteiro passouPelaIntroducaoDaVilaAbandonada = 0
  inteiro passouPelaLiberdadeNaVilaAbandonada = 0
  inteiro passouPelaBatalhaDoChavesChiquinhaQuico = 0
  inteiro passouPelaLiberdadeNaVilaAbandonadaPARTE2 = 0

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
    
   seguir()

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

      escreva("\nGuerreiro: Se você quer um personagem TANKUDÃO, pega ele, os status dele são:\nVida: 40\nDefesa: 33\nAtaque: +6\n")
      u.aguarde(1000)
      escreva("\nMago: Se você quer um canhão de vidro, pega ele, os status dele são:\nVida: 15\nDefesa: 20\nAtaque: +20\n")
      u.aguarde(1000)
      escreva("\nArqueiro: Se você quer um cara mais equilibrado, pega ele, os status dele são:\nVida: 30\nDefesa: 25\nAtaque: +10\n")
      u.aguarde(1000)
      
      enquanto(classe != "Guerreiro" e classe != "Mago" e classe != "Arqueiro" e classe != "Lorde Faisão das Trevas"){

        escreva("\nEntão ", nomeDoPersonagem,", qual classe você deseja escolher?(escreva o nome certo por favor)\n")
        leia(classe)

      }
    
      limpa()
      escreva("Perfeito, agora vou mostrar seus status iniciais:\nNome: ", nomeDoPersonagem,"\n")
      
      se(classe == "Guerreiro"){
        vidaDoPersonagem = 40
        defesaDoPersonagem = 33
        ataqueDoPersonagem = 6
        sorteDoPersonagem = 1
        escreva("Vida: ", vidaDoPersonagem,"\nDefesa: ", defesaDoPersonagem,"\nAtaque: ", ataqueDoPersonagem,"\n")

      } senao se(classe == "Mago"){
        vidaDoPersonagem = 15
        defesaDoPersonagem = 20
        ataqueDoPersonagem = 20
        sorteDoPersonagem = 3
        escreva("Vida: ", vidaDoPersonagem,"\nDefesa: ", defesaDoPersonagem,"\nAtaque: ", ataqueDoPersonagem,"\n")

      } senao se(classe == "Arqueiro"){
        vidaDoPersonagem = 30
        defesaDoPersonagem = 25
        ataqueDoPersonagem = 10
        sorteDoPersonagem = 1
        escreva("\nVida: ", vidaDoPersonagem,"\nDefesa: ", defesaDoPersonagem,"\nAtaque: ", ataqueDoPersonagem,"\n")

      } senao se(classe == "Lorde Faisão das Trevas"){
        vidaDoPersonagem = 80
        defesaDoPersonagem = 40
        ataqueDoPersonagem = 30
        sorteDoPersonagem = 16
      }

      escreva("XP: ", xpDoPersonagem,"\nNível: ", nivel,"\n")
      auxVidaDoPersonagem = vidaDoPersonagem
      
      seguir()

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

    
    se(vidaDoPersonagem > 0){

      salvarOcachorroDoResidentEvil4()
      
      liberdadeNaFloresta()
     

      batalhaContraLobo()
      se(vidaDoPersonagem> 0){
      
        descansar()

        voceFoiBondosoComOcachorro()
        
        liberdadeNaFlorestaPARTE2()

        batalhaContraElGigante()
        se(vidaDoPersonagem > 0){

          descansar()

          limpa()
          status()
          escreva("\nVocê conseguiu herói, completou 1 das 5 regiões, agora sua proxima jornada será na ",regioes[1],", Boa sorte!\n")

          seguir()
        } senao{

        }
      } senao{

      }

      


    } senao{

    }
  }
 
  funcao batalhaContraLobo(){
    seguir()
    status()
    
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
    
    se(classe == "Guerreiro"){
      dEfesaDosInimigos[0] = dEfesaDosInimigos[0] - 2
    }
    inteiro contador = 0
    enquanto(vidaDoPersonagem > 0 e vIdaDosInimigos[0] > 0){
      

      limpa()

      
      contador++
      escreva("Rodada ",contador)
      statusDuranteBatalhaCOntraLoboDasNevoas()

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
      se(defesaDoPersonagem > 27 e contador == 2){
        escreva("\nO ",inimigosDaCampanhaNormal[0]," começou a ficar estranho, e de repente...AS COSTAS DELE EXPLODEM, liberando uns tentáculos\n")
        escreva("Esses tentáculos vão ajudo-lo a trucidar você!\n")
        aTaqueDosInimigos[0] = aTaqueDosInimigos[0] + 10
        u.aguarde(5000)
      }
      

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

      subirDeNivelContraLoboDasNevoas()
      
    
      seguir()
      limpa()
      status()
      
      } 

  }

  funcao subirDeNivelContraLoboDasNevoas() {
      
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


  funcao statusDuranteBatalhaCOntraLoboDasNevoas(){
    
    escreva("\nUsuário:",nomeDoPersonagem,"\t│\t",vidaDoPersonagem,"/",auxVidaDoPersonagem,"\n")
    escreva("Inimigo:",inimigosDaCampanhaNormal[0],"\t│\t",vIdaDosInimigos[0],"/",aUXVIDADOSINIMIGOS[0],"\n\n")
  }





  funcao liberdadeNaFloresta(){
    cadeia opcaoDaLiberdade
    inteiro sorteio = 0

    enquanto(opcaoDaLiberdade != "1" e opcaoDaLiberdade != "2" e opcaoDaLiberdade != "3"){
      limpa()
      status()
      escreva("\nO que deseja fazer agora ",nomeDoPersonagem," ?\n\n1-Seguir em frente\n2-Explorar o local\n3-Voltar região\n")
      leia(opcaoDaLiberdade)
      escolha(opcaoDaLiberdade){
        

        caso "1":

        escreva("Ok então, bora seguir.")
        u.aguarde(1000)
        limpa()

        
          
        pare

        caso "2":
          inteiro opcao
          sorteio = 0
          sorteio = u.sorteia(sorteDoPersonagem,20) 
          
          limpa()
          status()
          escreva("\nVocê resolveu explorar o local, mas para conseguir algo bom, precisa ter sorte no dado d20, e você tirou...",u.aguarde(1000),sorteio," no dado\n")
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
            escreva("PARABÉNS, DEU SORTE, você conseguiu uma poção de recuperação de vida(recupera 15 do seu HP).\n")
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
                escreva("\nPRA QUE TU VAI USAR SENDO QUE TU TA COM A VIDA CHEIA? vou te poupar dessa, vou deixar tua poção guardada\n")
                pOSSUIpOCAO = 1
                
                } senao{
                pocao()
                
                }

                
          
              pare

              caso 2:
              status()
              casoEncontrePocao()
              seguir()

            }


          } senao se(sorteio > 10 e sorteio < 16){
            encontrouOcadaverComAsBotas = 1
            cadeia opcao
            escreva("\nEstava você explorando a floresta, vendo se achava algo de útil,\n")

            escreva("e para sua surpresa, viu uma CACETADA de moscas zumbindo e rodeando algo atrás de um arbusto.\n")

            escreva("Você, sendo um completo curioso, decide ir ali pra ver o motivo das moscas estarem tão agitadas e rodeando o arbusto,\n")

            escreva("e quando tu chega ali...você vê um corpo estirado no chão, com marcas afiadas no corpo todo,\ne dentre várias características estranhas, tem algo que chama sua atenção!\n")

            escreva("O cádaver estava usando um saco de pão na cabeça, mas o que realmente te intrigou foram as botas dele, e logo você pensa:\n",nomeDoPersonagem,": E se eu pegar pra mim?\n")

            escreva("\nAgora a escolha é sua, você quer:\n1-Pegar as botas\n2-Deixar elas para trás\n")
            leia(opcao)
            enquanto(opcao != "1" e opcao != "2"){
              escreva("Opção 1 ou opção 2?\n")
              leia(opcao)
            }
            se(opcao == "1"){
              
                escreva("\nVocê decidiu pegar as botas, não são tão fortes(afinal, essa é a primeira região né), mas ajuda na sua defesa.\n")
                escreva("Defesa obtida das botas: +2")
                botas[0] = 1
                botas[1] = 2
                defesaDoPersonagem = defesaDoPersonagem + botas[1]
              } senao se(opcao == "2"){
                
                escreva("\nOk então né, as botas concediam 2 de defesa pra você, (tu é muito fresco pra pegar botas de um cadáver né?)\n")
                
              } 
              seguir()
            
            
          } senao se(sorteio > 1 e sorteio < 11){
            escreva("\nVocê decide explorar o local tranquilamente pra ver se encontra alguma coisa, mas você procura...procura...\n")
            escreva("procura...e nada, você só perdeu tempo, não foi dessa vez que você achou algo bom kkkkk(peço perdão pela risada).\n")
            seguir()
          } senao se(sorteio == 1){
            escreva("\nVocê vai tentar explorar a floresta, todo corajoso e confiante de que você sai dali com umas 3 poções de cura e uma espada que dá 100 de dano,\n")
            escreva("porém, hoje não é seu dia, imediatamente depois de começar a explorar, uma criatura que você não sabe se é uma águia esquisita ou o que,\n")
            escreva("voa em sua direção pra te atacar, você tenta correr, mas é inútil, ela te alcança e te acerta um razante lindo(tomou 3 de dano).\n")
            seguir()
            vidaDoPersonagem = vidaDoPersonagem - 3
          }

        pare

        caso "3":
          
        se(mEUlOCALaTUAL == 1){
          limpa()
          escreva("\nVocê já está na região 1, não tem pra onde voltar\n")
          liberdadeNaFloresta()
          
          
        } 

        pare

      }
    }
    
  }

  funcao salvarOcachorroDoResidentEvil4(){
    cadeia opcao
    limpa()
    status()
    escreva("\nCaminhando pela floresta, você começa a ouvir um barulho de choro, parece de algum animal, e seguindo esse som você\n")
    escreva("avista um cachorro (ou será que é um lobo?) preso em uma aramadilha de urso.\nVocê quer ajudar ele?\n\n1-Sim, vou ajudar\n2-Não, sou um monstro sem coração.\n")
    leia(opcao)
    
    enquanto(opcao != "1" e opcao != "2"){
      escreva("\nOpção 1 ou Opção 2?\n")
      leia(opcao)
    }
    limpa()
    status()
    se(opcao == "1"){
      escreva("\nVocê decide ajudar o cachorro(não esperava menos de você).\n")
      escreva("Com um pouco de dificuldade, tu consegue abrir a armadilha e libertar o cachorro, e imediatamente depois disso,\n")
      escreva("ele começa a correr e some no meio das árvores e da névoa.\n")

      salvaCachorro = 1
    } senao{
      escreva("\nVocê decide ser uma pessoa completamente sem alma e sem caráter e decide ignorar o pobre cachorro!")
      escreva("\nEle continua ali chorando de dor, e você simplesmente vai ignora-lo(tomara que você caia em uma armadilha de urso!).\n")
    }
    seguir()

  }

  funcao voceFoiBondosoComOcachorro(){
    limpa()
    status()

    se(salvaCachorro == 1){
      escreva("\nCaminhando depois do descanso, você se depara com uma armadilha de urso, mas você desvia tranquilamente.\n")
      escreva("(Um herói que salva o cachorro da armadilha não merece sofrer).\n")

    
    } senao{
      escreva("\nDepois desse descanso, você volta a caminhar pela floresta quando SENTE UMA DOR NA PERNA...você olha pra ela e\n")
      escreva("percebe que pisou em uma armadilha de urso, com dificuldades, você se livra da armadilha, mas sua perna ficou machucada\n")
      escreva("(talvez tenha sido o Karma, afinal você não salvou o cachorro antes NÉ?).")
      escreva("\nDano recebido: 3\n")
      vidaDoPersonagem = vidaDoPersonagem - 3
    }
    seguir()
  }

  funcao liberdadeNaFlorestaPARTE2(){
    cadeia opcaoDaLiberdade
    inteiro sorteio = 0

    enquanto(opcaoDaLiberdade != "1" e opcaoDaLiberdade != "2" e opcaoDaLiberdade != "3"){
      status()
      escreva("\nO que deseja fazer agora ",nomeDoPersonagem," ?\n\n1-Seguir em frente\n2-Explorar o local\n3-Voltar região\n")
      leia(opcaoDaLiberdade)
      escolha(opcaoDaLiberdade){

        caso "1":

        escreva("Ok então, bora seguir.")
        u.aguarde(1000)
        limpa()

        
          
        pare

        caso "2":
          inteiro opcao
          sorteio = 0
          sorteio = u.sorteia(sorteDoPersonagem,20)
          
          escreva("\nVocê resolveu explorar o local, mas para conseguir algo bom, precisa ter sorte no dado d20, e você tirou...",u.aguarde(1000),sorteio," no dado")
          se(sorteio > 15){
            facao()
          } senao se(sorteio > 9 e sorteio < 16){
            cadeia opcao
            escreva("\nVocê resolveu fuçar pra ver se achava alguma coisa boa, e achou!\n")
            escreva("Atrás de uma árvore, havia um baú, você abre ele e vê um trapo velho junto de um bilhete.\n")
            escreva("Você pega o bilhete pra ler, e ele diz: \"Esse monte de trapos aqui é um peitoral, era usado pelo cara que mais sofria bullyng\"\n")
            escreva("Você quer pegar esse trapo...digo, esse peitoral?\n1-Sim\n2-Não, não quero esse trapo\n")
            leia(opcao)
            escolheESSAouESSA(opcao)
            se(opcao == "1"){
              escreva("\nAí sim, é um peitoral podre, mas já é uma ajudinha(concede 2 de defesa)\n")
              peitoral[0] = 1
              peitoral[1] = 2
              defesaDoPersonagem = defesaDoPersonagem + peitoral[1]
            } senao se(opcao == "2"){
              escreva("\nVAI SE FERRAR SEU PRECONCEITUOSO! VOCÊ NÃO QUER POIS AQUELE PEITORAL PARECE MINHA CUECA VELHA?...sem comentários.\n")
            }
            
          } senao se(sorteio > 0 e sorteio < 10){
            
            escreva("\nVocê resolve explorar, procura atrás de um arbusto...e nada, procura atrás de uma árvore...e nada.\n")
            escreva("Sobe em cima de uma árvore pra procurar...e nada, procura dentro da sua cueca...E NADA, deu azar amigo!\n")
          }

        pare

        caso "3":
          
        se(mEUlOCALaTUAL == 1){
          limpa()
          status()
          escreva("\nVocê já está na região 1, não tem pra onde voltar\n")
          liberdade()
          
          
        } 
        pare

      }
    }
    seguir()
  }

  funcao batalhaContraElGigante(){
    
    cadeia opcaoDePreparado

    status()

    escreva("\nSeguindo seu rumo pela floresta, tudo parece tranquilo, mas no fundo você sabe que as coisas vão piorar.\n")
    escreva("E pioram mesmo, você vê uma sombra gigante atrás de você, e quando tu se vira para ver o que é, um Gigante está pronto pra te esmagar com o pé\n")
    escreva("Você consegue por pouco esquivar, e agora aquela criatura enorme está na sua frente, a batalha vai começar!\n")

    seguir()


    inteiro contador = 0
    enquanto(vidaDoPersonagem > 0 e vIdaDosInimigos[1] > 0){
      aTaqueDosInimigos[1] = aTaqueDosInimigos[1] + 1
      

      limpa()

      
      contador++
      escreva("Rodada ",contador)
      statusDuranteBatalhaContraGigante()

      se(contador == 3 e salvaCachorro == 1){
        escreva("\nVocê está lá, pronto pra atacar o Gigante, quando ouve uns latidos...você olha e É O CACHORRO QUE VOCÊ AJUDOU ANTES!\n")
        escreva("Os latidos distraem o Gigante e você poderá atacar duas vezes nesse turno(valeu a pena ser bondoso).")
        escreva("\nVocê aproveita pra ataca-lo de uma vez!\n")

        sorteio = u.sorteia(1,20) + ataqueDoPersonagem
        vIdaDosInimigos[1] = vIdaDosInimigos[1] - sorteio

        escreva("\nSeu ataque + o dado deu: ", sorteio,"\n")
        escreva("Dano dado: ", sorteio,"\n")
        sorteio = 0
        escreva("\nAinda é ")
        
      }

      se(contador == 4){
        escreva("\nO ",inimigosDaCampanhaNormal[1]," se irritou, pegou e arrancou uma árvore da floresta, agora ele vai usar ela pra te atacar\n\n")
        se(defesaDoPersonagem < 30){
        aTaqueDosInimigos[1] = aTaqueDosInimigos[1] + 5
        } senao se(defesaDoPersonagem > 30){
          aTaqueDosInimigos[1] = aTaqueDosInimigos[1] + 10
        }
      }

      opcaoNaBatalha()

      u.aguarde(1000)
      sorteio = 0
      
      escreva("\nVez de ",nomeDoPersonagem, "\n")
      
      u.aguarde(1200)

      sorteio = u.sorteia(1,20) + ataqueDoPersonagem
      se(sorteio - dEfesaDosInimigos[1] > 0){
        vIdaDosInimigos[1] = vIdaDosInimigos[1] - (sorteio - dEfesaDosInimigos[1])

        escreva("Seu ataque + o dado deu: ", sorteio,"\n")
        escreva("Dano dado: ", sorteio  - dEfesaDosInimigos[1],"\n")
      } senao{
        escreva("Seu ataque + o dado deu: ", sorteio,"\n")
        escreva("Seu dano não superou a defesa do ",inimigosDaCampanhaNormal[1] ,"\n")
      }
      se(vIdaDosInimigos[1] <= 0){
        vIdaDosInimigos[1] = 0
        pare
      } 


      u.aguarde(2000)

      

      sorteio = 0
      escreva("\nVez de ", inimigosDaCampanhaNormal[1])

      u.aguarde(1200)

      sorteio = u.sorteia(1,20) + aTaqueDosInimigos[1]
      
      se(sorteio - defesaDoPersonagem > 0){
        vidaDoPersonagem = vidaDoPersonagem - (sorteio - defesaDoPersonagem)

        escreva("\nO ataque + o dado do ",inimigosDaCampanhaNormal[1],": ", sorteio,"\n")
        escreva("Dano dado: ", sorteio  - defesaDoPersonagem,"\n")
        se(vidaDoPersonagem < 0){
          vidaDoPersonagem = 0
        }
        
      } senao{
        escreva("\nO ataque + o dado do ",inimigosDaCampanhaNormal[1],": ", sorteio,"\n")
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
      escreva("\nPARABÉNS, você conseguiu derrotar o ", inimigosDaCampanhaNormal[1],"\n")
      escreva("\nXP obtido:",xPDosInimigos[1],"\n")

      subirDeNivelContraGigante()
      
    
      seguir()
      limpa()
      status()
      
      } 

  }

  funcao subirDeNivelContraGigante() {
      
      xpDoPersonagem = xpDoPersonagem + xPDosInimigos[1]
      enquanto(xpDoPersonagem > 99){
        escreva("\nPARABÉNS, subiu do nível ",nivel," para o nível ",nivel + 1,"!")
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

  funcao statusDuranteBatalhaContraGigante(){
    
    escreva("\nUsuário:",nomeDoPersonagem,"\t│\t",vidaDoPersonagem,"/",auxVidaDoPersonagem,"\n")
    escreva("Inimigo:",inimigosDaCampanhaNormal[1],"\t│\t",vIdaDosInimigos[1],"/",aUXVIDADOSINIMIGOS[1],"\n\n")
  }



   funcao batalhaContraDrSalvador(){
    
    cadeia opcaoDePreparado

    limpa()
    status()
    escreva("\nPor algum motivo, você decide continuar na sua volta pra floresta(sentiu tanta saudade assim?),\n")
    escreva("e andando, você começa a sentir o clima pesar ainda mais, uma chuva sinistra começa a cair, a Névoa característica da floresta\n")
    escreva("intensifica ainda mais, mas mesmo assim, você consegue ver uma silhueta no meio daquela neblina toda, que vai aos poucos ficando mais clara,\n")
    escreva("como se estivesse chegando mais e mais perto, até que finalmente você consegue ver.")
    
    se(encontrouOcadaverComAsBotas == 1 e botas[0] == 1 e botas[1] == 2){
      aTaqueDosInimigos[2] = aTaqueDosInimigos[2] + 3
      escreva("\nAgora, fica claro que é aquele corpo que você tinha encontrado antes, com o saco de pão na cabeça e sem as botas que você tinha pego dele.\n")
      escreva("Ao olhar pras mãos dele, você repara que ele está segurando uma motosserra, e nesse momento ele a liga, pronto pra vir te atacar.\nEle vem com muita raiva, provavelmente porquê você roubo as botas dele.\nA batalha vai começar!\n")
    } senao se(encontrouOcadaverComAsBotas == 1 e botas[0] == 0){
      escreva("\nAgora, fica claro que é aquele corpo que você tinha encontrado antes, com o saco de pão na cabeça e com as botas que você não quis pegar.\n")
      escreva("Ao olhar pras mãos dele, você repara que ele está segurando uma motosserra, e nesse momento ele a liga, pronto pra vir te atacar.\nA batalha vai começar!\n")
    } senao se(encontrouOcadaverComAsBotas == 0){
      escreva("\nEle é um homem com um saco de pão na cabeça, uma camisa com duas alças, mas o que chama a sua atenção é que ele está segurando uma motosserra.\n")
      escreva("Neste momento, ele liga a motosserra e começa a vir em sua direção.\nA batalha vai começar!\n")
    }

    escreva("\nEstá preparado? Sim? Não?\n")
    leia(opcaoDePreparado)
    
    enquanto(opcaoDePreparado != "Sim"){
      escreva("\nÉ Sim ou Sim, não escreva outra coisa e muito menos tente fugir agora:\n")
      leia(opcaoDePreparado)
    }
    escreva("Isso mesmo, boa sorte(você vai precisar)\n")
    vidaDoPersonagem = vidaDoPersonagem - 1
      

    inteiro contador = 0
    enquanto(vidaDoPersonagem > 0 e vIdaDosInimigos[2] > 0){
      

      limpa()

      
      contador++
      escreva("Rodada ",contador)
      statusDuranteBatalhaContraDrSalvador() 

      opcaoNaBatalha()

      u.aguarde(1000)
      sorteio = 0
      escreva("\nVez de ",nomeDoPersonagem, "\n")
      
      u.aguarde(1200)

      sorteio = u.sorteia(1,20) + ataqueDoPersonagem
      se(sorteio - dEfesaDosInimigos[2] > 0){
        vIdaDosInimigos[2] = vIdaDosInimigos[2] - (sorteio - dEfesaDosInimigos[2])

        escreva("Seu ataque + o dado deu: ", sorteio,"\n")
        escreva("Dano dado: ", sorteio  - dEfesaDosInimigos[2],"\n")
      } senao{
        escreva("Seu ataque + o dado deu: ", sorteio,"\n")
        escreva("Seu dano não superou a defesa do ",inimigosDaCampanhaNormal[2] ,"\n")
      }
      se(vIdaDosInimigos[2] <= 0){
        vIdaDosInimigos[2] = 0
        pare
      } 


      u.aguarde(2000)

      sorteio = 0
      escreva("\nVez de ", inimigosDaCampanhaNormal[2])

      u.aguarde(1200)

      sorteio = u.sorteia(1,20) + aTaqueDosInimigos[2]
      
      se(sorteio - defesaDoPersonagem > 0){
        vidaDoPersonagem = vidaDoPersonagem - (sorteio - defesaDoPersonagem)

        escreva("\nO ataque + o dado do ",inimigosDaCampanhaNormal[2],": ", sorteio,"\n")
        escreva("O Dr.Salvador te acerta com a motosserra, causando ", sorteio  - defesaDoPersonagem," de dano\n")
        se(vidaDoPersonagem < 0){
          vidaDoPersonagem = 0
        }
        
      } senao{
        escreva("\nO ataque + o dado do ",inimigosDaCampanhaNormal[2],": ", sorteio,"\n")
        escreva("Você consegue desviar do ataque dele!\n")
        
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
      escreva("\nPARABÉNS, você conseguiu derrotar o ", inimigosDaCampanhaNormal[2],"!\n")
      escreva("\nXP obtido:",xPDosInimigos[2],"\n")

      subirDeNivelContraDrSalvador() 
      
    
      seguir()
      limpa()
      status()

      descansar()
      
      } 

  }

  funcao subirDeNivelContraDrSalvador() {
      
      xpDoPersonagem = xpDoPersonagem + xPDosInimigos[2]
      enquanto(xpDoPersonagem > 99){
        escreva("\nPARABÉNS, subiu do nível ",nivel," para o nível ",nivel + 1,"!")
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

  funcao statusDuranteBatalhaContraDrSalvador(){
    
    escreva("\nUsuário:",nomeDoPersonagem,"\t│\t",vidaDoPersonagem,"/",auxVidaDoPersonagem,"\n")
    escreva("Inimigo:",inimigosDaCampanhaNormal[2],"\t│\t",vIdaDosInimigos[2],"/",aUXVIDADOSINIMIGOS[2],"\n\n")
  }

  funcao batalhaContraMegaDrSalvador(){
    vIdaDosInimigos[2] = aUXVIDADOSINIMIGOS[2] + 20
    aUXVIDADOSINIMIGOS[2] = 80
    dEfesaDosInimigos[2] = dEfesaDosInimigos[2] + 10
    aTaqueDosInimigos[2] = aTaqueDosInimigos [2] + 15
    xPDosInimigos[2] = 200
    inimigosDaCampanhaNormal[2] = "Mega Dr.Salvador"

    cadeia opcaoDePreparado

    limpa()
    status()
    escreva("\nDe novo? de novo você resolveu voltar? espero que esteja bem forte a esse ponto\n")
    escreva("Você aproveita que conseguiu derrotar o Dr.Salvador pra ver se tem algum item interessante na floresta, mas nada é fácil demais nessa vida.\n")
    escreva("O Corpo do Dr.Salvador não está mais no local que você tinha derrotado ele, e nesse momento...VOCÊ ESCUTA UM BARULHO MUITO ALTO!\n")
    escreva("Você se vira pra olhar, e está lá...o Dr.Salvador, mais alto, com as roupas rasgadas, sangue por todo lado e...uma MOTOSSERA DUPLA\n")
    escreva("Ele está implacável, com um ódio puro no olhar, e então ele parte pra cima de você.\n")
    
    escreva("\nEstá preparado? Sim? Não?\n")
    leia(opcaoDePreparado)
    
    enquanto(opcaoDePreparado != "Sim"){
      escreva("\nÉ Sim ou Sim, não escreva outra coisa e muito menos tente fugir agora:\n")
      leia(opcaoDePreparado)
    }
    escreva("Isso mesmo, boa sorte(você vai precisar)\n")
    vidaDoPersonagem = vidaDoPersonagem - 1
      

    inteiro contador = 0
    enquanto(vidaDoPersonagem > 0 e vIdaDosInimigos[2] > 0){
      

      limpa()

      
      contador++
      escreva("Rodada ",contador)
      statusDuranteBatalhaContraDrSalvador() 

      opcaoNaBatalha()

      u.aguarde(1000)
      sorteio = 0
      escreva("\nVez de ",nomeDoPersonagem, "\n")
      
      u.aguarde(1200)

      sorteio = u.sorteia(1,20) + ataqueDoPersonagem
      se(sorteio - dEfesaDosInimigos[2] > 0){
        vIdaDosInimigos[2] = vIdaDosInimigos[2] - (sorteio - dEfesaDosInimigos[2])

        escreva("Seu ataque + o dado deu: ", sorteio,"\n")
        escreva("Dano dado: ", sorteio  - dEfesaDosInimigos[2],"\n")
      } senao{
        escreva("Seu ataque + o dado deu: ", sorteio,"\n")
        escreva("Seu dano não foi suficiente pra machucar o ",inimigosDaCampanhaNormal[2] ,"\n")
      }
      se(vIdaDosInimigos[2] <= 0){
        vIdaDosInimigos[2] = 0
        pare
      } 


      u.aguarde(2000)

      sorteio = 0
      escreva("\nVez de ", inimigosDaCampanhaNormal[2])

      u.aguarde(1200)

      sorteio = u.sorteia(1,20) + aTaqueDosInimigos[2]
      
      se(sorteio - defesaDoPersonagem > 0){
        vidaDoPersonagem = vidaDoPersonagem - (sorteio - defesaDoPersonagem)

        escreva("\nO ataque + o dado do ",inimigosDaCampanhaNormal[2],": ", sorteio,"\n")
        escreva("O Mega Dr.Salvador te acerta com a motosserra, causando ", sorteio  - defesaDoPersonagem," de dano\n")
        se(vidaDoPersonagem < 0){
          vidaDoPersonagem = 0
        }
        
      } senao{
        escreva("\nO ataque + o dado do ",inimigosDaCampanhaNormal[2],": ", sorteio,"\n")
        escreva("Você consegue desviar da Motossera dele!\n")
        
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
      escreva("\nPARABÉNS, você conseguiu derrotar o ", inimigosDaCampanhaNormal[2],"\n")
      escreva("\nXP obtido:",xPDosInimigos[2],"\n")

      subirDeNivelContraDrSalvador() 
      
    
      seguir()
      limpa()
      status()
      descansar()
      
      } 

  }

  funcao subirDeNivelContraMegaDrSalvador() {
      
      xpDoPersonagem = xpDoPersonagem + xPDosInimigos[2]
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

  funcao statusDuranteBatalhaContraMegaDrSalvador(){
    
    escreva("\nUsuário:",nomeDoPersonagem,"\t│\t",vidaDoPersonagem,"/",auxVidaDoPersonagem,"\n")
    escreva("Inimigo:",inimigosDaCampanhaNormal[2],"\t│\t",vIdaDosInimigos[2],"/",aUXVIDADOSINIMIGOS[2],"\n\n")
  }

  funcao casoVoltePraFloresta(){
    cadeia opcao

    escreva("\nVocê volta pra floresta, sentindo aquele cheiro característico de um lugar sombrio.\nTem Certeza que não quer voltar pra Vila Abandonada?\n")
    escreva("\n1-Não, vou explorar a floresta\n2-Mudei de ideia, vou voltar pra Vila\n")
    leia(opcao)
    escolheESSAouESSA(opcao)
    se(opcao == "1"){
      se(vIdaDosInimigos[2] == 0 e inimigosDaCampanhaNormal[2] == "Dr.Salvador"){
        batalhaContraMegaDrSalvador()
        escreva("\nNão tem mais nada pra explorar aqui, e você decide voltar pra Vila Abandonada.\n")
        seguir()
        vilaAbandonada()

      } senao se(vIdaDosInimigos[2] != 0 e inimigosDaCampanhaNormal[2] == "Dr.Salvador"){
        batalhaContraDrSalvador()
          se(vidaDoPersonagem > 0){
          escreva("\nNão tem mais nada pra explorar aqui, e você decide voltar pra Vila Abandonada.\n")
          seguir()
          vilaAbandonada()
        }
      }
      senao{
        escreva("\nNão tem nada pra você fazer aqui, vai voltar pra Vila Abandonada\n")
        seguir()
        vilaAbandonada()
      
      }
    } senao{
      escreva("\nSabia decisão, vamos voltar pra Vila Abandonada\n")
      seguir()
      vilaAbandonada()
    }
  }





  funcao vilaAbandonada(){
    mEUlOCALaTUAL = 2
    localizacao = 1
    limpa()
    se(vidaDoPersonagem > 0){

      desenhoDaVilaAbandonada()
      escreva("\nVILA ABANDONADA")
      se(passouPelaIntroducaoDaVilaAbandonada == 0){
        passouPelaIntroducaoDaVilaAbandonada = 1
        escreva("\nApós a tensa Floresta das Névoas, chega a região 2: Vila Abandonada, um local que era muito alegre, tinham várias crianças que brincavam ali,\nera um lugar que tinha paz, mas tudo mudou depois que o Devastador amaldiçoou aquele lugar!\nChegando ali, você de cara sente um certo estranhamento,\n")
        escreva("afinal, ela é bem familiar pra você. Você percebe que o local está bem destruído e com várias manchas de sangue espalhado por ele,\n")
      }senao{

      }
      seguir()
      limpa()

      liberdadeNaVilaAbandonada()

      se(passouPelaBatalhaDoChavesChiquinhaQuico == 0){
        passouPelaBatalhaDoChavesChiquinhaQuico = 1
        status()
        batalhaContraChaves()
      
        batalhaContraChiquinha()
        
        batalhaContraQuico()
        descansar()

      } 

      liberdadeNaVilaAbandonadaPARTE2()






    } senao{
      inicio()
    }
  }

  funcao liberdadeNaVilaAbandonada(){
    cadeia opcaoDaLiberdade
    inteiro sorteio = 0

    se(passouPelaLiberdadeNaVilaAbandonada == 0){
      passouPelaLiberdadeNaVilaAbandonada = 1
      enquanto(opcaoDaLiberdade != "1" e opcaoDaLiberdade != "2" e opcaoDaLiberdade != "3"){
        status()
        escreva("\nO que deseja fazer agora ",nomeDoPersonagem," ?\n\n1-Seguir em frente\n2-Explorar o local\n3-Voltar região\n")
        leia(opcaoDaLiberdade)
        escolha(opcaoDaLiberdade){

          caso "1":

          escreva("Ok então, bora seguir.")
          u.aguarde(1000)
          limpa()

          
            
          pare

          caso "2":
            inteiro opcao
            sorteio = 0
            sorteio = u.sorteia(sorteDoPersonagem,20)
            escreva("\nVocê resolveu explorar o local, mas para conseguir algo bom, precisa ter sorte no dado d20, e você tirou...",u.aguarde(1000),sorteio," no dado\n")
            
            se(sorteio > 14){
              cadeia oPcaoDesseSe
              escreva("\nA sorte está ao seu lado! recém chegou na vila e já se deu bem!\nVocê começa explorar, fuçando em cada canto quando da de cara com uma calça pendurada em um varal(como você não tinha visto ela?)\n")
              escreva("A calça é branca com bolinhas vermelhas(que bela porcaria!)\nVocê quer pega-lá?(concede uma boa defesa extra).\n1-Pego\n2-Não pego\n")
              leia(oPcaoDesseSe)
              escolheESSAouESSA(oPcaoDesseSe)
              se(oPcaoDesseSe == "1"){
                escreva("Boa escolha!(mais 6 de defesa)\n")
                calca[0] = 1
                calca[1] = 6
                defesaDoPersonagem = defesaDoPersonagem + calca[1]
              } senao{
                escreva("Ok né, o jogo é seu e não meu.\n")
              }
              
              
            } senao se(sorteio > 7 e sorteio < 15){

              
                cadeia oPcaoDesseSe
                escreva("\nVocê começa explorar, fuçando em cada canto quando da de cara com uma calça pendurada em um varal(como você não tinha visto ela?)\n")
                escreva("A calça é branca com bolinhas vermelhas(que bela porcaria!)\nVocê quer pega-lá?(concede uma defesa extra).\n1-Pego\n2-Não pego\n")
                leia(oPcaoDesseSe)
                escolheESSAouESSA(oPcaoDesseSe)
                se(oPcaoDesseSe == "1"){
                  escreva("Boa escolha!(mais 3 de defesa)\n")
                  calca[0] = 1
                  calca[1] = 3
                  defesaDoPersonagem = defesaDoPersonagem + calca[1]
                } senao{
                  escreva("Ok né, o jogo é seu e não meu.\n")
                }
              
              } senao se(sorteio > 0 e sorteio < 8){
                cadeia opcaoDeXpOuVida
                escreva("\nVocê decide explorar a vila, procura dentro de um barril que tinha ali, procura em umas plantas, mas não acha nada!\n")
                escreva("...Sinceramente, fiquei com dó, vou te ajudar!\n\nQuer 20 de XP ou recuperar 5 de vida?\n1-20 de XP\n2-Recuperar 5 de vida\n")
                leia(opcaoDeXpOuVida)
                escolheESSAouESSA(opcaoDeXpOuVida)
                se(opcaoDeXpOuVida == "1"){
                  escreva("\nSeu desejo é uma ordem! o Pix de 20 de XP caiu na sua conta!\n")
                  xpDoPersonagem = xpDoPersonagem + 20

                } senao se(opcaoDeXpOuVida == "2"){
                  escrev("\nSeu desejo é uma ordem! o Pix de 5 de HP caiu na sua conta!\n")
                  se((vidaDoPersonagem + 5) > auxVidaDoPersonagem){
                    vidaDoPersonagem = auxVidaDoPersonagem
                  } senao{
                    vidaDoPersonagem = vidaDoPersonagem + 5
                  }
                }
                
                
            } 

          pare

          caso "3":
            
          se(mEUlOCALaTUAL == 1){
            limpa()
            status()
            escreva("\nVocê já está na região 1, não tem pra onde voltar\n")
            liberdade()
            
            
          } senao{
            mEUlOCALaTUAL--
            se(mEUlOCALaTUAL == 1){
              desenhoDaFloresta()
              casoVoltePraFloresta()
              
            }
          }

          pare
        }
      }
    } senao{

    }
    seguir()
    limpa()
  }

  funcao batalhaContraChaves(){
    
    
    cadeia opcaoDePreparado

    escreva("\nCaminhando pela Vila(que parece cada vez mais familiar), você não acredita no que seus olhos estão vendo.\n")
    escreva("Simplesmente eles, 3 personagens que marcaram sua infância...Chaves, Chiquinha e Quico!\n")
    escreva("Você se questiona: \"C-Como?COMO?como isso é possível? eles são personagens de ficção científica, isso não faz sentido algum!\n")
    escreva("Os 3 reparam na sua presença, e começam a caminhar em sua direção, dizendo repetidas vezes \"matar,matar,matar\".\n")
    escreva("Você não consegue entender aquilo, você olha nos olhos deles e...pera, que olhos? eles não possuem olhos.\n")
    escreva("Não há tempo pra pensar naquilo, eles estão vindo, Chaves é o primeiro!\n")

    escreva("\nEstá preparado? Sim? Não?\n")
    leia(opcaoDePreparado)
    
    enquanto(opcaoDePreparado != "Sim"){
      escreva("\nÉ Sim ou Sim, não escreva outra coisa e muito menos tente fugir:\n")
      leia(opcaoDePreparado)
    }
    escreva("Isso mesmo, boa sorte(você vai precisar)\n")
    
      

    inteiro contador = 0
    enquanto(vidaDoPersonagem > 0 e vIdaDosInimigos[3] > 0){
      

      limpa()

      
      contador++
      escreva("Rodada ",contador)
      statusDuranteBatalhaContraChavesChiquinhaQuico()//criar um novo pra cada batalha

      opcaoNaBatalha()

      u.aguarde(1000)
      sorteio = 0
      escreva("\nVez de ",nomeDoPersonagem, "\n")
      
      u.aguarde(1200)

      sorteio = u.sorteia(1,20) + ataqueDoPersonagem
      se(sorteio - dEfesaDosInimigos[3] > 0){
        vIdaDosInimigos[3] = vIdaDosInimigos[3] - (sorteio - dEfesaDosInimigos[3])

        escreva("Seu ataque + o dado deu: ", sorteio,"\n")
        escreva("Dano dado: ", sorteio  - dEfesaDosInimigos[3],"\n")
      } senao{
        escreva("Seu ataque + o dado deu: ", sorteio,"\n")
        escreva("Seu dano não superou a defesa do ",inimigosDaCampanhaNormal[3] ,"\n")
      }
      se(vIdaDosInimigos[3] <= 0){
        vIdaDosInimigos[3] = 0
        pare
      } 


      u.aguarde(2000)

      sorteio = 0
      escreva("\nVez de ", inimigosDaCampanhaNormal[3])

      u.aguarde(1200)

      sorteio = u.sorteia(1,20) + aTaqueDosInimigos[3]
      
      se(sorteio - defesaDoPersonagem > 0){
        vidaDoPersonagem = vidaDoPersonagem - (sorteio - defesaDoPersonagem)

        escreva("\nO ataque + o dado do ",inimigosDaCampanhaNormal[3],": ", sorteio,"\n")
        escreva("Dano dado: ", sorteio  - defesaDoPersonagem,"\n")
        se(vidaDoPersonagem < 0){
          vidaDoPersonagem = 0
        }
        
      } senao{
        escreva("\nO ataque + o dado do ",inimigosDaCampanhaNormal[3],": ", sorteio,"\n")
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
      escreva("\nPARABÉNS, você conseguiu derrotar o primeiro, o ", inimigosDaCampanhaNormal[3],"\n")
      escreva("\nXP obtido:",xPDosInimigos[3],"\n")

      subirDeNivelContraChavesChiquinhaQuico() //aqui tem que criar função pra subir o nível e pegar o XP do inimigo certo
      
    
      seguir()
      limpa()
      status()
      
      } 

  }

 

  

  funcao batalhaContraChiquinha(){
    
    cadeia opcaoDePreparado

    escreva("\nSem dar tempo pra você descansar, Chiquinha parte pra cima de você!\n")
    inimigosDaCampanhaNormal[3] = "Chiquinha"
    vIdaDosInimigos[3] = aUXVIDADOSINIMIGOS[3]

    

    escreva("\nEstá preparado? Sim? Não?\n")
    leia(opcaoDePreparado)
    
    enquanto(opcaoDePreparado != "Sim"){
      escreva("\nÉ Sim ou Sim, não escreva outra coisa e muito menos tente fugir:\n")
      leia(opcaoDePreparado)
    }
    escreva("Isso mesmo, boa sorte(você vai precisar)\n")
    
      

    inteiro contador = 0
    enquanto(vidaDoPersonagem > 0 e vIdaDosInimigos[3] > 0){
      

      limpa()

      
      contador++
      escreva("Rodada ",contador)
      statusDuranteBatalhaContraChavesChiquinhaQuico()//criar um novo pra cada batalha

      opcaoNaBatalha()

      u.aguarde(1000)
      sorteio = 0
      escreva("\nVez de ",nomeDoPersonagem, "\n")
      
      u.aguarde(1200)

      sorteio = u.sorteia(1,20) + ataqueDoPersonagem
      se(sorteio - dEfesaDosInimigos[3] > 0){
        vIdaDosInimigos[3] = vIdaDosInimigos[3] - (sorteio - dEfesaDosInimigos[3])

        escreva("Seu ataque + o dado deu: ", sorteio,"\n")
        escreva("Dano dado: ", sorteio  - dEfesaDosInimigos[3],"\n")
      } senao{
        escreva("Seu ataque + o dado deu: ", sorteio,"\n")
        escreva("Seu dano não superou a defesa do ",inimigosDaCampanhaNormal[3] ,"\n")
      }
      se(vIdaDosInimigos[3] <= 0){
        vIdaDosInimigos[3] = 0
        pare
      } 


      u.aguarde(2000)

      sorteio = 0
      escreva("\nVez de ", inimigosDaCampanhaNormal[3])

      u.aguarde(1200)

      sorteio = u.sorteia(1,20) + aTaqueDosInimigos[3]
      
      se(sorteio - defesaDoPersonagem > 0){
        vidaDoPersonagem = vidaDoPersonagem - (sorteio - defesaDoPersonagem)

        escreva("\nO ataque + o dado do ",inimigosDaCampanhaNormal[3],": ", sorteio,"\n")
        escreva("Dano dado: ", sorteio  - defesaDoPersonagem,"\n")
        se(vidaDoPersonagem < 0){
          vidaDoPersonagem = 0
        }
        
      } senao{
        escreva("\nO ataque + o dado do ",inimigosDaCampanhaNormal[3],": ", sorteio,"\n")
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
      escreva("\nPARABÉNS, você conseguiu derrotar o ", inimigosDaCampanhaNormal[3],"\n")
      escreva("\nXP obtido:",xPDosInimigos[3],"\n")

      subirDeNivelContraChavesChiquinhaQuico() //aqui tem que criar função pra subir o nível e pegar o XP do inimigo certo
      
    
      seguir()
      limpa()
      status()
      
      } 

  }
  

  funcao batalhaContraQuico(){
    
    cadeia opcaoDePreparado
    
    escreva("\nAgora o último, aí vem o Quico!\n")
    inimigosDaCampanhaNormal[3] = "Quico"
    vIdaDosInimigos[3] = aUXVIDADOSINIMIGOS[3]
   

    escreva("\nEstá preparado? Sim? Não?\n")
    leia(opcaoDePreparado)
    
    enquanto(opcaoDePreparado != "Sim"){
      escreva("\nÉ Sim ou Sim, não escreva outra coisa e muito menos tente fugir:\n")
      leia(opcaoDePreparado)
    }
    escreva("Isso mesmo, boa sorte(você vai precisar)\n")
    
      

    inteiro contador = 0
    enquanto(vidaDoPersonagem > 0 e vIdaDosInimigos[3] > 0){
      

      limpa()

      
      contador++
      escreva("Rodada ",contador)
      statusDuranteBatalhaContraChavesChiquinhaQuico()//criar um novo pra cada batalha

      opcaoNaBatalha()

      u.aguarde(1000)
      sorteio = 0
      escreva("\nVez de ",nomeDoPersonagem, "\n")
      
      u.aguarde(1200)

      sorteio = u.sorteia(1,20) + ataqueDoPersonagem
      se(sorteio - dEfesaDosInimigos[3] > 0){
        vIdaDosInimigos[3] = vIdaDosInimigos[3] - (sorteio - dEfesaDosInimigos[3])

        escreva("Seu ataque + o dado deu: ", sorteio,"\n")
        escreva("Dano dado: ", sorteio  - dEfesaDosInimigos[3],"\n")
      } senao{
        escreva("Seu ataque + o dado deu: ", sorteio,"\n")
        escreva("Seu dano não superou a defesa do ",inimigosDaCampanhaNormal[3] ,"\n")
      }
      se(vIdaDosInimigos[3] <= 0){
        vIdaDosInimigos[3] = 0
        pare
      } 


      u.aguarde(2000)

      sorteio = 0
      escreva("\nVez de ", inimigosDaCampanhaNormal[3])

      u.aguarde(1200)

      sorteio = u.sorteia(1,20) + aTaqueDosInimigos[3]
      
      se(sorteio - defesaDoPersonagem > 0){
        vidaDoPersonagem = vidaDoPersonagem - (sorteio - defesaDoPersonagem)

        escreva("\nO ataque + o dado do ",inimigosDaCampanhaNormal[3],": ", sorteio,"\n")
        escreva("Dano dado: ", sorteio  - defesaDoPersonagem,"\n")
        se(vidaDoPersonagem < 0){
          vidaDoPersonagem = 0
        }
        
      } senao{
        escreva("\nO ataque + o dado do ",inimigosDaCampanhaNormal[3],": ", sorteio,"\n")
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
      escreva("\nPARABÉNS, você conseguiu derrotar o ", inimigosDaCampanhaNormal[3],"\n")
      escreva("\nXP obtido:",xPDosInimigos[3],"\n")

      subirDeNivelContraChavesChiquinhaQuico() //aqui tem que criar função pra subir o nível e pegar o XP do inimigo certo
      
    
      seguir()
      limpa()
      status()
      
      
      } 

  }

  

  funcao statusDuranteBatalhaContraChavesChiquinhaQuico(){
    
    escreva("\nUsuário:",nomeDoPersonagem,"\t│\t",vidaDoPersonagem,"/",auxVidaDoPersonagem,"\n")
    escreva("Inimigo:",inimigosDaCampanhaNormal[3],"\t│\t",vIdaDosInimigos[3],"/",aUXVIDADOSINIMIGOS[3],"\n\n")
  }
 

  funcao subirDeNivelContraChavesChiquinhaQuico() {
      
      xpDoPersonagem = xpDoPersonagem + xPDosInimigos[3]
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

  funcao liberdadeNaVilaAbandonadaPARTE2(){
    cadeia opcaoDaLiberdade
    inteiro sorteio = 0

    enquanto(opcaoDaLiberdade != "1" e opcaoDaLiberdade != "2" e opcaoDaLiberdade != "3"){
      status()
      escreva("\nA liberdade desta vez será diferente, você terá a opção de vasculhar o corpo do Chaves, do Quico ou da Chiquinha em vez de explorar o local.\nE é garantido que tu conseguirá um item.\nO que deseja fazer ",nomeDoPersonagem," ?\n\n1-Seguir em frente\n2-Vasculhar corpos\n3-Voltar região\n")
      
      leia(opcaoDaLiberdade)
      escolha(opcaoDaLiberdade){

        caso "1":

        escreva("Ok então, bora seguir.")
        u.aguarde(1000)
        limpa()

        
          
        pare

        caso "2":
          cadeia opcaoVasculhar

          escreva("\nShow de bola, qual corpo você quer vasculhar? (você ATÉ poderia vasculhar todo os corpos, mas eu não quero que você faça isso =D)")
          escreva("\n1-Vasculhar corpo do Chaves\n2-Vasculhar corpo da Chiquinha\n3-Vasculhar corpo do Quico\n")
          leia(opcaoVasculhar)

          enquanto(opcaoVasculhar != "1" e opcaoVasculhar != "2" e opcaoVasculhar != "3"){

            escreva(";———; digita certo!\n")
            leia(opcaoVasculhar)

          }
          limpa()
          status()
          
          se(opcaoVasculhar == "1"){
            inteiro defesaDoChapeuDoChaves = 7
            inteiro capaceteDaFuncao = 1
            inteiro peitoralDaFuncao = 0
            inteiro calcaDaFuncao = 0
            inteiro botasDaFuncao = 0


            escreva("\nVasculhando o corpo do Chaves, você encontra algumas coisas interessantes, mas o que realmente chama sua atenção é o chapéu dele!\nO chapéu está estranhamente intacto, mesmo depois dos seus golpes, e você se interessa por ele, afinal, servirá como um capacete.\n")
            casoEncontreArmadura(defesaDoChapeuDoChaves,capaceteDaFuncao,peitoralDaFuncao,calcaDaFuncao,botasDaFuncao)

          }

          se(opcaoVasculhar == "2"){
            inteiro defesaDasMeiasDoQuico = 8
            inteiro capaceteDaFuncao = 1
            inteiro peitoralDaFuncao = 0
            inteiro calcaDaFuncao = 0
            inteiro botasDaFuncao = 0

            escreva("\nVasculhando o corpo do Quico, você nem demora a perceber que as meias amarelas dele junto com as botas, sendo que o resto ta tudo destruído.\nCom certeza essas botas e a meia não são normais.\n")
            casoEncontreArmadura(defesaDasMeiasDoQuico,capaceteDaFuncao,peitoralDaFuncao,calcaDaFuncao,botasDaFuncao)

          }

          se(opcaoVasculhar == "3"){

            inteiro defesaDaRoupaDaChiquinha = 6
            inteiro capaceteDaFuncao = 1
            inteiro peitoralDaFuncao = 0
            inteiro calcaDaFuncao = 0
            inteiro botasDaFuncao = 0

            escreva("\nVasculhando o corpo da Chiquinha, você rapidamente percebe que a roupa da parte de cima dela estão intactas, o que muito estranho\nVocê conclui que esse \"Peitoral\" é bem resistente")
            casoEncontreArmadura(defesaDaRoupaDaChiquinha,capaceteDaFuncao,peitoralDaFuncao,calcaDaFuncao,botasDaFuncao)
      
          }

          

        pare

        caso "3":
          
        se(mEUlOCALaTUAL == 1){
          limpa()
          status()
          escreva("\nVocê já está na região 1, não tem pra onde voltar\n")
          liberdade()
          
          
        } senao{
          mEUlOCALaTUAL--
          se(mEUlOCALaTUAL == 1){
            desenhoDaFloresta()
            
            //Vou colocar um "se" para os números de cada região.
            //e depois vou criar uma função específica pra cada região, se ele voltar,
            //ele irá poder explorar e tals, mas sempre encontrará um inimigo
          }
        }

        pare

      }
    }
    seguir()
  }
  
  funcao batalhaContraSeuMadruga(){
    
    cadeia opcaoDePreparado

    limpa()
    status()

    escreva("\nVocê fica olhando para a vila e percebendo como ela ta destruída, sangue, destruição, parece que um furacão passou por ali(na verdade foi coisa bem pior)\n")
    escreva("E DO NADA, aparece ele, o vagabundo mais amado do mundo, que deve 14 meses de aluguel, o Seu Madruga!\n")
    escreva("Ele anda calmamente, com sangue saíndo dos olhos(na verdade ele nem tem olhos). Você terá que lutar com ele, mesmo contra sua vontade.\n")

    escreva("Está preparado? Sim? Não?\n")
    leia(opcaoDePreparado)
    
    enquanto(opcaoDePreparado != "Sim"){
      escreva("\nÉ Sim ou Sim, não escreva outra coisa e muito menos tente fugir:\n")
      leia(opcaoDePreparado)
    }
    escreva("Isso mesmo, boa sorte(você vai precisar)\n")
    
      

    inteiro contador = 0
    enquanto(vidaDoPersonagem > 0 e vIdaDosInimigos[4] > 0){

      limpa()

      contador++
      escreva("Rodada ",contador)
      statusDuranteBatalhaContraSeuMadruga()

      opcaoNaBatalha()

      u.aguarde(1000)
      sorteio = 0
      escreva("\nVez de ",nomeDoPersonagem, "\n")
      
      u.aguarde(1200)

      sorteio = u.sorteia(1,20) + ataqueDoPersonagem
      se(sorteio - dEfesaDosInimigos[4] > 0){
        vIdaDosInimigos[4] = vIdaDosInimigos[4] - (sorteio - dEfesaDosInimigos[4])

        escreva("Seu ataque + o dado deu: ", sorteio,"\n")
        escreva("Dano dado: ", sorteio  - dEfesaDosInimigos[4],"\n")
      } senao{
        escreva("Seu ataque + o dado deu: ", sorteio,"\n")
        escreva("Seu dano não superou a defesa do ",inimigosDaCampanhaNormal[4] ,"\n")
      }
      se(vIdaDosInimigos[4] <= 0){
        vIdaDosInimigos[4] = 0
        pare
      } 


      u.aguarde(2000)

      sorteio = 0
      escreva("\nVez de ", inimigosDaCampanhaNormal[4])

      u.aguarde(1200)

      sorteio = u.sorteia(1,20) + aTaqueDosInimigos[4]
      
      se(sorteio - defesaDoPersonagem > 0){
        vidaDoPersonagem = vidaDoPersonagem - (sorteio - defesaDoPersonagem)

        escreva("\nO ataque + o dado do ",inimigosDaCampanhaNormal[4],": ", sorteio,"\n")
        escreva("Dano dado: ", sorteio  - defesaDoPersonagem,"\n")
        se(vidaDoPersonagem < 0){
          vidaDoPersonagem = 0
        }
        
      } senao{
        escreva("\nO ataque + o dado do ",inimigosDaCampanhaNormal[4],": ", sorteio,"\n")
        escreva("Seu dano não superou a defesa do ", nomeDoPersonagem,"\n")
        
      }
      u.aguarde(2000)
       
      se(vidaDoPersonagem == 0){
        escreva(nomeDoPersonagem," MORREU...\n")
        taMorto()
        u.aguarde(3000)
      
      
        

        
      }  
      
      u.aguarde(1000)
      

     }
    
      se(vidaDoPersonagem > 0){
      u.aguarde(1000)
      limpa()
      status()
      escreva("\nPARABÉNS, você conseguiu derrotar o ", inimigosDaCampanhaNormal[4],"\n")
      escreva("\nXP obtido:",xPDosInimigos[4],"\n")

      subirDeNivelContraSeuMadruga() //aqui tem que criar função pra subir o nível e pegar o XP do inimigo certo
      
    
      seguir()
      limpa()
      status()
      
      } 

  }

  

  funcao statusDuranteBatalhaContraSeuMadruga(){
    
    escreva("\nUsuário:",nomeDoPersonagem,"\t│\t",vidaDoPersonagem,"/",auxVidaDoPersonagem,"\n")
    escreva("Inimigo:",inimigosDaCampanhaNormal[4],"\t│\t",vIdaDosInimigos[4],"/",aUXVIDADOSINIMIGOS[4],"\n\n")
  }

  funcao subirDeNivelContraSeuMadruga() {
      
      xpDoPersonagem = xpDoPersonagem + xPDosInimigos[4]
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

  





  funcao casoEncontrePocao(){
    inteiro opcao
    se(pOSSUIpOCAO == 1 e vidaDoPersonagem == auxVidaDoPersonagem){
      escreva("\nVocê já possui uma poção e não poderá carregar mais uma, e também já ta com a vida máxima, ou seja...sem poção extra")
    } senao se(pOSSUIpOCAO == 1 e vidaDoPersonagem < auxVidaDoPersonagem){
      
      escreva("\nVocê já possui uma poção e não poderá carregar mais uma, mas não está com a vida máxima, quer usar a poção que encontrou agora?Sim?Não?\n")
      leia(opcao)
      enquanto(opcao != "Sim" e opcao != "Não"){
        escreva("Sim OU Não?")
        leia(opcao)
      }
      se(opcao == "Sim"){
        pocao()
        pOSSUIpOCAO = 1

      } senao{
        escreva("\nOk então\n")

      }
      
  
    } 
    senao{
      escreva("\nOk então, poção guardada!\n")
      pOSSUIpOCAO = 1
    }

  }

  funcao pocao (){
    se(pOSSUIpOCAO == 1){
      se((vidaDoPersonagem + 15) > auxVidaDoPersonagem){
      vidaDoPersonagem = auxVidaDoPersonagem
      } senao{
      vidaDoPersonagem = vidaDoPersonagem + 15
      }
      escreva("Poção usada\n")
      pOSSUIpOCAO--
      escreva("Vida atual: ", vidaDoPersonagem)
    } senao se(pOSSUIpOCAO == 0){
      escreva("\nVocê não tem poção ;-;\n")
    } 
  }

  funcao casoEncontreArmadura(inteiro defesaDaArmadura, inteiro capaceteDaFuncao, inteiro peitoralDaFuncao, inteiro calcaDaFuncao, inteiro botasDaFuncao){
    cadeia opcaoSeQuerOuNaoQuerArmaduraNova

    se(capaceteDaFuncao == 1 e capacete[0] == 1){
      escreva("\nVocê já possui um capacete, deseja trocar por esse que você encontrou agora?\nDefesa do Capacete atual: ",capacete[1],"\nCapacete Novo: ", defesaDaArmadura)
      escreva("\n1-Trocar pelo capacete novo\n2-Ficar com o velho\n")
      leia(opcaoSeQuerOuNaoQuerArmaduraNova)
      escolheESSAouESSA(opcaoSeQuerOuNaoQuerArmaduraNova)
      se(opcaoSeQuerOuNaoQuerArmaduraNova == "1"){
        escreva("\nTroca bem sucedida!\n")
        defesaDoPersonagem = defesaDoPersonagem - capacete[1]
        capacete[0] = 1
        capacete[1] = defesaDaArmadura
        defesaDoPersonagem = defesaDoPersonagem + capacete[1]
      } senao{
        escreva("\nOk, troca não feita.\n")
      }

    } senao se(capaceteDaFuncao == 1 e capacete[0] == 0){
      escreva("\nQuer pegar esse capacete?(você não possui um no momento)\n1-Sim\n2-Não\n")
      leia(opcaoSeQuerOuNaoQuerArmaduraNova)
      escolheESSAouESSA(opcaoSeQuerOuNaoQuerArmaduraNova)
      se(opcaoSeQuerOuNaoQuerArmaduraNova == "1"){
        escreva("Capacete adquirido!\n")
        defesaDoPersonagem = defesaDoPersonagem - capacete[1]
        capacete[0] = 1
        capacete[1] = defesaDaArmadura
        defesaDoPersonagem = defesaDoPersonagem + capacete[1]

      } senao{
        escreva("Capacete negado!\n")
      }
    }

    se(peitoralDaFuncao == 1 e peitoral[0] == 1){
      escreva("\nVocê já possui um Peitoral, deseja trocar por esse que você encontrou agora?\nDefesa do Peitoral atual: +",capacete[1],"\nPeitoral Novo: +", defesaDaArmadura)
      escreva("\n1-Trocar pelo Peitoral novo\n2-Ficar com o velho\n")
      leia(opcaoSeQuerOuNaoQuerArmaduraNova)
      escolheESSAouESSA(opcaoSeQuerOuNaoQuerArmaduraNova)
      se(opcaoSeQuerOuNaoQuerArmaduraNova == "1"){
        escreva("\nTroca bem sucedida!\n")
        defesaDoPersonagem = defesaDoPersonagem - peitoral[1]
        peitoral[0] = 1
        peitoral[1] = defesaDaArmadura
        defesaDoPersonagem = defesaDoPersonagem + peitoral[1]
      } senao{
        escreva("\nOk, troca não feita.\n")
      }
    } senao se(peitoralDaFuncao == 1 e peitoral[0] == 0){
      escreva("\nQuer pegar esse Peitoral?(você não possui um no momento)\n1-Sim\n2-Não\n")
      leia(opcaoSeQuerOuNaoQuerArmaduraNova)
      escolheESSAouESSA(opcaoSeQuerOuNaoQuerArmaduraNova)
      se(opcaoSeQuerOuNaoQuerArmaduraNova == "1"){
        escreva("Peitoral adquirido!\n")
        defesaDoPersonagem = defesaDoPersonagem - peitoral[1]
        peitoral[0] = 1
        peitoral[1] = defesaDaArmadura
        defesaDoPersonagem = defesaDoPersonagem + peitoral[1]
      } senao{
        escreva("Peitoral negado!\n")
      }
    }

    se(calcaDaFuncao == 1 e calca[0] == 1){
      escreva("\nVocê já possui uma Calça, deseja trocar por essa que você encontrou agora?\nDefesa da Calça atual: +",capacete[1],"\nCalça Nova: +", defesaDaArmadura)
      escreva("\n1-Trocar pela Calça nova\n2-Ficar com a velha\n")
      leia(opcaoSeQuerOuNaoQuerArmaduraNova)
      escolheESSAouESSA(opcaoSeQuerOuNaoQuerArmaduraNova)
      se(opcaoSeQuerOuNaoQuerArmaduraNova == "1"){
        escreva("\nTroca bem sucedida!\n")
        defesaDoPersonagem = defesaDoPersonagem - calca[1]
        calca[0] = 1
        calca[1] = defesaDaArmadura
        defesaDoPersonagem = defesaDoPersonagem + calca[1]
      } senao{
        escreva("\nOk, troca não feita.\n")
      }
    } senao se(calcaDaFuncao == 1 e calca[0] == 0){
      escreva("\nQuer pegar essa Calça?(você não possui uma no momento)\n1-Sim\n2-Não\n")
      leia(opcaoSeQuerOuNaoQuerArmaduraNova)
      escolheESSAouESSA(opcaoSeQuerOuNaoQuerArmaduraNova)
      se(opcaoSeQuerOuNaoQuerArmaduraNova == "1"){
        escreva("Calça adquirida!\n")
        defesaDoPersonagem = defesaDoPersonagem - calca[1]
        calca[0] = 1
        calca[1] = defesaDaArmadura
        defesaDoPersonagem = defesaDoPersonagem + calca[1]
      } senao{
        escreva("Calça negada!\n")
      }
    }

    se(botasDaFuncao == 1 e botas[0] == 1){
      escreva("\nVocê já possui Botas, deseja trocar por essas que você encontrou agora?\nDefesa das Botas atual: +",capacete[1],"\nBotas Nova: +", defesaDaArmadura)
      escreva("\n1-Trocar pelas Botas novas\n2-Ficar com o velho\n")
      leia(opcaoSeQuerOuNaoQuerArmaduraNova)
      escolheESSAouESSA(opcaoSeQuerOuNaoQuerArmaduraNova)
      se(opcaoSeQuerOuNaoQuerArmaduraNova == "1"){
        escreva("\nTroca bem sucedida!\n")
        defesaDoPersonagem = defesaDoPersonagem - botas[1]
        botas[0] = 1
        botas[1] = defesaDaArmadura
        defesaDoPersonagem = defesaDoPersonagem + botas[1]
      } senao{
        escreva("\nOk, troca não feita.\n")
      }
    } senao se(botasDaFuncao == 1 e botas[0] == 0){
      escreva("\nQuer pegar essas Botas?(você não possui nenhuma no momento)\n1-Sim\n2-Não\n")
      leia(opcaoSeQuerOuNaoQuerArmaduraNova)
      escolheESSAouESSA(opcaoSeQuerOuNaoQuerArmaduraNova)
      se(opcaoSeQuerOuNaoQuerArmaduraNova == "1"){
        escreva("Botas adquiridas!\n")
        defesaDoPersonagem = defesaDoPersonagem - botas[1]
        botas[0] = 1
        botas[1] = defesaDaArmadura
        defesaDoPersonagem = defesaDoPersonagem + botas[1]
      } senao{
        escreva("Botas negadas!\n")
      }
    }


  } //Continuar fazendo de todas as condições possíveis
      //TESTAR TUDO DEPOIS, testar com cada uma das alternativa, ou seja, cria um código novo e coloca lá que você tem armadura pra cada tipo
      //Depois você cria uma função pra pegar uma bota, uma calça e assim vai. E depois testa tudo de novo só que sem armadura nenhuma, ou seja
      //simulando como se tivesse encontrado pela primeira vez



  funcao status(){
    escreva("\n✐Nome:",nomeDoPersonagem)
    escreva("\n✇Classe:", classe," ———— ","✈Região:", mEUlOCALaTUAL ,"—",regioes[localizacao])
    escreva("\n♥Vida:",vidaDoPersonagem,"/",auxVidaDoPersonagem,"\t ♜Defesa:",defesaDoPersonagem,"\t ✒Ataque:",ataqueDoPersonagem,"\t ♣XP:",xpDoPersonagem,"\t ❄Nível:",nivel,"\n")
    se(capacete[0] == 1){
      escreva("Capacete:✅\t")
    } senao{
      escreva("Capacete:❌\t")
    }
    se(peitoral[0] == 1){
      escreva("Peitoral:✅\t")
    } senao{
      escreva("Peitoral:❌\t")
    }
    se(calca[0] == 1){
      escreva("Calça:✅\t")
    } senao{
      escreva("Calça:❌\t")
    }
    se(botas[0] == 1){
      escreva("Botas:✅\n")
    } senao{
      escreva("Botas:❌\n")
    }

  }


  

  

  funcao seguir(){
    se(vidaDoPersonagem > 0){
      cadeia opcao
      escreva("\nSeguir?\n1-Sim\n2-Não")
      enquanto(opcao != "1"){
        escreva("...\n")
        leia(opcao)
      }
      limpa()
    } 
    senao{
      inicio()
    }
  }

  

  funcao opcaoNaBatalha(){
    cadeia opcao

    enquanto(opcao != "1" e opcao != "2"){
      
      escreva("Sua vez!\nO que você quer fazer?\n1-Atacar\n2-Usar Poção\n")
      leia(opcao)
    }
    
      se(opcao == 2){
        
        pocao()
        escreva("\nAinda é ")
        opcaoNaBatalha()
      } senao se(opcao == 1){
        
        
        
      }      
  }


  funcao taMorto(){
  
  //você é inutil função, só sera útil quando eu botar desenhinho
  }
  

  funcao descansar(){
    se(vidaDoPersonagem > 0){ 
      escreva("\nVocê se sente cansado depois da última batalha e decide tirar um cochilo, você avistou uma arvoré proxima que você pode se escorar e descansar")
      escreva("\nSua vida foi restaurada em 5 pontos!(isso se você tiver tomado 5 de dano na última batalha).\n")
      se((vidaDoPersonagem + 5) > auxVidaDoPersonagem){
        vidaDoPersonagem = auxVidaDoPersonagem
      } senao{
        vidaDoPersonagem = vidaDoPersonagem + 5
      }
      seguir()
      
    } senao{
      inicio()
    }
  }

  funcao escolheESSAouESSA(cadeia opcao){
    enquanto(opcao != "1" e opcao != "2"){
      escreva("Opção 1 ou Opção 2?")
      leia(opcao)
    }
  }

  funcao facao(){

    cadeia opcao

    escreva("\nVocê deu a sorte grande de estar explorando e acabar encontrando um baú, você abre ele e vê um facão e um bilhete ao lado.\n")
    escreva("Você pega o bilhete pra ler e está escrito:\"Se você encontrou esse bilhete, TU DEU UMA SORTE DO CARAMBA!\"\nVocê quer pegar o facão?\n1-Sim\n2-Não(pq não né?)\n")
    leia(opcao)
    enquanto(opcao != "1" e opcao != "2"){
      escreva("Opção 1 ou Opção 2?")
      leia(opcao)
    }
    se(opcao == "1"){
      escreva("\nShow, ela tem um BOM aumento de dano(mais especificamente 5 de acréscimo no seu ataque)\n")
      //AQUI VAI TER O DESENHO DO FACÃO
      arma[0] = 1
      arma[1] = 5
      ataqueDoPersonagem = ataqueDoPersonagem + arma[1]
    } senao se(opcao == "2"){
      escreva("\n;———;\n")
    }

    seguir()

  }































  funcao batalha(){
    
    cadeia opcaoDePreparado



    escreva("Está preparado? Sim? Não?\n")
    leia(opcaoDePreparado)
    
    enquanto(opcaoDePreparado != "Sim"){
      escreva("\nÉ Sim ou Sim, não escreva outra coisa e muito menos tente fugir:\n")
      leia(opcaoDePreparado)
    }
    escreva("Isso mesmo, boa sorte(você vai precisar)\n")
    
      

    inteiro contador = 0
    enquanto(vidaDoPersonagem > 0 e vIdaDosInimigos[0] > 0){
      

      limpa()

      
      contador++
      escreva("Rodada ",contador)
      statusDuranteBatalha()//criar um novo pra cada batalha

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

      subirDeNivel() //aqui tem que criar função pra subir o nível e pegar o XP do inimigo certo
      
    
      seguir()
      limpa()
      status()
      
      } 

  }

  

  funcao statusDuranteBatalha(){
    
    escreva("\nUsuário:",nomeDoPersonagem,"\t│\t",vidaDoPersonagem,"/",auxVidaDoPersonagem,"\n")
    escreva("Inimigo:",inimigosDaCampanhaNormal[0],"\t│\t",vIdaDosInimigos[0],"/",aUXVIDADOSINIMIGOS[0],"\n\n")
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

  funcao liberdade(){
    cadeia opcaoDaLiberdade
    inteiro sorteio = 0

    enquanto(opcaoDaLiberdade != "1" e opcaoDaLiberdade != "2" e opcaoDaLiberdade != "3"){
      status()
      escreva("\nO que deseja fazer agora ",nomeDoPersonagem," ?\n\n1-Seguir em frente\n2-Explorar o local\n3-Voltar região\n")
      leia(opcaoDaLiberdade)
      escolha(opcaoDaLiberdade){

        caso "1":

        escreva("Ok então, bora seguir.")
        u.aguarde(1000)
        limpa()

        
          
        pare

        caso "2":
          inteiro opcao
          sorteio = 0
          sorteio = u.sorteia(sorteDoPersonagem,20)
          escreva("\nVocê resolveu explorar o local, mas para conseguir algo bom, precisa ter sorte no dado d20, e você tirou...",u.aguarde(1000),sorteio," no dado\n")
          se(sorteio > 15){
            
          } senao se(sorteio > 10 e sorteio < 16){
            
          } senao se(sorteio > 1 e sorteio < 11){

          } senao se(sorteio == 1){
            
          }

        pare

        caso "3":
          
        se(mEUlOCALaTUAL == 1){
          limpa()
          status()
          escreva("\nVocê já está na região 1, não tem pra onde voltar\n")
          liberdade()
          
          
        } senao{
          mEUlOCALaTUAL--
          se(mEUlOCALaTUAL == 1){
            desenhoDaFloresta()
            casoVoltePraFloresta()
            //Vou colocar um "se" para os números de cada região.
            //e depois vou criar uma função específica pra cada região, se ele voltar,
            //ele irá poder explorar e tals, mas sempre encontrará um inimigo
          }
        }

        pare

      }
    }
    seguir()
  }

  

  

  









  
















  funcao desenhoDaFloresta(){
    limpa()
    mEUlOCALaTUAL = 1
    localizacao = 0
    escreva(" ___          ____         ___   ___    ___   ____  ___   ___        ___   ___           ___        ___   ___    \n")
    u.aguarde(100)                                          
    escreva("    │   ---  │      │     │   │ │___│  │___  │___    │   │___│      │   ╲ │___│    │╲ │ │___  \\  / │   │ │___│    \n")
    u.aguarde(100)
    escreva("  __|__      │‾‾‾‾  │___  │___│ │   ╲  │___  ____│   │   │   │      │___/ │   │    │ ╲│ │___   \\/  │___│ │   │    \n")

    u.aguarde(2000)
  }

  funcao desenhoDaVilaAbandonada(){



  u.aguarde(2000)

  }
}



  

