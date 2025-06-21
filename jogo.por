programa {
  inclua biblioteca Util --> u

  cadeia nomeDoPersonagem
  cadeia classe 
  inteiro vidaDoPersonagem = 1
  inteiro ataqueDoPersonagem = 0
  inteiro defesaDoPersonagem = 0
  inteiro xpDoPersonagem = 0 
  inteiro nivel = 1
  inteiro limitadorDeNivel = 100
  inteiro auxVidaDoPersonagem = 0
  inteiro sorteDoPersonagem = 0
  inteiro aumentaStatsPorNivel = 2

  inteiro sorteio = 0
  inteiro sorteioDefesa = 0
  inteiro armazenaDano = 0
  inteiro pOSSUIpOCAO = 0
  inteiro pOSSUIpOCAOfodona = 0
  
  inteiro arma[2] = {0,0}

  inteiro capacete[2] = {0,0}
  inteiro peitoral[2] = {0,0}
  inteiro calca[2] = {0,0}
  inteiro botas[2] = {0,0}

  inteiro salvaCachorro = 0
  inteiro encontrouOcadaverComAsBotas = 0
  inteiro fugiuDoVerdugo = 0

  cadeia regioes[5] = {"Floresta das Névoas", "Vila Abandonada","Caverna Sombria","Pântano dos Lamentos","Castelo Dourado"}
  inteiro mEUlOCALaTUAL = 0
  inteiro localizacao = 0

  cadeia inimigosDaCampanhaNormal[14] = {"Lobo das Névoas","El Gigante","Dr.Salvador","Chaves","Seu Madruga","Chapolin Colorado","Yanagisawa","Helga","Verdugo","Slime Assassino","Karasu","Giovani","Arlequina","Kuririn"}
  inteiro vIdaDosInimigos[14] = {30,100,60,30,60,80,1,70,200,250,250,30,120,200}
  inteiro aUXVIDADOSINIMIGOS[14] = {30,100,60,30,60,80,1,70,200,250,250,30,120,80}
  inteiro aTaqueDosInimigos[14] = {12,15,30,30,35,45,1,40,40,50,60,20,70,80}
  inteiro dEfesaDosInimigos[14] = {15,8,20,30,30,30,1,30,40,40,50,25,50,60}
  inteiro xPDosInimigos[14] = {25,76,125,50,140,150,120,125,225,50,400,50,240,260}

  cadeia nomeTOGURO = "Toguro"
  inteiro vidaTOGURO = 400
  inteiro auxVidaTOGURO = 400 
  inteiro aTaqueTOGURO = 70
  inteiro dEfesaTOGURO = 50
  cadeia falas0[3] = {"\nToguro:\n-Você é patético, nenhum arranhão em mim?\n","\nToguro:\n-Não aprendeu nada esse tempo todo?\n","\nToguro:\n-A profecia do herói se resumia a isso?\n"}
  cadeia falas1e15[3] = {"\nToguro:\n-Só isso?\n","\nToguro:\n-Muito fraco!\n","\nToguro:\n-Talvez você precise voltar e treinar mais um pouco\n"}
  cadeia falas16e45[3] = {"\nToguro:\n-Você está me divertindo muito\n", "\nToguro:\n-Parece que as lutas anteriores fizeram você melhorar!\n","\nToguro:\n-Gostei do seu golpe, muito interessante!\n"}
  cadeia falas45[3] = {"\nToguro:\n-Pela primeira vez, estou incerto sobre minha vitória!\n","\nToguro:\n-Acho que vou me arrepender de ter invocado essa profecia.\n","\nToguro:\n-Você luta com seriedade, eu admiro isso\n"}


  inteiro passouPelaIntroducaoDaVilaAbandonada = 0
  inteiro passouPelaLiberdadeNaVilaAbandonada = 0
  inteiro passouPelaBatalhaDoChavesChiquinhaQuico = 0
  inteiro passouPelaLiberdadeNaVilaAbandonadaPARTE2 = 0
  inteiro passouPelaRecompensaFinalDaVila = 0

  inteiro passouPelaIntroducaoDaCavernaSombria = 0
  inteiro passouPelaQualCaminhoSeguir = 0
  inteiro passouPelaLiberdadeNaCavernaSombria = 0
  inteiro passouPelaQualCaminhoSeguirPARTE2 = 0
  inteiro passouPelaBatalhaContraVerdugo = 0
  inteiro passouPelaRecompensaFinalCaverna = 0

  inteiro passouPelaIntroducaoDoPantano = 0
  inteiro passouPelasArmadilhasDoPantano = 0
  inteiro ativaCutsceneKarasu = 0

  inteiro passouPelaIntroCasteloDourado = 0
  inteiro toguroCEMporCENTO = 0

 

  funcao inicio() {
    enquanto(vidaDoPersonagem > 0){
      se(vidaDoPersonagem > 0){

        menu()

      } senao{

      pare

      }
     
    }

  }

  funcao menu(){ 
    se(vidaDoPersonagem > 0){

      cadeia opcao

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

  }

  funcao dasOpcoes(cadeia opcao){
    enquanto(opcao != "iii" e vidaDoPersonagem > 0){
      escreva("Qual opção você quer escolher? i, ii ou iii?\n")
      leia(opcao)
      escolha(opcao){
        caso "i":
          cadeia opcaoDificuldade

          limpa()

          escreva("\nTemos dois modos, o Easy e o Professional, qual você quer?\n\n1-Easy(esse é bem fácil de zerar).\n2-Professional(se não tiver sorte, tu se ferra).\n")
          leia(opcaoDificuldade)
          enquanto(opcaoDificuldade != "1" e opcaoDificuldade != "2"){
            escreva("1 ou 2?\n")
            leia(opcaoDificuldade)
          }

          se(opcaoDificuldade == "1"){
            vIdaDosInimigos[0] = 30
            vIdaDosInimigos[1] = 70
            vIdaDosInimigos[2] = 50
            vIdaDosInimigos[3] = 25
            vIdaDosInimigos[4] = 50
            vIdaDosInimigos[5] = 80
            vIdaDosInimigos[6] = 1
            vIdaDosInimigos[7] = 60
            vIdaDosInimigos[8] = 180
            vIdaDosInimigos[9] = 200
            vIdaDosInimigos[10] = 150
            vIdaDosInimigos[11] = 30
            vIdaDosInimigos[12] = 100
            vIdaDosInimigos[13] = 80

            aUXVIDADOSINIMIGOS[0] = 30
            aUXVIDADOSINIMIGOS[1] = 70
            aUXVIDADOSINIMIGOS[2] = 50
            aUXVIDADOSINIMIGOS[3] = 25
            aUXVIDADOSINIMIGOS[4] = 50
            aUXVIDADOSINIMIGOS[5] = 80
            aUXVIDADOSINIMIGOS[6] = 1
            aUXVIDADOSINIMIGOS[7] = 60
            aUXVIDADOSINIMIGOS[8] = 180
            aUXVIDADOSINIMIGOS[9] = 200
            aUXVIDADOSINIMIGOS[10] = 150
            aUXVIDADOSINIMIGOS[11] = 30
            aUXVIDADOSINIMIGOS[12] = 100
            aUXVIDADOSINIMIGOS[13] = 80

            aTaqueDosInimigos[0] = 10
            aTaqueDosInimigos[1] = 13
            aTaqueDosInimigos[2] = 28
            aTaqueDosInimigos[3] = 22
            aTaqueDosInimigos[4] = 35
            aTaqueDosInimigos[5] = 35
            aTaqueDosInimigos[6] = 1
            aTaqueDosInimigos[7] = 40
            aTaqueDosInimigos[8] = 25
            aTaqueDosInimigos[9] = 30
            aTaqueDosInimigos[10] = 50
            aTaqueDosInimigos[11] = 25
            aTaqueDosInimigos[12] = 45
            aTaqueDosInimigos[13] = 50

            dEfesaDosInimigos[0] = 13
            dEfesaDosInimigos[1] = 8
            dEfesaDosInimigos[2] = 25
            dEfesaDosInimigos[3] = 22
            dEfesaDosInimigos[4] = 29
            dEfesaDosInimigos[5] = 30
            dEfesaDosInimigos[6] = 1
            dEfesaDosInimigos[7] = 40
            dEfesaDosInimigos[8] = 40
            dEfesaDosInimigos[9] = 30
            dEfesaDosInimigos[10] = 40
            dEfesaDosInimigos[11] = 25
            dEfesaDosInimigos[12] = 50
            dEfesaDosInimigos[13] = 40

            vidaTOGURO = 300
            auxVidaTOGURO = 300
            dEfesaTOGURO = 40
            aTaqueTOGURO = 60

          } 

          novoJogo()
          registrarPersonagem()
          introducaoPosCriacao()
          florestaDaNevoa()
          
          se(vidaDoPersonagem > 0){
            vilaAbandonada()
          }
          se(vidaDoPersonagem > 0){
            cavernaSombria()
          } se(vidaDoPersonagem > 0){
            casteloDourado()
          }
          
          
        
        pare

        caso "ii":
          creditos()

        pare


        caso "iii":
          limpa()
          u.aguarde(1000)
          escreva("\nHerói fujão")
          u.aguarde(500)
          escreva(".")
          u.aguarde(500)
          escreva(".")
          u.aguarde(500)
          escreva(".")
          u.aguarde(500)
          escreva("Volte Sempre!\n")
          u.aguarde(1000)
          
          vidaDoPersonagem = 0

        pare

        caso "207":
          novoJogo()
          registrarPersonagem()
          introducaoPosCriacao()
          casteloDourado()

        pare

        caso "Toguro":

          novoJogo()
          registrarPersonagem()
          introducaoPosCriacao()
          toguroDEVASTADOR()
        pare

        caso "verdugo":
          novoJogo()
          registrarPersonagem()
          introducaoPosCriacao()
          vidaDoPersonagem = 500
          batalhaContraVerdugo()
      }

    }
    
  }

  funcao novoJogo(){
    
    inteiro contador = 3

    
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
    escreva("Enfim, vamos continuar, escolha sua classe.\nUm ponto importante...o ataque será sorteado, então a cada vez que você atacar, o seu dano será rolado usando um\ndado d20, e você pode dar 1 de dano ou até 20, e cada classe adicionará mais uma quantidade de dano garantida.\nVamos exemplificar, o guerreiro irá adicionar 6 ao número que você tirar no dado, então se você tirar 10, o seu dano será de 15.\nOutro ponto importante, será possível pegar armas para aumentar seu ataque durante a campanha.\nDITO ISSO, temos 3 opções:\n")
    
    classesDoPersonagem()

  }




  funcao classesDoPersonagem(){
    inteiro contador = 3

    escreva("\nGuerreiro: Se você quer um personagem TANKUDÃO, pega ele, os status dele são:\nVida: 40\nDefesa: 33\nAtaque: +6\n")
   
    escreva("\nMago: Se você quer um canhão de vidro, pega ele, os status dele são:\nVida: 15\nDefesa: 20\nAtaque: +20\n")
    
    escreva("\nArqueiro: Se você quer um cara mais equilibrado, pega ele, os status dele são:\nVida: 30\nDefesa: 25\nAtaque: +10\n")
    
      
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
      sorteDoPersonagem = 2
      escreva("\nVida: ", vidaDoPersonagem,"\nDefesa: ", defesaDoPersonagem,"\nAtaque: ", ataqueDoPersonagem,"\n")

    } senao se(classe == "Lorde Faisão das Trevas"){
      vidaDoPersonagem = 200
      defesaDoPersonagem = 20
      ataqueDoPersonagem = 60
      sorteDoPersonagem = 1
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

      limpa()
      status()

      liberdadeNaFloresta()

      batalhaContraLobo()

      se(vidaDoPersonagem> 0){
      
        descansarNaFloresta()

        voceFoiBondosoComOcachorro()
        
        limpa()
        status()
        liberdadeNaFlorestaPARTE2()

        batalhaContraElGigante()

        se(vidaDoPersonagem > 0){

          descansarNaFloresta()

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

  funcao descansarNaFloresta(){
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
      taMorto()

    }
  }
 
  funcao batalhaContraLobo(){
    limpa()
    status()
    
    escreva("\nSeguimos!\nVocê caminha vagarosamente pela Floresta, vendo como aquele lugar é sombrio, e com tanta Névoa que nem dá pra ver um palmo a sua frente\nquando ouve sons de passos próximos.\n")
    escreva("Calmamente, você se aproxima e acaba sendo surpreendido por um Lobo, que te ataca e te derruba no chão.\n")
    escreva("Isso te machuchou(levou 1 de dano) mas por sorte, você consegue se livrar dele, mas ele está rosnando, a batalha irá começar!\n")
    
    cadeia opcaoDePreparado

    escreva("Está preparado? Sim? Não?\n")
    leia(opcaoDePreparado)
    
    enquanto(opcaoDePreparado != "Sim" e opcaoDePreparado != "sim"){
      escreva("\nÉ Sim ou Sim, não escreva outra coisa e muito menos tente fugir:\n")
      leia(opcaoDePreparado)

    }

    escreva("Isso mesmo, boa sorte(você vai precisar)\n")
    vidaDoPersonagem = vidaDoPersonagem - 1
    
    se(classe == "Guerreiro"){
      dEfesaDosInimigos[0] = dEfesaDosInimigos[0] - 2

    }
    inteiro contadorRodada = 0
    inteiro numDoInimigo = 0
    enquanto(vidaDoPersonagem > 0 e vIdaDosInimigos[0] > 0){
      
      limpa()

      contadorRodada++
      opcaoNaBatalha(numDoInimigo,contadorRodada)

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

      se(defesaDoPersonagem > 27 e contadorRodada == 2){
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
    enquanto(xpDoPersonagem >= limitadorDeNivel){

      escreva("\nPARABÉNS, subiu do nível ",nivel," para o nível ",nivel + 1)
      aumentaStatsPorNivel = aumentaStatsPorNivel + 2
      escreva("\nAtributos ganhos:\nVida + ",aumentaStatsPorNivel + 2,"\tDefesa + ",aumentaStatsPorNivel + 2," e Ataque + ",aumentaStatsPorNivel + 2,"\n")
      
      auxVidaDoPersonagem = auxVidaDoPersonagem + aumentaStatsPorNivel
      vidaDoPersonagem = vidaDoPersonagem + aumentaStatsPorNivel
      defesaDoPersonagem = defesaDoPersonagem + aumentaStatsPorNivel
      ataqueDoPersonagem = ataqueDoPersonagem + aumentaStatsPorNivel
      nivel = nivel + 1
      xpDoPersonagem = xpDoPersonagem - limitadorDeNivel
      limitadorDeNivel = limitadorDeNivel + 40

      se(xpDoPersonagem >= limitadorDeNivel){
        escreva("\nVocê vai subir mais um nível, pois ta com o XP acima de 100\n")
        seguir()
      }
    }
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
            
            escreva("\n.")
            
            escreva(".")
           
            escreva(".")
          
            escreva("Você sendo um completo curioso, decidiu dar uma olhada ao seu redor, e avistou uma macieira, e por estar com muita fome, decide\n")
         
            escreva("sacudir a árvore pra maça cair...e você vê algo caindo na sua cabeça e")
           
            escreva(".")
            
            escreva(".")
            
            escreva(".")
          
            escreva("\nPOW, você sente uma dor na cabeça, e quando você olha, é um frasco com um líquido vermelho dentro(tomara que não seja sangue).\n")
           
            escreva("PARABÉNS, DEU SORTE, você conseguiu uma poção de recuperação de vida(recupera 15 do seu HP).\n")
     
            
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
                  seguir()
                  
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
          status()
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
            enquanto(opcao != "1" e opcao != "2"){
              escreva("Opção 1 ou Opção 2?\n")
              leia(opcao)
            }

            se(opcao == "1"){
              escreva("\nAí sim, é um peitoral podre, mas já é uma ajudinha(concede 2 de defesa)\n")
              peitoral[0] = 1
              peitoral[1] = 2
              defesaDoPersonagem = defesaDoPersonagem + peitoral[1]

            } senao se(opcao == "2"){
              escreva("\nVAI SE FERRAR SEU PRECONCEITUOSO! VOCÊ NÃO QUER POIS AQUELE PEITORAL PARECE MINHA CUECA VELHA?...sem comentários.\n")

            }
            
            seguir()
            
          } senao se(sorteio > 0 e sorteio < 10){
            escreva("\nVocê resolve explorar, procura atrás de um arbusto...e nada, procura atrás de uma árvore...e nada.\n")
            escreva("Sobe em cima de uma árvore pra procurar...e nada, procura dentro da sua cueca...E NADA, deu azar amigo!\n")
            seguir()

          }

        pare

        caso "3":
          
          se(mEUlOCALaTUAL == 1){
            limpa()
            status()
            escreva("\nVocê já está na região 1, não tem pra onde voltar\n")
            liberdadeNaFlorestaPARTE2()
            
          } 

        pare

      }

    }
    
  }

  funcao batalhaContraElGigante(){
    
    cadeia opcaoDePreparado

    status()

    escreva("\nSeguindo seu rumo pela floresta, tudo parece tranquilo, mas no fundo você sabe que as coisas vão piorar.\n")
    escreva("E pioram mesmo, você vê uma sombra gigante atrás de você, e quando tu se vira para ver o que é, um Gigante está pronto pra te esmagar com o pé\n")
    escreva("Você consegue por pouco esquivar, e agora aquela criatura enorme está na sua frente, a batalha vai começar!\n")

    seguir()

    inteiro contadorRodada = 0
    inteiro numDoInimigo = 1

    enquanto(vidaDoPersonagem > 0 e vIdaDosInimigos[1] > 0){
      se(defesaDoPersonagem > 30){
        
      } senao se(defesaDoPersonagem < 23 e aTaqueDosInimigos[1] == 15){
        aTaqueDosInimigos[1] = aTaqueDosInimigos[1] - 5

      }

      limpa()

      contadorRodada++

      se(contadorRodada == 3 e salvaCachorro == 1){
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

      se(contadorRodada == 4){
        escreva("\nO ",inimigosDaCampanhaNormal[1]," se irritou, pegou e arrancou uma árvore da floresta, agora ele vai usar ela pra te atacar\n\n")
        se(defesaDoPersonagem < 30){
          aTaqueDosInimigos[1] = aTaqueDosInimigos[1] + 4

        } senao se(defesaDoPersonagem > 30){
          aTaqueDosInimigos[1] = aTaqueDosInimigos[1] + 7

        }
      }

      opcaoNaBatalha(numDoInimigo, contadorRodada)

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
      enquanto(xpDoPersonagem >= limitadorDeNivel){

        escreva("\nPARABÉNS, subiu do nível ",nivel," para o nível ",nivel + 1)
        aumentaStatsPorNivel = aumentaStatsPorNivel + 2

        escreva("\nAtributos ganhos:\nVida + ",aumentaStatsPorNivel,"\tDefesa + ",aumentaStatsPorNivel," e Ataque + ",aumentaStatsPorNivel,"\n")
        auxVidaDoPersonagem = auxVidaDoPersonagem + aumentaStatsPorNivel
        vidaDoPersonagem = vidaDoPersonagem + aumentaStatsPorNivel
        defesaDoPersonagem = defesaDoPersonagem + aumentaStatsPorNivel
        ataqueDoPersonagem = ataqueDoPersonagem + aumentaStatsPorNivel
        nivel = nivel + 1
        se(xpDoPersonagem >= limitadorDeNivel){
          xpDoPersonagem = xpDoPersonagem - limitadorDeNivel
        } senao{
          
        }
        
        limitadorDeNivel = limitadorDeNivel + 40
        
        se(xpDoPersonagem >= limitadorDeNivel){
          escreva("\nVocê vai subir mais um nível, pois ta com o XP acima de 100\n")
          seguir()
        }
      }
     
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
    
    enquanto(opcaoDePreparado != "Sim" e opcaoDePreparado != "sim"){
      escreva("\nÉ Sim ou Sim, não escreva outra coisa e muito menos tente fugir agora:\n")
      leia(opcaoDePreparado)
    }
    escreva("Isso mesmo, boa sorte(você vai precisar)\n")
    vidaDoPersonagem = vidaDoPersonagem - 1
      

    inteiro contadorRodada = 0
    inteiro numDoInimigo = 2
    enquanto(vidaDoPersonagem > 0 e vIdaDosInimigos[2] > 0){
      

      limpa()

      
      contadorRodada++ 

      opcaoNaBatalha(numDoInimigo,contadorRodada)

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
      enquanto(xpDoPersonagem >= limitadorDeNivel){

        escreva("\nPARABÉNS, subiu do nível ",nivel," para o nível ",nivel + 1)
        aumentaStatsPorNivel = aumentaStatsPorNivel + 2

        escreva("\nAtributos ganhos:\nVida + ",aumentaStatsPorNivel,"\tDefesa + ",aumentaStatsPorNivel," e Ataque + ",aumentaStatsPorNivel,"\n")
        auxVidaDoPersonagem = auxVidaDoPersonagem + aumentaStatsPorNivel
        vidaDoPersonagem = vidaDoPersonagem + aumentaStatsPorNivel
        defesaDoPersonagem = defesaDoPersonagem + aumentaStatsPorNivel
        ataqueDoPersonagem = ataqueDoPersonagem + aumentaStatsPorNivel
        nivel = nivel + 1
        se(xpDoPersonagem >= limitadorDeNivel){
          xpDoPersonagem = xpDoPersonagem - limitadorDeNivel
        } senao{
          
        }
        
        limitadorDeNivel = limitadorDeNivel + 40
          
        se(xpDoPersonagem >= limitadorDeNivel){
          escreva("\nVocê vai subir mais um nível, pois ta com o XP acima de 100\n")
          seguir()
        }
      }
     
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
    
    enquanto(opcaoDePreparado != "Sim" e opcaoDePreparado != "sim"){
      escreva("\nÉ Sim ou Sim, não escreva outra coisa e muito menos tente fugir agora:\n")
      leia(opcaoDePreparado)
    }
    escreva("Isso mesmo, boa sorte(você vai precisar)\n")
    vidaDoPersonagem = vidaDoPersonagem - 1
      

    inteiro contadorRodada = 0
    inteiro numDoInimigo = 2
    enquanto(vidaDoPersonagem > 0 e vIdaDosInimigos[2] > 0){
      

      limpa()

      
      contadorRodada++
      
      opcaoNaBatalha(numDoInimigo,contadorRodada)

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
      enquanto(xpDoPersonagem >= limitadorDeNivel){

        escreva("\nPARABÉNS, subiu do nível ",nivel," para o nível ",nivel + 1)
        aumentaStatsPorNivel = aumentaStatsPorNivel + 2

        escreva("\nAtributos ganhos:\nVida + ",aumentaStatsPorNivel,"\tDefesa + ",aumentaStatsPorNivel," e Ataque + ",aumentaStatsPorNivel,"\n")
        auxVidaDoPersonagem = auxVidaDoPersonagem + aumentaStatsPorNivel
        vidaDoPersonagem = vidaDoPersonagem + aumentaStatsPorNivel
        defesaDoPersonagem = defesaDoPersonagem + aumentaStatsPorNivel
        ataqueDoPersonagem = ataqueDoPersonagem + aumentaStatsPorNivel
        nivel = nivel + 1
        se(xpDoPersonagem >= limitadorDeNivel){
          xpDoPersonagem = xpDoPersonagem - limitadorDeNivel
        } senao{
          
        }
        
        limitadorDeNivel = limitadorDeNivel + 40
        
        se(xpDoPersonagem >= limitadorDeNivel){
          escreva("\nVocê vai subir mais um nível, pois ta com o XP acima de 100\n")
          seguir()
        }
      }
     
  }


  funcao casoVoltePraFloresta(){
    cadeia opcao

    escreva("\nVocê volta pra floresta, sentindo aquele cheiro característico de um lugar sombrio.\nTem Certeza que não quer voltar pra Vila Abandonada?\n")
    escreva("\n1-Não, vou explorar a floresta\n2-Mudei de ideia, vou voltar pra Vila\n")
    leia(opcao)
    
    enquanto(opcao != "1" e opcao != "2"){
      escreva("Opção 1 ou Opção 2?\n")
      leia(opcao)
    }
    se(opcao == "1"){
      se(vIdaDosInimigos[2] == 0 e inimigosDaCampanhaNormal[2] == "Dr.Salvador"){
        batalhaContraMegaDrSalvador()
        se(vidaDoPersonagem > 0){
          escreva("\nNão tem mais nada pra explorar aqui, e você decide voltar pra Vila Abandonada.\n")
          seguir()
          vilaAbandonada()
        }
      } senao se(vIdaDosInimigos[2] != 0 e inimigosDaCampanhaNormal[2] == "Dr.Salvador"){
        batalhaContraDrSalvador()
          se(vidaDoPersonagem > 0){
            escreva("\nNão tem mais nada pra explorar aqui, e você decide voltar pra Vila Abandonada.\n")
            seguir()
            vilaAbandonada()
        }
      } senao{
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
    
      escreva("\nVILA ABANDONADA\n")
      se(passouPelaIntroducaoDaVilaAbandonada == 0 e vidaDoPersonagem > 0){
        passouPelaIntroducaoDaVilaAbandonada = 1
        escreva("\nApós a tensa Floresta das Névoas, chega a região 2: Vila Abandonada, um local que era muito alegre, tinham várias crianças que brincavam ali,\nera um lugar que tinha paz, mas tudo mudou depois que o Devastador amaldiçoou aquele lugar!\nChegando ali, você de cara sente um certo estranhamento,\n")
        escreva("afinal, ela é bem familiar pra você. Você percebe que o local está bem destruído e com várias manchas de sangue espalhado por ele,\n")
        escreva("e por estar meio cansado, decide sentar e descansar um pouco(recupera 7 de vida).\n")
        se((vidaDoPersonagem + 7) > auxVidaDoPersonagem){
          vidaDoPersonagem = auxVidaDoPersonagem
        } senao{
          vidaDoPersonagem = vidaDoPersonagem + 7
        }
      }senao{

      }
      seguir()
      limpa()

      liberdadeNaVilaAbandonada()

      se(passouPelaBatalhaDoChavesChiquinhaQuico == 0){
        passouPelaBatalhaDoChavesChiquinhaQuico = 1
        status()
        batalhaContraChaves()
        se(vidaDoPersonagem > 0){
      
          batalhaContraChiquinha()
          se(vidaDoPersonagem > 0){
            batalhaContraQuico()
          }
        }
      }
      se(vidaDoPersonagem > 0){
        
        se(passouPelaLiberdadeNaVilaAbandonadaPARTE2 == 0){
          passouPelaLiberdadeNaVilaAbandonadaPARTE2 = 1
          descansarNaVilaAbandonada()
          liberdadeNaVilaAbandonadaPARTE2()
        } 
        se(vIdaDosInimigos[4] > 0){

        
          batalhaContraSeuMadruga()
          se(vidaDoPersonagem > 0 e passouPelaRecompensaFinalDaVila == 0){
            passouPelaRecompensaFinalDaVila = 1
            recompensaFinalDaVilaAbandonada()
            seguir()
            limpa()
            status()
            escreva("\nParabéns mais uma vez ", nomeDoPersonagem,", agora o seu próximo rumo é a Caverna Sombria, Boa sorte!\n")
            seguir()
          
          }
        } senao{
          se(vIdaDosInimigos[5] > 0 e passouPelaIntroducaoDaCavernaSombria == 1){
            cadeia opcaoDaLiberdade

            limpa()
            status()
            escreva("\nBem vindo de volta amigo, você veio fazer o que aqui? acha que tem algo que possa ser útil? sentiu saudades dessa vila maravilhosa?\n")
            escreva("Só acho que não foi uma boa ideia você ter voltado...todos mundo aqui foi corrompido, e até a alma mais limpa não escapou.\n")
            escreva("Sabe de quem eu to falando? daquele herói que é mais ágil que uma tartaruga, mais forte que um rato e mais inteligente que um asno.\n")
            escreva("Ele é o...você sabe quem!\n")
            escreva("Logo a sua frente, você vê ele, olhando para os corpos mortos de Chaves, Chiquinha, Quico e Seu Madruga, e depois virando o rosto lentamente para você.\n")
            escreva("Você está tremendo pois a aura em volta dele é malígna, não é de um super herói,\né de alguém com ódio puro no coração, e sem piedade ou aviso, ele parte pra cima de você!\n")
            batalhaContraChapolinColorado()
            descansarNaVilaAbandonada()
            status()
            escreva("\nDerrotou o Chapolin, mas não há mais nada para fazer aqui, só resta voltar pra Caverna Sombria!\nOu também dá pra voltar pra Floresta, quer o que?\n1-Ir pra Caverna\n2-Voltar pra floresta\n")
            leia(opcaoDaLiberdade)
            
            enquanto(opcaoDaLiberdade != "1" e opcaoDaLiberdade != "2"){
              status()
              escreva("\nO que deseja fazer ",nomeDoPersonagem," ?\n\n1-Seguir em frente\n2-Voltar região\n")
              leia(opcaoDaLiberdade)
              escolha(opcaoDaLiberdade){

                caso "1":

                  escreva("Ok então, bora seguir.")
                  u.aguarde(1000)
                  limpa()

                pare

                caso "2":
                  
                  se(mEUlOCALaTUAL == 1){
                    limpa()
                    status()
                    escreva("\nVocê já está na região 1, não tem pra onde voltar\n")
                    
                  
                  } senao{
                    mEUlOCALaTUAL--
                    se(mEUlOCALaTUAL == 1){
                      desenhoDaFloresta()
                      casoVoltePraFloresta()
                    
                    } senao se(mEUlOCALaTUAL == 2){
                      vilaAbandonada()
                      cavernaSombria()
                    } senao se(mEUlOCALaTUAL == 3){
                      cavernaSombria()
                      pantanoDosLamentos()

                    } senao se(mEUlOCALaTUAL == 4){
                      pantanoDosLamentos()
                    }
                  
                  }

                pare

              }
            }
        seguir()
        cavernaSombria()
            

        } senao se(vIdaDosInimigos[5] == 0 e passouPelaIntroducaoDaCavernaSombria == 1){
          cadeia opcaoDaLiberdade

          status()
          escreva("\nVocê voltou novamente, e ele estava te esperando...Chapolin nunca morre!\nEle olha pra você e diz: \"Eu deixei você me derrotar intencionalmente para você achar que poderia voltar e nada aconteceria.\"\n")
          escreva("A presença do Chapolin aumenta, você pode sentir a força dele aumentando, e com isso, ele caminha até você, mais poderoso que antes!\n")
          aUXVIDADOSINIMIGOS[5] = aUXVIDADOSINIMIGOS[5] + 20
          aTaqueDosInimigos[5] = aTaqueDosInimigos[5] + 20
          dEfesaDosInimigos[5] = dEfesaDosInimigos[5] + 20
          xPDosInimigos[5] = xPDosInimigos[5] + 25
          batalhaContraChapolinColorado()
          descansarNaVilaAbandonada()
          escreva("\nDerrotou o Chapolin mais uma vez(ta de hack né?)\nMas não tem nada mais pra fazer aqui, só resta você voltar pra Caverna Sombria.\nOu também dá pra voltar pra Floresta, quer o que?\n")
          leia(opcaoDaLiberdade)
            
          enquanto(opcaoDaLiberdade != "1" e opcaoDaLiberdade != "2"){
            status()
            escreva("\nO que deseja fazer ",nomeDoPersonagem," ?\n\n1-Seguir em frente\n2-Voltar região\n")
            leia(opcaoDaLiberdade)
            escolha(opcaoDaLiberdade){

              caso "1":

                escreva("Ok então, bora seguir.")
                u.aguarde(1000)
                limpa()

              pare

              caso "2":
                  
                se(mEUlOCALaTUAL == 1){
                  limpa()
                  status()
                  escreva("\nVocê já está na região 1, não tem pra onde voltar\n")
                    
                  
                } senao{
                  mEUlOCALaTUAL--
                  se(mEUlOCALaTUAL == 1){
                    desenhoDaFloresta()
                    casoVoltePraFloresta()
                    
                  } senao se(mEUlOCALaTUAL == 2){
                    vilaAbandonada()
                    cavernaSombria()
                  } senao se(mEUlOCALaTUAL == 3){
                    cavernaSombria()
                    pantanoDosLamentos()

                  } senao se(mEUlOCALaTUAL == 4){
                    pantanoDosLamentos()
                  }
                  
                }

              pare

            }
          }
          seguir()
          cavernaSombria()

         }

          
        //batalhaContraOChapolin
        //se a vida dele for maior que 0, aí a luta dele vai ser feita, e se não for, a vida dele restaura e ele fica mais forte
        //e faz um negócio pra que logo que o chapolin "morra", apareça uma mensagem e o usuário volte pra caverna, e daí faz
        // o mesmo esquema da vila, de colocar uma verificação pra cada uma das coisas que o usuário passou.

        }
      } senao{
        taMorto()
      }
  
       
      
    } senao{
      limpa()
      taMorto()
      limpa()
    }
  }

  funcao descansarNaVilaAbandonada(){
    se(vidaDoPersonagem > 0){ 
      escreva("\nVocê se sente cansado depois da última batalha e decide sentar em umas escadas ali perto para descansar.")
      escreva("\nIsso recuperou 5 da sua vida(se tiver perdido 5 de vida).\n")
      se((vidaDoPersonagem + 5) > auxVidaDoPersonagem){
        vidaDoPersonagem = auxVidaDoPersonagem
      } senao{
        vidaDoPersonagem = vidaDoPersonagem + 5
      }
      seguir()
      
    } senao{
      taMorto()
    }
  }

  funcao liberdadeNaVilaAbandonada(){
    cadeia opcaoDaLiberdade
    inteiro sorteio = 0

    se(passouPelaLiberdadeNaVilaAbandonada == 0){
      passouPelaLiberdadeNaVilaAbandonada = 1
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
            
            se(sorteio > 14){
              cadeia oPcaoDesseSe
              escreva("\nA sorte está ao seu lado! recém chegou na vila e já se deu bem!\nVocê começa explorar, fuçando em cada canto quando da de cara com uma calça pendurada em um varal(como você não tinha visto ela?)\n")
              escreva("A calça é branca com bolinhas vermelhas(que bela porcaria!)\nVocê quer pega-lá?(concede uma boa defesa extra).\n1-Pego\n2-Não pego\n")
              leia(oPcaoDesseSe)
              
              enquanto(oPcaoDesseSe != "1" e oPcaoDesseSe != "2"){
                escreva("Opção 1 ou Opção 2?\n")
                leia(opcao)
              }
              se(oPcaoDesseSe == "1"){
                escreva("Boa escolha!(mais 6 de defesa)\n")
                calca[0] = 1
                calca[1] = 6
                defesaDoPersonagem = defesaDoPersonagem + calca[1]
              } senao{
                escreva("Ok né, o jogo é seu e não meu.\n")
              }
              
              seguir()
              
            } senao se(sorteio > 7 e sorteio < 15){

                cadeia oPcaoDesseSe
                escreva("\nVocê começa explorar, fuçando em cada canto quando da de cara com uma calça pendurada em um varal(como você não tinha visto ela?)\n")
                escreva("A calça é branca com bolinhas vermelhas(que bela porcaria!)\nVocê quer pega-lá?(concede uma defesa extra).\n1-Pego\n2-Não pego\n")
                leia(oPcaoDesseSe)
                enquanto(oPcaoDesseSe != "1" e oPcaoDesseSe != "2"){
                  escreva("Opção 1 ou Opção 2?\n")
                  leia(opcao)
                }
                se(oPcaoDesseSe == "1"){
                  escreva("Boa escolha!(mais 3 de defesa)\n")
                  calca[0] = 1
                  calca[1] = 3
                  defesaDoPersonagem = defesaDoPersonagem + calca[1]
                } senao{
                  escreva("Ok né, o jogo é seu e não meu.\n")
                }
                seguir()
              
              } senao se(sorteio > 0 e sorteio < 8){
                cadeia opcaoDeXpOuVida
                escreva("\nVocê decide explorar a vila, procura dentro de um barril que tinha ali, procura em umas plantas, mas não acha nada!\n")
                escreva("...Sinceramente, fiquei com dó, vou te ajudar!\n\nQuer 20 de XP ou recuperar 5 de vida?\n1-20 de XP\n2-Recuperar 5 de vida\n")
                leia(opcaoDeXpOuVida)
                
                enquanto(opcaoDeXpOuVida != "1" e opcaoDeXpOuVida != "2"){
                  escreva("Opção 1 ou Opção 2?\n")
                  leia(opcao)
                }
                se(opcaoDeXpOuVida == "1"){
                  escreva("\nSeu desejo é uma ordem! o Pix de 20 de XP caiu na sua conta!\n")
                  xpDoPersonagem = xpDoPersonagem + 20

                } senao se(opcaoDeXpOuVida == "2"){
                  escreva("\nSeu desejo é uma ordem! o Pix de 5 de HP caiu na sua conta!\n")
                  se((vidaDoPersonagem + 5) > auxVidaDoPersonagem){
                    vidaDoPersonagem = auxVidaDoPersonagem
                  } senao{
                    vidaDoPersonagem = vidaDoPersonagem + 5
                  }
                }
                seguir()
                
                
            } 

          pare

          caso "3":
            
          se(mEUlOCALaTUAL == 1){
            limpa()
            status()
            escreva("\nVocê já está na região 1, não tem pra onde voltar\n")
            seguir()
            liberdadeNaVilaAbandonada()
            
            
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
    
    limpa()
  }

  funcao batalhaContraChaves(){
    
    se(classe == "Mago"){
      aTaqueDosInimigos[3] = aTaqueDosInimigos[3] - 5
    }
    
    
    cadeia opcaoDePreparado

    escreva("\nCaminhando pela Vila(que parece cada vez mais familiar), você não acredita no que seus olhos estão vendo.\n")
    escreva("Simplesmente eles, 3 personagens que marcaram sua infância...Chaves, Chiquinha e Quico!\n")
    escreva("Você se questiona: \"C-Como?COMO?como isso é possível? eles são personagens de ficção, isso não faz sentido algum!\n")
    escreva("Os 3 reparam na sua presença, e começam a caminhar em sua direção, dizendo repetidas vezes \"matar,matar,matar\".\n")
    escreva("Você não consegue entender aquilo, você olha nos olhos deles e...pera, que olhos? eles não possuem olhos.\n")
    escreva("Não há tempo pra pensar naquilo, eles estão vindo, Chaves é o primeiro!\n")

    seguir()
    
      
    se(classe == "Mago"){
      aTaqueDosInimigos[3]
      dEfesaDosInimigos[3]
    }
    inteiro contadorRodada = 0
    inteiro numDoInimigo = 3
    enquanto(vidaDoPersonagem > 0 e vIdaDosInimigos[3] > 0){
      

      limpa()

      
      contadorRodada++

      opcaoNaBatalha(numDoInimigo,contadorRodada)

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

    escreva("\nVocê aproveita que derrotou Chaves pra dar uma respirada(recuperou 2 de HP), mas Chiquinha parte pra cima de você!\n")
    se((vidaDoPersonagem + 3) > auxVidaDoPersonagem){
      vidaDoPersonagem  = auxVidaDoPersonagem
    } senao{
      vidaDoPersonagem = vidaDoPersonagem + 2
    }
    inimigosDaCampanhaNormal[3] = "Chiquinha"
    vIdaDosInimigos[3] = aUXVIDADOSINIMIGOS[3]

    

    seguir()
      

    inteiro contadorRodada = 0
    inteiro numDoInimigo = 3
    enquanto(vidaDoPersonagem > 0 e vIdaDosInimigos[3] > 0){
      

      limpa()

      
      contadorRodada++
      
      opcaoNaBatalha(numDoInimigo,contadorRodada)

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

    
    escreva("\nApós derrotar a Chiquinha, você ganha folego novamente para enfrentar o último que sobrou, o Quico!\n")
    se((vidaDoPersonagem + 3) > auxVidaDoPersonagem){
      vidaDoPersonagem  = auxVidaDoPersonagem
    } senao{
      vidaDoPersonagem = vidaDoPersonagem + 2
    }
    inimigosDaCampanhaNormal[3] = "Quico"
    vIdaDosInimigos[3] = aUXVIDADOSINIMIGOS[3]
   

    seguir()
    
      

    inteiro contadorRodada = 0
    inteiro numDoInimigo = 3
    enquanto(vidaDoPersonagem > 0 e vIdaDosInimigos[3] > 0){
      

      limpa()

      
      contadorRodada++
      
      opcaoNaBatalha(numDoInimigo,contadorRodada)

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
      enquanto(xpDoPersonagem >= limitadorDeNivel){

        escreva("\nPARABÉNS, subiu do nível ",nivel," para o nível ",nivel + 1)
        aumentaStatsPorNivel = aumentaStatsPorNivel + 2

        escreva("\nAtributos ganhos:\nVida + ",aumentaStatsPorNivel,"\tDefesa + ",aumentaStatsPorNivel," e Ataque + ",aumentaStatsPorNivel,"\n")
        auxVidaDoPersonagem = auxVidaDoPersonagem + aumentaStatsPorNivel
        vidaDoPersonagem = vidaDoPersonagem + aumentaStatsPorNivel
        defesaDoPersonagem = defesaDoPersonagem + aumentaStatsPorNivel
        ataqueDoPersonagem = ataqueDoPersonagem + aumentaStatsPorNivel
        nivel = nivel + 1
        se(xpDoPersonagem >= limitadorDeNivel){
          xpDoPersonagem = xpDoPersonagem - limitadorDeNivel
        } senao{
          
        }
        
        limitadorDeNivel = limitadorDeNivel + 40
        
        se(xpDoPersonagem > limitadorDeNivel){
          escreva("\nVocê vai subir mais um nível, pois ta com o XP acima de 100\n")
          seguir()

          
        }
      }
     
  }

  funcao liberdadeNaVilaAbandonadaPARTE2(){
    cadeia opcaoDaLiberdade
    inteiro sorteio = 0

    enquanto(opcaoDaLiberdade != "1" e opcaoDaLiberdade != "2" e opcaoDaLiberdade != "3"){
      limpa()
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
            seguir()

          }

          se(opcaoVasculhar == "2"){
            inteiro defesaDasMeiasDoQuico = 8
            inteiro capaceteDaFuncao = 0
            inteiro peitoralDaFuncao = 0
            inteiro calcaDaFuncao = 0
            inteiro botasDaFuncao = 1

            escreva("\nVasculhando o corpo do Quico, você nem demora a perceber que as meias amarelas dele junto com as botas, sendo que o resto ta tudo destruído.\nCom certeza essas botas e a meia não são normais.\n")
            casoEncontreArmadura(defesaDasMeiasDoQuico,capaceteDaFuncao,peitoralDaFuncao,calcaDaFuncao,botasDaFuncao)
            seguir()

          }

          se(opcaoVasculhar == "3"){

            inteiro defesaDaRoupaDaChiquinha = 6
            inteiro capaceteDaFuncao = 0
            inteiro peitoralDaFuncao = 1
            inteiro calcaDaFuncao = 0
            inteiro botasDaFuncao = 0

            escreva("\nVasculhando o corpo da Chiquinha, você rapidamente percebe que a roupa da parte de cima dela estão intactas, o que muito estranho\nVocê conclui que esse \"Peitoral\" é bem resistente")
            casoEncontreArmadura(defesaDaRoupaDaChiquinha,capaceteDaFuncao,peitoralDaFuncao,calcaDaFuncao,botasDaFuncao)
            seguir()
      
          }

          

        pare

        caso "3":
          
          se(mEUlOCALaTUAL == 1){
            limpa()
            status()
            escreva("\nVocê já está na região 1, não tem pra onde voltar\n")
            liberdadeNaVilaAbandonadaPARTE2()
            
            
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
    
    enquanto(opcaoDePreparado != "Sim" e opcaoDePreparado != "sim"){
      escreva("\nÉ Sim ou Sim, não escreva outra coisa e muito menos tente fugir:\n")
      leia(opcaoDePreparado)
    }
    escreva("Isso mesmo, boa sorte(você vai precisar)\n")
    
      

    inteiro contadorRodada = 0
    inteiro numDoInimigo = 4
    enquanto(vidaDoPersonagem > 0 e vIdaDosInimigos[4] > 0){

      limpa()

      contadorRodada++
      
      opcaoNaBatalha(numDoInimigo,contadorRodada)

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

        subirDeNivelContraSeuMadruga() 
        
      
        seguir()
        limpa()
        status()
      
      } 

  }

  
  funcao subirDeNivelContraSeuMadruga() {
      
    xpDoPersonagem = xpDoPersonagem + xPDosInimigos[4]
    enquanto(xpDoPersonagem >= limitadorDeNivel){

      escreva("\nPARABÉNS, subiu do nível ",nivel," para o nível ",nivel + 1)
      aumentaStatsPorNivel = aumentaStatsPorNivel + 2

      escreva("\nAtributos ganhos:\nVida + ",aumentaStatsPorNivel,"\tDefesa + ",aumentaStatsPorNivel," e Ataque + ",aumentaStatsPorNivel,"\n")
      auxVidaDoPersonagem = auxVidaDoPersonagem + aumentaStatsPorNivel
      vidaDoPersonagem = vidaDoPersonagem + aumentaStatsPorNivel
      defesaDoPersonagem = defesaDoPersonagem + aumentaStatsPorNivel
      ataqueDoPersonagem = ataqueDoPersonagem + aumentaStatsPorNivel
      nivel = nivel + 1
      se(xpDoPersonagem >= limitadorDeNivel){
        xpDoPersonagem = xpDoPersonagem - limitadorDeNivel
      } senao{
        
      }
      
      limitadorDeNivel = limitadorDeNivel + 40
        
      se(xpDoPersonagem > limitadorDeNivel){
        escreva("\nVocê vai subir mais um nível, pois ta com o XP acima de 100\n")
        seguir()
      }
    }
  }

  funcao recompensaFinalDaVilaAbandonada(){
    cadeia opcaoDaRecompensaFinalDaVilaAbandonada

    inteiro defesaDaArmadura = 0
    inteiro capaceteDaFuncao = 0
    inteiro peitoralDaFuncao = 0
    inteiro calcaDaFuncao = 0
    inteiro botasDaFuncao = 0

    
  
    escreva("\nParabéns herói, concluiu mais uma região, agora você receberá um prêmio!\n")
    escreva("Você terá a possibilidade de escolher 1 dentre as 7 recompensas catalogadas abaixo.\n")
    escreva("\nQual destas você escolhe?\n")
    escreva("1-Chapéu do Seu Madruga: Concede 10 de defesa, e muito estilo!\n")
    escreva("2-A Camisa do Seu Madruga: Concede 9 de defesa, ela é simples mas clássica!\n")
    escreva("3-A Calça Jeans do Seu Madruga: Concede 9 de defesa, é uma calça comum mas é do Seu Madruga né!\n")
    escreva("4-Os sapatos do Seu Madruga: Concedem 8 de defesa, sapatos comuns do velho lobo do mar!\n")
    escreva("5-A Carabina do Seu Madruga: Ela concede 10 de ataque, e funciona de verdade!\n")
    escreva("6-Sanduíche de Presunto do Chaves: Recupera toda a sua vida, é gostosississíssimo(roubadinho esse)!\n")
    escreva("7-Refresco de Limão, que parece Grozélia e tem gosto de Tamarindo: Concede bastante XP!\n")
    escreva("\nDigite o número da sua escolha: ")
    leia(opcaoDaRecompensaFinalDaVilaAbandonada)

    enquanto(opcaoDaRecompensaFinalDaVilaAbandonada != "1" e opcaoDaRecompensaFinalDaVilaAbandonada != "2" e opcaoDaRecompensaFinalDaVilaAbandonada != "3" e opcaoDaRecompensaFinalDaVilaAbandonada != "4" e opcaoDaRecompensaFinalDaVilaAbandonada != "5" e opcaoDaRecompensaFinalDaVilaAbandonada != "6" e opcaoDaRecompensaFinalDaVilaAbandonada != "7"){
      escreva("\nAh...escreva direito!\n")
      leia(opcaoDaRecompensaFinalDaVilaAbandonada)
    }

    se(opcaoDaRecompensaFinalDaVilaAbandonada == "1"){
      capaceteDaFuncao = 1
      defesaDaArmadura = 10
      casoEncontreArmadura(defesaDaArmadura,capaceteDaFuncao,peitoralDaFuncao,calcaDaFuncao,botasDaFuncao)
      
    } senao se(opcaoDaRecompensaFinalDaVilaAbandonada == "2"){
      peitoralDaFuncao = 1
      defesaDaArmadura = 9
      casoEncontreArmadura(defesaDaArmadura,capaceteDaFuncao,peitoralDaFuncao,calcaDaFuncao,botasDaFuncao)

    } senao se(opcaoDaRecompensaFinalDaVilaAbandonada == "3"){
      calcaDaFuncao = 1
      defesaDaArmadura = 9
      casoEncontreArmadura(defesaDaArmadura,capaceteDaFuncao,peitoralDaFuncao,calcaDaFuncao,botasDaFuncao)

    } senao se(opcaoDaRecompensaFinalDaVilaAbandonada == "4"){
      botasDaFuncao = 1
      defesaDaArmadura = 8
      casoEncontreArmadura(defesaDaArmadura,capaceteDaFuncao,peitoralDaFuncao,calcaDaFuncao,botasDaFuncao)

    } senao se(opcaoDaRecompensaFinalDaVilaAbandonada == "5"){
      inteiro danoDaArma = 10
      casoEncontreARMA(danoDaArma)

    } senao se(opcaoDaRecompensaFinalDaVilaAbandonada == "6"){
      escreva("\nVocê degusta do Sanduíche de Presunto, estava muito bom, e a sua vida foi restaurada completamente!")
      vidaDoPersonagem = auxVidaDoPersonagem

    } senao se(opcaoDaRecompensaFinalDaVilaAbandonada == "7"){
      escreva("Esse refresco que é de limão, parece grozélia e tem gosto de tamarindo é poderoso, tu ganha xp pra quase subir de nível!\n")
      
      xpDoPersonagem = limitadorDeNivel - 1
        
      

    } 
  }

  funcao batalhaContraChapolinColorado(){
    vIdaDosInimigos[5] = aUXVIDADOSINIMIGOS[5]
    
    cadeia opcaoDePreparado

    escreva("Está preparado? Sim? Não?\n")
    leia(opcaoDePreparado)
    
    enquanto(opcaoDePreparado != "Sim" e opcaoDePreparado != "sim"){
      escreva("\nÉ Sim ou Sim, não escreva outra coisa e muito menos tente fugir:\n")
      leia(opcaoDePreparado)
    }
    escreva("Isso mesmo, boa sorte(você vai precisar)\n")
    
    inteiro contadorRodada = 0
    inteiro numDoInimigo = 5
    enquanto(vidaDoPersonagem > 0 e vIdaDosInimigos[5] > 0){
    
      limpa()

      contadorRodada++

      opcaoNaBatalha(numDoInimigo,contadorRodada)

      u.aguarde(1000)
      sorteio = 0
      escreva("\nVez de ",nomeDoPersonagem, "\n")
      
      u.aguarde(1200)

      sorteio = u.sorteia(1,20) + ataqueDoPersonagem
      se(sorteio - dEfesaDosInimigos[5] > 0){

        vIdaDosInimigos[5] = vIdaDosInimigos[5] - (sorteio - dEfesaDosInimigos[5])

        escreva("Seu ataque + o dado deu: ", sorteio,"\n")
        escreva("Dano dado: ", sorteio  - dEfesaDosInimigos[5],"\n")
      } senao{
        escreva("Seu ataque + o dado deu: ", sorteio,"\n")
        escreva("Seu ataque não foi páreo para a astúcia do ",inimigosDaCampanhaNormal[5] ,"\n")
      }
      se(vIdaDosInimigos[5] <= 0){
        vIdaDosInimigos[5] = 0
        pare
      } 


      u.aguarde(2000)

      sorteio = 0
      escreva("\nVez de ", inimigosDaCampanhaNormal[5])

      u.aguarde(1200)

      sorteio = u.sorteia(1,20) + aTaqueDosInimigos[5]
      
      se(sorteio - defesaDoPersonagem > 0){
        vidaDoPersonagem = vidaDoPersonagem - (sorteio - defesaDoPersonagem)

        escreva("\nO ataque + o dado do ",inimigosDaCampanhaNormal[5],": ", sorteio,"\n")
        escreva("Te acertou com a Marreta Biônica causando um dano de ", sorteio  - defesaDoPersonagem,"\n")
        se(vidaDoPersonagem < 0){
          vidaDoPersonagem = 0
        }
        
      } senao{
        escreva("\nO ataque + o dado do ",inimigosDaCampanhaNormal[5],": ", sorteio,"\n")
        escreva("Ele não te acertou, errou intencionalmente, afinal, todos os movimentos são friamente calculados\n")
        
      }
      
      u.aguarde(3000)
       
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
        escreva("\nVOCÊ CONSEGUIU DERROTAR O HERÓI MAIS ICÔNICO DE TODOS! o ", inimigosDaCampanhaNormal[5],"\n")
        escreva("\nXP obtido:",xPDosInimigos[5],"\n")

        subirDeNivelContraChapolinColorado() //aqui tem que criar função pra subir o nível e pegar o XP do inimigo certo
        
      
        seguir()
        limpa()
        status()
      
      } 

  }


  funcao subirDeNivelContraChapolinColorado() {
      
      xpDoPersonagem = xpDoPersonagem + xPDosInimigos[5]
      enquanto(xpDoPersonagem >= limitadorDeNivel){

        escreva("\nPARABÉNS, subiu do nível ",nivel," para o nível ",nivel + 1)
        aumentaStatsPorNivel = aumentaStatsPorNivel + 2

        escreva("\nAtributos ganhos:\nVida + ",aumentaStatsPorNivel,"\tDefesa + ",aumentaStatsPorNivel," e Ataque + ",aumentaStatsPorNivel,"\n")
        auxVidaDoPersonagem = auxVidaDoPersonagem + aumentaStatsPorNivel
        vidaDoPersonagem = vidaDoPersonagem + aumentaStatsPorNivel
        defesaDoPersonagem = defesaDoPersonagem + aumentaStatsPorNivel
        ataqueDoPersonagem = ataqueDoPersonagem + aumentaStatsPorNivel
        nivel = nivel + 1
        se(xpDoPersonagem >= limitadorDeNivel){
          xpDoPersonagem = xpDoPersonagem - limitadorDeNivel
        } senao{
          
        }
        
        limitadorDeNivel = limitadorDeNivel + 40
        
        se(xpDoPersonagem >= limitadorDeNivel){
          escreva("\nVocê vai subir mais um nível, pois ta com o XP acima de 100\n")
          seguir()
        }
      }
     
  }

  funcao cavernaSombria(){
    
    mEUlOCALaTUAL = 3
    localizacao = 2
    limpa()
    escreva("\nCAVERNA SOMBRIA\n")
    se(passouPelaIntroducaoDaCavernaSombria == 0){
      passouPelaIntroducaoDaCavernaSombria = 1
      escreva("\nVocê caminha, desce um morro, caminha mais um pouco e finalmente chega na caverna sombria, um local pouco conhecido, ninguém se atrevia a pisar ali.\n")
      escreva("É um lugar que nem mesmo os mais curiosos pisavam o pé, pois essa caverna causava sensações horríveis em quem chegasse perto.\n")
      escreva("Mas ",nomeDoPersonagem," não tem que pensar nesse tipo de coisa, ele tem que passar por ela independentemente de suas vontades próprias.\n")
  
    }
    seguir()

    limpa()
    
    se(vidaDoPersonagem > 0 e passouPelaQualCaminhoSeguir == 0){
      
      qualCaminhoSeguir()
    
    }
    se(vidaDoPersonagem > 0 e passouPelaLiberdadeNaCavernaSombria == 0){
      
      passouPelaLiberdadeNaCavernaSombria = 1
      liberdadeNaCavernaSombria()
    }
    se(vidaDoPersonagem > 0 e passouPelaQualCaminhoSeguirPARTE2 == 0){
      
      qualCaminhoSeguirPARTE2()
    }
    se(vidaDoPersonagem > 0 e passouPelaBatalhaContraVerdugo == 0){
      
      desviaDoVerdugo()
      batalhaContraVerdugo()
      
    }
    se(vidaDoPersonagem > 0 e passouPelaBatalhaContraVerdugo == 0){
      passouPelaBatalhaContraVerdugo = 1
      passouPelaQualCaminhoSeguir = 1
      passouPelaQualCaminhoSeguirPARTE2 = 1
      escreva("\nApós passar pela dura batalha contra o Verdugo, você está no elevador, aproveita pra relaxar um pouco, pelo menos o chão dali é melhor que o da caverna\n")
      escreva("(recuperou 6 de HP)\n")
      
      se((vidaDoPersonagem + 5) > auxVidaDoPersonagem){
        vidaDoPersonagem = auxVidaDoPersonagem
      } senao{
        vidaDoPersonagem = vidaDoPersonagem + 5
      }
      seguir()
    }
    se(passouPelaRecompensaFinalCaverna == 1){
      cadeia opcaoDaVolta 
      limpa()
      status()
      escreva("\nVocê resolve voltar na caverna, mas...o Elevador não está mais ali, é como se alguém tivesse usado ele para descer, portanto, você não tem nada pra fazer aqui.\n")
      escreva("\nSó que aqui ninguém é trouxa, se você quiser, pode simplesmente ir pelo lado da caverna, aí assim você vai voltar pra Vila Abandonada.\n")
      escreva("\nDeseja voltar pra Vila Abandonada?\n1-Sim, vou voltar pra Vila Abandonada\n2-Deixa quieto, melhor seguir pro Pantano dos Lamentos.\n")
      leia(opcaoDaVolta)
      

      enquanto(opcaoDaVolta != "1" e opcaoDaVolta != "2"){
        escreva("Opção 1 ou Opção 2?\n")
        leia(opcaoDaVolta)
      }

      se(opcaoDaVolta == "2"){
        pantanoDosLamentos()
      }
        mEUlOCALaTUAL--
        se(mEUlOCALaTUAL == 1){
          desenhoDaFloresta()
          casoVoltePraFloresta()
            
        } senao se(mEUlOCALaTUAL == 2){
          vilaAbandonada()
          cavernaSombria()
        } senao se(mEUlOCALaTUAL == 3){
          cavernaSombria()
        }
    }
    se(vidaDoPersonagem > 0 e passouPelaRecompensaFinalCaverna == 0){
      passouPelaRecompensaFinalCaverna == 1
      recompensaFinalDaCavernaSombria()
      limpa()
      status()
      escreva("\nApós essa escolha, partiremos para o Pântano dos Lamentos\n")
      seguir()
    }
      
  }

  funcao descansarNaCavernaSombria(){
    se(vidaDoPersonagem > 0){ 
      passouPelaQualCaminhoSeguir = 1
      escreva("\nVocê sente-se cansado depois da última batalha e decide sentar em uma pedra próxima pra descansar(é extremamente desconfortável).")
      escreva("\nRecuperou 4 de HP(caso tenha perdido 4 de HP)\n")

      se((vidaDoPersonagem + 5) > auxVidaDoPersonagem){
        vidaDoPersonagem = auxVidaDoPersonagem
      } senao{
        vidaDoPersonagem = vidaDoPersonagem + 5
      }
      seguir()
      
    } senao{
      taMorto()
    }
  }

  funcao qualCaminhoSeguir(){
    cadeia opcaoDaLiberdade
    inteiro sorteio = 0

    enquanto(opcaoDaLiberdade != "1" e opcaoDaLiberdade != "2"){
      limpa()
      status()
      escreva("\nVocê anda uns 20 mêtros e se depara com dois caminhos.")
      escreva("\nO que deseja fazer agora ",nomeDoPersonagem," ?\n\n1-Escolher um dos caminhos\n2-Voltar região\n")
      leia(opcaoDaLiberdade)
      escolha(opcaoDaLiberdade){

        caso "1":
          cadeia opcaoTuVaiProCaminho1ou2 
          inteiro sorteioDoCaminho = 0
          limpa()
          status()

          escreva("\nOk, os dois caminhos são totalmente escuros(você pode se dar muito bem ou muito mal), você escolhe qual?\n1-Caminho da Esquerda\n2-Caminho da Direita\n")
          leia(opcaoTuVaiProCaminho1ou2)
          
          enquanto(opcaoTuVaiProCaminho1ou2 != "1" e opcaoTuVaiProCaminho1ou2 != "2"){
            escreva("Opção 1 ou Opção 2?\n")
            leia(opcaoTuVaiProCaminho1ou2)
          }
          sorteioDoCaminho = u.sorteia(1,10)
          se(sorteioDoCaminho < 6){
            batalhaContraYanagisawa()
            descansarNaCavernaSombria()
          } senao{
            caminhoDaPocao()
          }
          sorteioDoCaminho = 0
          
        pare

        caso "2":
          se(mEUlOCALaTUAL == 1){
          limpa()
          status()
          escreva("\nVocê já está na região 1, não tem pra onde voltar\n")
          QualCaminhoSeguir()
          
          
        } senao{
          mEUlOCALaTUAL--
          se(mEUlOCALaTUAL == 1){
            desenhoDaFloresta()
            casoVoltePraFloresta()
            
          } senao se(mEUlOCALaTUAL == 2){
            vilaAbandonada()
            
          } senao se(mEUlOCALaTUAL == 3){
            cavernaSombria()
          }
        }

        pare

        pare
          
      }
    }
    
  }


  funcao caminhoDaPocao(){
    limpa()
    status()
    escreva("\nVocê escolhe esse caminho e segue, tenso e apreenssivo, pensando se fez a escolha certa,\n")
    escreva("e no meio da caminho, você encontra um baú pequeno, sua curiosidade é grande e você abre ele, e dentro tem um frasco com líquido vermelho.\n")
    escreva("Você deu sorte, encontrou uma poção!\n")
    casoEncontrePocao()
    escreva("\nSeguindo pelo caminho, você consegue achar a saida dele.\n")
    seguir()

  }




  funcao batalhaContraYanagisawa(){
    
    cadeia opcaoDePreparado

    aTaqueDosInimigos[6] = ataqueDoPersonagem - 2
    vIdaDosInimigos[6] = vidaDoPersonagem - 2
    aUXVIDADOSINIMIGOS[6] = auxVidaDoPersonagem - 2
    dEfesaDosInimigos[6] = defesaDoPersonagem - 2

    limpa()
    status()

    escreva("\nVocê escolhe esse caminho e segue, tenso e apreenssivo, pensando se fez a escolha certa,\n")
    escreva("e você chega em uma parte da caverna que automaticamente faz você se sentir mal, não conseguindo se mexer por um tempo e sentindo um desconforto absurdo!\n")
    escreva("E ali na sua frente, você vê a figura de um homem, ele então caminha até você.\n")
    escreva("Yanagisawa:\n-Você entrou no meu território, quem pisa aqui, não sai mais, e eu vou te demonstrar o porquê!\n")
    escreva("\nYanagisawa começa a se transformar, o corpo dele muda completamente até ficar...igual ao seu, ele virou você!\n")
    escreva("\nYanagisawa:\n-Eu copio a aparência e a força dos meus inimigos.\nInfelizmente, não tenho controle absoluto pois não conheço suas habilidades, mas isso não importa, prepare-se para lutar!\n")

    escreva("Está preparado? Sim? Não?\n")
    leia(opcaoDePreparado)
    
    enquanto(opcaoDePreparado != "Sim" e opcaoDePreparado != "sim"){
      escreva("\nÉ Sim ou Sim, não escreva outra coisa e muito menos tente fugir:\n")
      leia(opcaoDePreparado)
    }
    escreva("Isso mesmo, boa sorte(você vai precisar)\n")
    
      

    inteiro contadorRodada = 0
    inteiro numDoInimigo = 6

    enquanto(vidaDoPersonagem > 0 e vIdaDosInimigos[6] > 0){
      

      limpa()
      
      contadorRodada++
      
      opcaoNaBatalha(numDoInimigo,contadorRodada)

      se(contadorRodada == 5){
        escreva("\nVocê percebe que Yanagisawa está ficando cansado")
      }
      se(contadorRodada > 4){
        dEfesaDosInimigos[6] = dEfesaDosInimigos[6] - 4
      }

      u.aguarde(1000)
      sorteio = 0
      escreva("\nVez de ",nomeDoPersonagem, "\n")
      
      u.aguarde(1200)

      sorteio = u.sorteia(1,20) + ataqueDoPersonagem
      se(sorteio - dEfesaDosInimigos[6] > 0){

        vIdaDosInimigos[6] = vIdaDosInimigos[6] - (sorteio - dEfesaDosInimigos[6])

        escreva("Seu ataque + o dado deu: ", sorteio,"\n")
        escreva("Dano dado: ", sorteio  - dEfesaDosInimigos[6],"\n")
      } senao{
        escreva("Seu ataque + o dado deu: ", sorteio,"\n")
        escreva("Seu dano não superou a defesa do ",inimigosDaCampanhaNormal[6] ,"\n")
      }
      se(vIdaDosInimigos[6] <= 0){
        vIdaDosInimigos[6] = 0
        pare
      } 


      u.aguarde(2000)

      sorteio = 0
      escreva("\nVez de ", inimigosDaCampanhaNormal[6])

      u.aguarde(1200)

      sorteio = u.sorteia(1,20) + aTaqueDosInimigos[6]
      
      se(sorteio - defesaDoPersonagem > 0){
        vidaDoPersonagem = vidaDoPersonagem - (sorteio - defesaDoPersonagem)

        escreva("\nO ataque + o dado do ",inimigosDaCampanhaNormal[6],": ", sorteio,"\n")
        escreva("Dano dado: ", sorteio  - defesaDoPersonagem,"\n")
        se(vidaDoPersonagem < 0){
          vidaDoPersonagem = 0
        }
        
      } senao{
        escreva("\nO ataque + o dado do ",inimigosDaCampanhaNormal[6],": ", sorteio,"\n")
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
        escreva("\nPARABÉNS, você conseguiu derrotar o ", inimigosDaCampanhaNormal[6],"(que copiou seu corpo, basicamente)\n")
        escreva("\nXP obtido:",xPDosInimigos[6],"\n")

        subirDeNivelContraYanagisawa() //aqui tem que criar função pra subir o nível e pegar o XP do inimigo certo
        
      
        seguir()
        limpa()
        status()
      
      } 

  }


  funcao subirDeNivelContraYanagisawa() {
      
      xpDoPersonagem = xpDoPersonagem + xPDosInimigos[6]
      enquanto(xpDoPersonagem >= limitadorDeNivel){

        escreva("\nPARABÉNS, subiu do nível ",nivel," para o nível ",nivel + 1)
        aumentaStatsPorNivel = aumentaStatsPorNivel + 2

        escreva("\nAtributos ganhos:\nVida + ",aumentaStatsPorNivel,"\tDefesa + ",aumentaStatsPorNivel," e Ataque + ",aumentaStatsPorNivel,"\n")
        auxVidaDoPersonagem = auxVidaDoPersonagem + aumentaStatsPorNivel
        vidaDoPersonagem = vidaDoPersonagem + aumentaStatsPorNivel
        defesaDoPersonagem = defesaDoPersonagem + aumentaStatsPorNivel
        ataqueDoPersonagem = ataqueDoPersonagem + aumentaStatsPorNivel
        nivel = nivel + 1
        se(xpDoPersonagem >= limitadorDeNivel){
          xpDoPersonagem = xpDoPersonagem - limitadorDeNivel
        } senao{
          
        }
        
        limitadorDeNivel = limitadorDeNivel + 40
        
        se(xpDoPersonagem >= limitadorDeNivel){
          escreva("\nVocê vai subir mais um nível, pois ta com o XP acima de 100\n")
          
        }
      }
     
  }

  funcao batalhaContraHelga(){
    
    cadeia opcaoDePreparado

    escreva("\n\nHelga:\n-Olá Aventureiro, vejo que você acabou entrando no meu território, e ninguém tem chance contra mim aqui, já que todos ficam fracos pelo meu poder de sedução.\n")
    escreva("\nHelga joga um perfume no ar, fazendo suas pernas tremerem e você se sentir mais fraco.\n")
    escreva("\nHelga:\n-Vamos Aventureiro, vamos ver se você resiste a tudo isso!\n")
    seguir()

    se(classe == "Guerreiro"){
      defesaDoPersonagem = defesaDoPersonagem - 7
      ataqueDoPersonagem = ataqueDoPersonagem - 2
    } senao se(classe == "Mago"){
      defesaDoPersonagem = defesaDoPersonagem - 2
      ataqueDoPersonagem = ataqueDoPersonagem - 5
    } senao se(classe == "Arqueiro"){
      defesaDoPersonagem = defesaDoPersonagem - 5
      ataqueDoPersonagem = ataqueDoPersonagem - 3
    } senao{
      defesaDoPersonagem = defesaDoPersonagem - 30
    }
      

    inteiro contadorRodada = 0
    inteiro numDoInimigo = 7
    enquanto(vidaDoPersonagem > 0 e vIdaDosInimigos[7] > 0){
      

      limpa()

      
      contadorRodada++

      opcaoNaBatalha(numDoInimigo,contadorRodada)

      u.aguarde(1000)
      sorteio = 0
      escreva("\nVez de ",nomeDoPersonagem, "\n")
      
      u.aguarde(1200)

      sorteio = u.sorteia(1,20) + ataqueDoPersonagem
      se(sorteio - dEfesaDosInimigos[7] > 0){

        vIdaDosInimigos[7] = vIdaDosInimigos[7] - (sorteio - dEfesaDosInimigos[7])

        escreva("Seu ataque + o dado deu: ", sorteio,"\n")
        escreva("Dano dado: ", sorteio  - dEfesaDosInimigos[7],"\n")
      } senao{
        escreva("Seu ataque + o dado deu: ", sorteio,"\n")
        escreva("Seu dano não superou a defesa do ",inimigosDaCampanhaNormal[7] ,"\n")
      }
      se(vIdaDosInimigos[7] <= 0){
        vIdaDosInimigos[7] = 0
        pare
      } 


      u.aguarde(2000)

      sorteio = 0
      escreva("\nVez de ", inimigosDaCampanhaNormal[7])

      u.aguarde(1200)

      sorteio = u.sorteia(1,20) + aTaqueDosInimigos[7]
      
      se(sorteio - defesaDoPersonagem > 0){
        vidaDoPersonagem = vidaDoPersonagem - (sorteio - defesaDoPersonagem)

        escreva("\nO ataque + o dado do ",inimigosDaCampanhaNormal[7],": ", sorteio,"\n")
        escreva("Dano dado: ", sorteio  - defesaDoPersonagem,"\n")
        se(vidaDoPersonagem < 0){
          vidaDoPersonagem = 0
        }
        
      } senao{
        escreva("\nO ataque + o dado do ",inimigosDaCampanhaNormal[7],": ", sorteio,"\n")
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
      cadeia opcaoDaHelga
    
      se(vidaDoPersonagem > 0){
        u.aguarde(1000)
        limpa()
        status()
        se(classe == "Guerreiro"){
        defesaDoPersonagem = defesaDoPersonagem + 7
        ataqueDoPersonagem = ataqueDoPersonagem + 2
      } senao se(classe == "Mago"){
        defesaDoPersonagem = defesaDoPersonagem + 2
        ataqueDoPersonagem = ataqueDoPersonagem + 5
      } senao se(classe == "Arqueiro"){
        defesaDoPersonagem = defesaDoPersonagem + 5
        ataqueDoPersonagem = ataqueDoPersonagem + 3
      } senao{
        defesaDoPersonagem = defesaDoPersonagem + 30
      }
      escreva("\nPARABÉNS, você conseguiu derrotar o ", inimigosDaCampanhaNormal[7],"\n")
      escreva("\nXP obtido:",xPDosInimigos[7],"\n")

      subirDeNivelContraHelga() 
      limpa()
      status()
      escreva("\nLogo após dar o último golpe, Helga desaba no chão, e você sente que seu corpo voltou ao normal, o efeito do território dela parece ter acabado.\n")
      escreva("Você caminha para em direção aos 3 caminhos da caverna, quando você ouve a voz de Helga\n\n")
      escreva("Helga:\n-E-Espere Aventureiro...eu t-tenho algo pra você...\nVocê vira-se pra olhar, e ela está com uma espécie de colar nas mãos\n")
      escreva("\nHelga:\n-I-Isto é...um amuleto...um amuleto da sorte, se você usa-lo no pescoço, terá mais sorte na sua jornada...Por favor...Pegue...\n")
      escreva("Nesse momento, Helga para de falar e apaga, você não sabe se ela morreu ou só desmaiou, mas de qualquer forma, o amuleto está na mão dela, você pega?\n\n1-Pego\n2-Eu não vou cair nessa\n")
      leia(opcaoDaHelga)
      
      enquanto(opcaoDaHelga != "1" e opcaoDaHelga != "2"){
        escreva("Opção 1 ou Opção 2?\n")
        leia(opcaoDaHelga)
      }

      limpa()
      status()
      se(opcaoDaHelga == "1"){
        escreva("\nBOOOAAA ",nomeDoPersonagem,",agora que você decidiu pegar o amuleto, vou te contar uma coisa.\n")
        escreva("Existe uma sorte mínima nas explorações, e sua sorte mínima varia conforme a classe.\n")
        escreva("O Guerreiro começa com sorte minima de 1, o Mago começa com 3 e o Arqueiro começa com 2.\n")
        escreva("Esse amuleto concede +6 de sorte mínima, ou seja, chega de não achar porra nenhuma ao explorar um local.\nObrigado por confiar em Helga...mas agora me surgiu uma dúvida, pq ela te ofereceu aquilo?\nEnfim, vamos seguir com as escolhas dos 3 caminhos\n")
        seguir()

        sorteDoPersonagem = sorteDoPersonagem + 6
      }
      senao{
        escreva("\nIsso mesmo aventureiro, não é só porque a moça é bonita, formosa, cheirosa, gata, DEUSA SUPREM...me empolguei\n")
        escreva("Enfim, não é só porque a moça era bonita que você tinha que aceitar o amuleto, podia ser uma armadilha.\nDito Isso, vamos continuar com a escolha dos 3 caminhos.\n")
      }
      
  
      limpa()
      status()
      
    } 

  }

  

  funcao subirDeNivelContraHelga() {
      
      xpDoPersonagem = xpDoPersonagem + xPDosInimigos[7]
      enquanto(xpDoPersonagem >= limitadorDeNivel){

      escreva("\nPARABÉNS, subiu do nível ",nivel," para o nível ",nivel + 1)
      aumentaStatsPorNivel = aumentaStatsPorNivel + 2

      escreva("\nAtributos ganhos:\nVida + ",aumentaStatsPorNivel,"\tDefesa + ",aumentaStatsPorNivel," e Ataque + ",aumentaStatsPorNivel,"\n")
      auxVidaDoPersonagem = auxVidaDoPersonagem + aumentaStatsPorNivel
      vidaDoPersonagem = vidaDoPersonagem + aumentaStatsPorNivel
      defesaDoPersonagem = defesaDoPersonagem + aumentaStatsPorNivel
      ataqueDoPersonagem = ataqueDoPersonagem + aumentaStatsPorNivel
      nivel = nivel + 1
      se(xpDoPersonagem >= limitadorDeNivel){
        xpDoPersonagem = xpDoPersonagem - limitadorDeNivel
      } senao{
        
      }
      
      limitadorDeNivel = limitadorDeNivel + 40
        
        se(xpDoPersonagem >= limitadorDeNivel){
          escreva("\nVocê vai subir mais um nível, pois ta com o XP acima de 100\n")
          seguir()
        }
      }
     
  }

  funcao liberdadeNaCavernaSombria(){
    cadeia opcaoDaLiberdade
    inteiro sorteio = 0

    limpa()

    enquanto(opcaoDaLiberdade != "1" e opcaoDaLiberdade != "2" e opcaoDaLiberdade != "3"){
      limpa()
      status()
      escreva("\nDepois de seguir pelo caminho escolhido, você chega numa área maior da caverna e se depara com 3 caminhos diferentes dessa vez(é um labirinto essa porcaria).")
      escreva("\nPorém, você pode explorar o local antes de escolher um dos caminhos, o que deseja fazer?")
      escreva("\n\n1-Escolher um dos caminhos\n2-Explorar o local\n3-Voltar região\n")
      leia(opcaoDaLiberdade)
      limpa()
      status()

      escolha(opcaoDaLiberdade){

        caso "1":
        
        se(vIdaDosInimigos[6] == 0){
          escreva("\nOk então, bora seguir com as escolhas dos caminhos.\n")
          u.aguarde(1000)
          limpa()
          

        } senao{
          escreva("\nVocê decide seguir com as escolhas dos caminhos, mas na mesma hora você sente seu corpo paralisar.\n")
          escreva("Logo após isso, você começa a sentir um cheiro estranho, um cheiro...doce, isso causa sensações estranhas no seu corpo.\n")
          escreva("Você começa a escutar passos, e quando tu olha pra trás para ver o que é, ali está uma moça EXTREMAMENTE GATA, você fica hipnotizado.\n")
          batalhaContraHelga()
          descansar()
        }

        

        
          
        pare

        caso "2":
          
          se(vIdaDosInimigos[6] == 0){

            escreva("\nVocê começa a procurar no local se acha alguma coisa, e encontra!\n")
            pistola()
            u.aguarde(1000)
            limpa()
            status()
            escreva("\nLogo após encontrar a pistola, você começa a sentir um cheiro estranho, um cheiro...doce, isso causa sensações estranhas no seu corpo.\n")
            escreva("Você começa a escutar passos, e quando tu olha pra trás para ver o que é, ali está uma moça EXTREMAMENTE GATA, você fica hipnotizado.\n")
            batalhaContraHelga()
            descansar()

          } senao{

            escreva("\nVocê decide explorar o local pra ver se acha alguma coisa, só que ao mesmo tempo você começa a sentir um cheiro estranho,\num cheiro...doce, isso causa sensações estranhas no seu corpo.\n")
            escreva("Você começa a escutar passos, e quando tu olha pra trás para ver o que é, ali está uma moça EXTREMAMENTE GATA, você fica hipnotizado.\n")
            batalhaContraHelga()
            descansar()
            limpa()
            status()
            escreva("\nVocê ficou tão maluco pela mulher que até esqueceu que tava explorando o local, você volta a olhar em volta pra ver se acha algo de bom,\n")
            escreva("e acaba vendo algo brilhando, você decide encostar pra ver o que era e sente uma grande energia vinda pra você(recuperou 10 de HP)\n")
            se((vidaDoPersonagem + 10) > auxVidaDoPersonagem){
              vidaDoPersonagem = auxVidaDoPersonagem
            } senao{
              vidaDoPersonagem = vidaDoPersonagem + 10
            }

          }
  

        pare

        caso "3":
          
        se(mEUlOCALaTUAL == 1){
          limpa()
          status()
          escreva("\nVocê já está na região 1, não tem pra onde voltar\n")
          liberdadeNaCavernaSombria()//alterar
          
          
        } senao{
          mEUlOCALaTUAL--
          se(mEUlOCALaTUAL == 1){
            desenhoDaFloresta()
            casoVoltePraFloresta()
            
          } senao se(mEUlOCALaTUAL == 2){
            vilaAbandonada()
          } senao se(mEUlOCALaTUAL == 3){
            cavernaSombria()
          }
        }

        pare

      }
    }
    
  }

  funcao qualCaminhoSeguirPARTE2(){
    cadeia opcaoDaLiberdade
    inteiro sorteio = 0

    enquanto(opcaoDaLiberdade != "1" e opcaoDaLiberdade != "2"){
      limpa()
      status()
      escreva("\nVocê anda mais uns 30 mêtros e se depara com 3 caminhos.")
      escreva("\nO que deseja fazer agora ",nomeDoPersonagem," ?\n\n1-Escolher um dos caminhos\n2-Voltar região\n")
      leia(opcaoDaLiberdade)
      escolha(opcaoDaLiberdade){

        caso "1":
          cadeia opcaoTuVaiProCaminho1ou2ou3 
          inteiro sorteioDoCaminho = 0
          limpa()
          status()

          escreva("\nPartimos com as escolhas dos 3 caminhos, você quer ir por qual?\n\n1-Caminho da Esqueda\n2-Caminho do Meio\n3-Caminho da Direita\n")
          leia(opcaoTuVaiProCaminho1ou2ou3)
          enquanto(opcaoTuVaiProCaminho1ou2ou3 != "1" e opcaoTuVaiProCaminho1ou2ou3 != "2" e opcaoTuVaiProCaminho1ou2ou3 != "3"){

            escreva(";———; digita certo!\n")
            leia(opcaoTuVaiProCaminho1ou2ou3)

          }
          limpa()
          status()
          
          sorteioDoCaminho = u.sorteia(1,9)
          se(sorteioDoCaminho > 7){
            caminhoCerto()
            
          } senao se(sorteioDoCaminho > 4 e sorteioDoCaminho < 8){
            sorteioDoCaminho = 0
            caminhoInutil()
            seguir()
            limpa()
            status()
            escreva("\nCoitado, só perdeu tempo, mas e agora, qual caminho quer seguir?\n")
            se(opcaoTuVaiProCaminho1ou2ou3 == "1"){
              escreva("\nCaminho do Meio\nCaminho da Direita\n")
              leia(opcaoTuVaiProCaminho1ou2ou3)
              
              enquanto(opcaoTuVaiProCaminho1ou2ou3 != "1" e opcaoTuVaiProCaminho1ou2ou3 != "2"){
                escreva("Opção 1 ou Opção 2?\n")
                leia(opcaoTuVaiProCaminho1ou2ou3)
              }

            } senao se(opcaoTuVaiProCaminho1ou2ou3 == "2"){
              escreva("\nCaminho da Esquerda\nCaminho da Direita\n")
              leia(opcaoTuVaiProCaminho1ou2ou3)

              enquanto(opcaoTuVaiProCaminho1ou2ou3 != "1" e opcaoTuVaiProCaminho1ou2ou3 != "2"){
                escreva("Opção 1 ou Opção 2?\n")
                leia(opcaoTuVaiProCaminho1ou2ou3)
              }

            } senao{
              escreva("\nCaminho da Esquerda\nCaminho do Meio\n")
              leia(opcaoTuVaiProCaminho1ou2ou3)

              enquanto(opcaoTuVaiProCaminho1ou2ou3 != "1" e opcaoTuVaiProCaminho1ou2ou3 != "2"){
                escreva("Opção 1 ou Opção 2?\n")
                leia(opcaoTuVaiProCaminho1ou2ou3)
              }
            }
              sorteioDoCaminho = u.sorteia(1,10)
              se(sorteioDoCaminho > 6){
              caminhoCerto()
            }senao{
              caminhoTomaPANCADA()
              seguir()
              limpa()
              status()
              escreva("\nCoitado, só perdeu tempo e ainda tomou dano, mas como só restou um caminho, você vai por ele.\n")
              seguir()
              limpa()
              caminhoCerto()
            }
            
          
          
          } senao{
            sorteioDoCaminho = 0
            caminhoTomaPANCADA()
            seguir()
            limpa()
            status()
            escreva("\nCoitado, só perdeu tempo e se machucou, mas e agora, qual caminho quer seguir?\n")
            se(opcaoTuVaiProCaminho1ou2ou3 == "1"){
              escreva("\nCaminho do Meio\nCaminho da Direita\n")
              leia(opcaoTuVaiProCaminho1ou2ou3)

              enquanto(opcaoTuVaiProCaminho1ou2ou3 != "1" e opcaoTuVaiProCaminho1ou2ou3 != "2"){
                escreva("Opção 1 ou Opção 2?\n")
                leia(opcaoTuVaiProCaminho1ou2ou3)
              }

            } senao se(opcaoTuVaiProCaminho1ou2ou3 == "2"){
              escreva("\nCaminho da Esquerda\nCaminho da Direita\n")
              leia(opcaoTuVaiProCaminho1ou2ou3)

              enquanto(opcaoTuVaiProCaminho1ou2ou3 != "1" e opcaoTuVaiProCaminho1ou2ou3 != "2"){
                escreva("Opção 1 ou Opção 2?\n")
                leia(opcaoTuVaiProCaminho1ou2ou3)
              }

            } senao{
              escreva("\nCaminho da Esquerda\nCaminho do Meio\n")
              leia(opcaoTuVaiProCaminho1ou2ou3)

              enquanto(opcaoTuVaiProCaminho1ou2ou3 != "1" e opcaoTuVaiProCaminho1ou2ou3 != "2"){
                escreva("Opção 1 ou Opção 2?\n")
                leia(opcaoTuVaiProCaminho1ou2ou3)
              }

            }
              sorteioDoCaminho = u.sorteia(1,10)
              se(sorteioDoCaminho > 7){
                caminhoCerto()
              }senao{
                caminhoInutil()
                seguir()
                limpa()
                status()
                escreva("\nCoitado, só perdeu tempo, mas como só restou 1 caminho, você vai por ele.\n")
                seguir()
                limpa()
                caminhoCerto()
              }

          }
        
          
        pare

        caso "2":
          se(mEUlOCALaTUAL == 1){
            limpa()
            status()
            escreva("\nVocê já está na região 1, não tem pra onde voltar\n")
            QualCaminhoSeguir()
          
          
        } senao{
          mEUlOCALaTUAL--
          se(mEUlOCALaTUAL == 1){
            desenhoDaFloresta()
            casoVoltePraFloresta()
            
          } senao se(mEUlOCALaTUAL == 2){
            vilaAbandonada()
            
          } senao se(mEUlOCALaTUAL == 3){
            cavernaSombria()
          }
        }

        pare

        pare
          
      }
    }
    
  }

  funcao caminhoCerto(){
    limpa()
    status()

    escreva("\nVocê anda, o caminho é escuro, gotas de água vão caindo do teto da caverna e pingando no chão.\n")
    escreva("Sensações de \"Eu estou sendo observado\",aranhas formam teias por toda parte, mas o que é uma aranha pra quem já enfrentou O SEU MADRUGA NÉ?\n")
    escreva("Você continua seu trajeto, parece ter uma luz no fim do caminho, e quando você saí...era um cristal brilhando ;-;\n")
    escreva("Pelo menos você olha ao redor e percebe que tem um...elevador ali na frente?\n")
    escreva("Um elevador em uma caverna dessas? Você se aproxima pra ver e clica no botão para fazer o elevador subir, você pode ver\n")
    escreva("as cordas do elevador subindo(é, não é aqueles elevadores que tem em prédios não, esse é mais antigão), você também pode reparar\n")
    escreva("que começou uma contagem no topo do elevador, indicando que daqui a 4 minutos o elevador chegará ali.\n")
    escreva("\nVocê decide esperar o elevador chegar e aproveita para relaxar um pouco(recuperou 4 de HP).\n")

    seguir()

  }
  
  funcao caminhoInutil(){
    limpa()
    status()

    escreva("\nCom receio, você parte por esse caminho, ele é coberto por uma neblina estranha(parecida com a que tinha na FLoresta das Névoas)\n")
    escreva("Você segue andando, até que chega em uma parte da caverna que não tem saída...é, parece que você escolheu o caminho errado, vamos voltar!\n")
  

  }

  funcao caminhoTomaPANCADA(){
    limpa()
    status()

    escreva("\nVocê entra por esse caminho bastante desconfiado, o cheiro daquele local é horrível, mas isso não é o pior, o pior mesmo são os barulhos!\n")
    escreva("Sons de uivado de animal, você até fica com medo de continuar por esse caminho, mas a escolha de ir por aqui foi sua, não minha.\n")
    escreva("Caminhando mais um pouco(e o uivado só aumentando), tu pisa em algo, olha pro chão e vê que é uma lan...lanterna(nossa mas que conveniente não é mesmo?).\n")
    escreva("Você liga ela pra poder iluminar o local, e imediatamente percebe 2 coisas.\nA primeira é que esse não é o caminho certo, pois ali na frente tem uma parede bloqueando o caminho.\n")
    escreva("E a segunda coisa é...TEM UM FUCKING LOBO ALI, ele parece o que você enfrentou na floresta, só que maior, BEM MAIOR, ele parte pra cima de você.\n")
    escreva("Imediatamente tu larga a lanterna e corre para sair daquele caminho, e ao mesmo tempo, flechas começam a sair de vários lugares, aquele caminho é uma completa armadilha!\n")
    escreva("Você corre desesperadamente, tanto do Lobo quanto das flechas tentando te acertar, e está quase lá, está quase chegando no começo do caminho, e é acertado por uma flecha bem na perna.\n")
    escreva("A dor é alta e você cai no chão, já pensando que vai virar comida de Lobo, só que olhando pra trás, está ali, o Lobo estirado no chão, com uma flecha cravada no pescoço.\n")
    escreva("Pobre animal, só queria garantir a janta de mais tarde, e foi morto em uma armadilha que era pra ajudar a pegar sua janta.\n")
    escreva("Enfim, você levanta com um pouco de dor na perna(6 de dano tomado) e volta pras escolhas dos caminhos\n.")
    
  }

  funcao desviaDoVerdugo(){
    cadeia opcaoFicaParadoOuSeFode 
    limpa()
    status()

    escreva("\nVocê estava aguardando ansiosamente o elevador chegar e você poder sair dali, mas tu sabe bem que não vai ser fácil assim né?\n\n")
    escreva("Algumas pedrinhas começam a cair do teto da caverna, alguns barulhos vêm da parede ao seu lado.\n")
    escreva("No mesmo momento, ALGO AFIADO SAÍ DA PAREDE E VEM EM SUA DIREÇÃO.\n\nO que você decide fazer?\n1-Ficar parado\n2-Desviar\n")
    leia(opcaoFicaParadoOuSeFode)
    
    enquanto(opcaoFicaParadoOuSeFode != "1" e opcaoFicaParadoOuSeFode != "2"){
      escreva("Opção 1 ou Opção 2?\n")
      leia(opcaoFicaParadoOuSeFode)
    }

    limpa()
    status()
    se(opcaoFicaParadoOuSeFode == "1"){
      escreva("\nVocê decide...ficar parado? Ta né\nVocê fica parado e SIMPLESMENTE aquele negócio afiado desvia de você, ou seja, ficar parado era a escolha certa!\n")

    } senao{
      escreva("\nVocê decide fazer o óbvio e desvia daquela coisa afiada, e...aquilo desvia a rota também e te acerta(tomou 4 de dano).\n")
      vidaDoPersonagem = vidaDoPersonagem - 4
    }

    escreva("\nApós isso acontecer, dá rapidamente pra ver que é alguma criatura, e aquilo era o rabo da criatura(eu espero que aquilo seja o rabo).\n")
    
    seguir()
    status()

    escreva("\nAgora, o inimigo vem de cima, ele tenta te atacar com as garras dele.\n\nO que você faz?\n1-Fica parado\n2-Desvia\n")
    leia(opcaoFicaParadoOuSeFode)

    enquanto(opcaoFicaParadoOuSeFode != "1" e opcaoFicaParadoOuSeFode != "2"){
      escreva("Opção 1 ou Opção 2?\n")
      leia(opcaoFicaParadoOuSeFode)
    }

    limpa()
    status()

    se(opcaoFicaParadoOuSeFode == "1"){
      escreva("\nVocê decide ficar paradão...e a criatura te acerta na cara(tomou 4 de dano). O QUE VOCÊ ACHOU QUE IRIA ACONTECER? TU ACHOU QUE ELE IA ERRAR????\n")
      vidaDoPersonagem = vidaDoPersonagem - 4

    } senao{
      escreva("\nVocê decide desviar, abaixando-se rapidamente antes de ser acertado, e consegue desviar\n")
      
    }

  }

  funcao batalhaContraVerdugo(){
    
    cadeia opcaoDePreparado

    escreva("\nApós esses evento, você vê saltando do teto da caverna e pousando no chão, uma criatura que parece uma mistura de insento com ser humano.\n")
    escreva("A criatura tem cerca de 2,50 metros de altura, possui garras afiadas, dentes afiados, olhos vermelhos e uma cauda afiada(a mesma que ele usou pra te atacar antes).\n")
    escreva("Você fica pensando que não precisa mata-lá, só precisa segurar ela até o elevador descer(afinal, ela parece ser bem forte).\nSerá que você aguenta isso?\n")
    seguir()
      
    inteiro contadorRodada = 0
    inteiro numDoInimigo = 8
    enquanto(vidaDoPersonagem > 0 e vIdaDosInimigos[8] > 0){
      aTaqueDosInimigos[8] = aTaqueDosInimigos[8] + 3

      limpa()

      
      contadorRodada++
      
      se(contadorRodada > 5){
        se(contadorRodada == 6){
          escreva("\nO Elevador chegou\n")
        }
        opcaoNaBatalhaContraVerdugo(numDoInimigo,contadorRodada)
        se(fugiuDoVerdugo == 1){
          pare
        }
        
      } senao{
        opcaoNaBatalha(numDoInimigo,contadorRodada)
      }
        

      u.aguarde(1000)
      sorteio = 0
      escreva("\nVez de ",nomeDoPersonagem, "\n")
      
      u.aguarde(1200)

      sorteio = u.sorteia(1,20) + ataqueDoPersonagem
      se(sorteio - dEfesaDosInimigos[8] > 0){

        vIdaDosInimigos[8] = vIdaDosInimigos[8] - (sorteio - dEfesaDosInimigos[8])

        escreva("Seu ataque + o dado deu: ", sorteio,"\n")
        escreva("Dano dado: ", sorteio  - dEfesaDosInimigos[8],"\n")
      } senao{
        escreva("Seu ataque + o dado deu: ", sorteio,"\n")
        escreva("A pele blindada de ",inimigosDaCampanhaNormal[8] ," resistiu ao seu ataque\n")
      }
      se(vIdaDosInimigos[8] <= 0){
        vIdaDosInimigos[8] = 0
        pare
      } 


      u.aguarde(2000)

      sorteio = 0
      escreva("\nVez de ", inimigosDaCampanhaNormal[8])

      u.aguarde(1200)

      sorteio = u.sorteia(1,20) + aTaqueDosInimigos[8]
      
      se(sorteio - defesaDoPersonagem > 0){
        vidaDoPersonagem = vidaDoPersonagem - (sorteio - defesaDoPersonagem)

        escreva("\nO ",inimigosDaCampanhaNormal[8]," te acerta, o ataque deu: ", sorteio,"\n")
        escreva("Dano dado: ", sorteio  - defesaDoPersonagem,"\n")
        se(vidaDoPersonagem < 0){
          vidaDoPersonagem = 0
        }
        
      } senao{
        escreva("\nO ataque + o dado do ",inimigosDaCampanhaNormal[8],": ", sorteio,"\n")
        escreva("Seu dano não superou a defesa do ", nomeDoPersonagem,"\n")
        
      }
      u.aguarde(2000)
       
      se(vidaDoPersonagem == 0){
        limpa()
        escreva("\nVerdugo te acerta com as garras no seu peito, furando seus órgãos internos, você até tenta resistir, mas não consegue\n")
        escreva("Após isso, Verdugo agarra sua cabeça com as duas garras, e com uma só mordida, come sua cabeça.\n",nomeDoPersonagem," morreu\n")
        taMorto()
        u.aguarde(3000)
      
        limpa()
        

        
      }  
      
      u.aguarde(1000)
      

     }
    
      se(vidaDoPersonagem > 0 e vIdaDosInimigos[8] == 0){
        u.aguarde(1000)
        limpa()
        status()
        escreva("\nVocê acerta o ", inimigosDaCampanhaNormal[8]," e ele caí no chão, espirrando uma gosma amarela, gritando de dor, se contorcendo todo e...finalmente morre.\n")
        escreva("\nXP obtido:",xPDosInimigos[8],"\n")

        subirDeNivel() //aqui tem que criar função pra subir o nível e pegar o XP do inimigo certo
        
        escreva("\nO Elevador chega bem na hora, e você vai até ele pra subir.\n")
        seguir()
        limpa()
        status()
      
      } 

  }

  
  
  funcao opcaoNaBatalhaContraVerdugo(inteiro numDoInimigo, inteiro contadorRodada){
    cadeia opcao 

    enquanto(opcao != "1" e opcao != "2" e opcao != "3"){
      escreva("Rodada ",contadorRodada)
      escreva("\nUsuário:",nomeDoPersonagem,"\t│\t",vidaDoPersonagem,"/",auxVidaDoPersonagem,"\n")
      escreva("Inimigo:",inimigosDaCampanhaNormal[numDoInimigo],"\t│\t",vIdaDosInimigos[numDoInimigo],"/",aUXVIDADOSINIMIGOS[numDoInimigo],"\n\n")
      
      escreva("Sua vez!\nO que você quer fazer?\n1-Atacar\n2-Usar Poção\n3-Fugir pelo elevador\n")
      leia(opcao)
      limpa()
    }
    se(opcao == "3"){
      fugiuDoVerdugo = 1
      escreva("\nEu não vou nem testar sua sorte aqui, só de ter aguentado tudo isso, você merece sair vivo!\n")
      escreva("\nO Verdugo tenta te acertar, mas você desvia e corre pro Elevador, abre ele, entra e imediatamente clica desesperadamente no botão pra subir.\n")
      escreva("\nO Verdugo tenta a todo custo abrir a porta, arranhando, chutando, mas o elevador finalmente sobe.\n")
      escreva("Você fica aliviado um pouco, mas a última coisa que você são aqueles olhos vermelhos do Verdugo.\n")

      seguir()
    }
    
    
    se(opcao == 2){ 
      pocao()
      escreva("\nAinda é ")
      opcaoNaBatalha()
      
    } senao se(opcao == 1){
        
    }      
  }
  

  funcao subirDeNivelContraVerdugo() {
      
      xpDoPersonagem = xpDoPersonagem + xPDosInimigos[8]
      enquanto(xpDoPersonagem >= limitadorDeNivel){

        escreva("\nPARABÉNS, subiu do nível ",nivel," para o nível ",nivel + 1)
        aumentaStatsPorNivel = aumentaStatsPorNivel + 2

        escreva("\nAtributos ganhos:\nVida + ",aumentaStatsPorNivel,"\tDefesa + ",aumentaStatsPorNivel," e Ataque + ",aumentaStatsPorNivel,"\n")
        auxVidaDoPersonagem = auxVidaDoPersonagem + aumentaStatsPorNivel
        vidaDoPersonagem = vidaDoPersonagem + aumentaStatsPorNivel
        defesaDoPersonagem = defesaDoPersonagem + aumentaStatsPorNivel
        ataqueDoPersonagem = ataqueDoPersonagem + aumentaStatsPorNivel
        nivel = nivel + 1
        se(xpDoPersonagem >= limitadorDeNivel){
          xpDoPersonagem = xpDoPersonagem - limitadorDeNivel
        } senao{
          
        }
        
        limitadorDeNivel = limitadorDeNivel + 40
        
        se(xpDoPersonagem >= limitadorDeNivel){
          escreva("\nVocê vai subir mais um nível, pois ta com o XP acima de 100\n")
          seguir()
        }
      }
     
  }

  funcao recompensaFinalDaCavernaSombria(){
    se(passouPelaRecompensaFinalCaverna == 0){
      passouPelaRecompensaFinalCaverna = 1
      
    
      cadeia opcaoRecompensaFinalCavernaSombria
      limpa()
      status()
      escreva("\nParabéns mais uma vez, conseguiu chegar no fim de mais uma região.\n")
      escreva("Você chega no final da caverna e há 4 itens em cima de uma mesa, mas só poderá escolher 1 item.\n")
      escreva("\nE as escolhas são:\n")
      escreva("1-Cristal Mágico Vermelho: Essa porcaria recupera a vida inteira.\n")
      escreva("2-Cristal Mágico Verde: Concede quase todo o XP necessário pra subir de nível.\n")
      escreva("3-Martelo da força espiritual: Esse martelo comum com nome diferenciado aumenta seu ataque em 20(talvez a melhor recompensa).\n")
      escreva("4-Pingente da Helga: Não sei como isso veio parar aqui, mas aumenta sua vida máxima em 15 pontos.\n")
      escreva("\nDigite o número da sua escolha: ")
      leia(opcaoRecompensaFinalCavernaSombria)

      enquanto(opcaoRecompensaFinalCavernaSombria != "1" e opcaoRecompensaFinalCavernaSombria != "2" e opcaoRecompensaFinalCavernaSombria != "3" e opcaoRecompensaFinalCavernaSombria != "4"){
        escreva("\nAh...escreva direito!\n")
        leia(opcaoRecompensaFinalCavernaSombria)
      }

      se(opcaoRecompensaFinalCavernaSombria == "1"){
        escreva("\nVocê toca no Cristal Mágico Vermelho e sente uma revigoração imensa(vida inteira recuperada)\n.")
        vidaDoPersonagem = auxVidaDoPersonagem
        
      } senao se(opcaoRecompensaFinalCavernaSombria == "2"){
        escreva("\nVocê toca no Cristal Mágico Verde e sente uma energia imensa.\n")
        xpDoPersonagem = limitadorDeNivel - 1
          
        
      } senao se(opcaoRecompensaFinalCavernaSombria == "3"){
        inteiro danoDoMartelao = 20
        casoEncontreARMA(danoDoMartelao)

      } senao se(opcaoRecompensaFinalCavernaSombria == "4"){
        escreva("\nVocê resolve pegar o pingente e colocar no pescoço, imediatamente se sente mais poderoso, mais vivo e com mais saúde(mais 15 de HP)\n")
        auxVidaDoPersonagem = auxVidaDoPersonagem + 15
        vidaDoPersonagem = vidaDoPersonagem + 15

      }

      seguir()
      pantanoDosLamentos()
    } senao{
      pantanoDosLamentos()
    }
  }
  
  
  funcao pantanoDosLamentos(){
    mEUlOCALaTUAL = 4
    localizacao = 3
    cadeia opcaoDaLiberdade
    
    limpa()
    escreva("\nPÂNTANO DOS LAMENTOS\n")
    se(vidaDoPersonagem > 0 e passouPelaIntroducaoDoPantano == 0){
      passouPelaIntroducaoDaCavernaSombria = 1

      escreva("\n\nVocê finalmente chegou na penultima região, o pântano dos lamentos, e aqui você já vai lamentar bastante, pois tenho um recado.\n")
      escreva("\nEssa é a última vez que você poderá voltar região, então se quiser voltar pra Caverna, ou depois pra Vila e depois pra floresta, a hora é agora!\n")
      
      seguir()
      limpa()
      enquanto(opcaoDaLiberdade != "1" e opcaoDaLiberdade != "2"){
        limpa()
        status()
        escreva("\nO que quer fazer meu consagrado ",nomeDoPersonagem," ?\n\n1-Não to nem aí pro passado, vou seguir em frente\n2-Voltar região, sou curioso\n")
        leia(opcaoDaLiberdade)

        enquanto(opcaoDaLiberdade != "1" e opcaoDaLiberdade != "2"){
          escreva("Opção 1 ou Opção 2?\n")
          leia(opcaoDaLiberdade)
        }

        escolha(opcaoDaLiberdade){

          caso "1":

            escreva("Ok então, bora seguir.")
            u.aguarde(1000)
            limpa()

          pare

      
          caso "2":
            
         
            mEUlOCALaTUAL--
            se(mEUlOCALaTUAL == 1){
              desenhoDaFloresta()
              casoVoltePraFloresta()
              
            } senao se(mEUlOCALaTUAL == 2){
              vilaAbandonada()
              cavernaSombria()
            } senao se(mEUlOCALaTUAL == 3){
              cavernaSombria()
            }
          

          pare

        }
      }
      
    }
    limpa()
    status()
    escreva("\nVocê caminha um pouco, analisando aquele pântano, e ao longe, avista o Castelo Dourado, mas tu sabe que vai se ferrar muito até chegar lá.\n")
    escreva("Logo após avistar o Castelo Dourado, você sente alguém te observando.\n")
    escreva("E ali, em cima de uma árvore, há uma imagem de um homem com cabelos negros e longos, uma máscara cobrindo a boca e um sobretudo preto, o homem desaparece em segundos.\n")

    seguir()

    se(vidaDoPersonagem > 0 e vIdaDosInimigos[10] == 0){
      escreva("\nVocê decidiu voltar ao lugar com mais armadilhas no reino inteiro, e logo que chega, uma flecha voa em direção a sua perna.\n")
      escreva("Tomou 5 de dano(melhor não voltar aqui mais, vou te mandar de volta pro castelo antes que você se ferre).")
      
      seguir()
      casteloDourado()
    }
    se(vidaDoPersonagem > 0 e passouPelasArmadilhasDoPantano == 0){
      passouPelasArmadilhasDoPantano = 1

      armadilhasDoPantanoPARTE1()
      se(vidaDoPersonagem > 0){
        armadilhasDoPantanoPARTE2()
      }
      se(vidaDoPersonagem > 0){
        armadilhasDoPantanoPARTE3()
        
      }
      se(vidaDoPersonagem > 0){
        armadilhasDoPantanoPARTE4()
      }
      se(vidaDoPersonagem > 0){
        armadilhasDoPantanoPARTE5()
      }
      se(vidaDoPersonagem > 0){
        armadilhasDoPantanoPARTE6()
      }
      se(vidaDoPersonagem > 0){
        batalhaContraKarasu()

        se(vidaDoPersonagem > 0){
          escreva("\nApós a dura luta contra Karasu, você finalmente conseguiu acabar o Pântano e avançar para o Castelo Dourado, a última região.\n")
          escreva("Talvez você esteja estranhando que não há recompensa final aqui né? pois bem, vai ter sim, só que no inicio da próxima região, Boa Sorte!\n")
          
          seguir()
        }
      }
      
      
    }
    
  }

  funcao armadilhasDoPantanoPARTE1(){
    cadeia opcaoSaposOuCobras

    limpa()
    status()
    escreva("\nApós o homem desaparecer, você vê dois caminhos(que novidade)\nUm caminho parece ter várias cobras e o outro parece ter apenas sapos.\n\n")
    escreva("Qual caminho você quer seguir?\n1-O das cobras\n2-O dos Sapos\n")
    leia(opcaoSaposOuCobras)
    
    enquanto(opcaoSaposOuCobras != "1" e opcaoSaposOuCobras != "2"){
      escreva("Opção 1 ou Opção 2?\n")
      leia(opcaoSaposOuCobras)
    }

    limpa()
    status()

    se(opcaoSaposOuCobras == "1"){
      escreva("\nVocê é um completo suicida e resolve seguir o caminho das cobras, e elas...parecem bem mansas?QUE?\n")
      escreva("As cobras te ignoram completamente, poxa amigo, nem as cobras notaram sua presença, aí é F#@$.\n")
      
      
    
    }se(opcaoSaposOuCobras == "2"){

      escreva("\nVocê resolve seguir pelo caminho mais óbvio, e os sapos começam a te olhar torto(???).\n")
      escreva("Tu continua caminhando de boa, até os sapos começarem a PULAR em cima de você, e começam a surgir mais, uns 10, uns 20, UNS 50, 100, MIL, NÃO SEI.\n")
      escreva("TEM TANTO SAPO QUE EU PERDI AS CONTAS, eles te esmagam, você consegue se livrar deles e correr, mas saiu levemente ferido(tomou 3 de dano).\n")
      vidaDoPersonagem = vidaDoPersonagem - 3
    }
    
    seguir()
  }

  funcao armadilhasDoPantanoPARTE2(){
    cadeia bauVermelhobauVerde

    limpa()
    status()

    escreva("\nApós a escolha do último caminho, você vê 2 baús e uma plaquinha escrita: \"Um baú te dará força, e o outro te enfraquecerá temporariamente\".\n")
    escreva("\nQual baú você deseja abrir?\n1-O Baú vermelho\n2-O Baú verde\n")
    leia(bauVermelhobauVerde)
    
    enquanto(bauVermelhobauVerde != "1" e bauVermelhobauVerde != "2"){
      escreva("Opção 1 ou Opção 2?\n")
      leia(bauVermelhobauVerde)
    }

    limpa()
    status()

    se(bauVermelhobauVerde == "1"){
      escreva("\nVocê resolve abrir o báu vermelho, e imediatamente saí um gás venenoso lá de dentro.\n")
      escreva("Tu se afasta do baú rapidamente, mas ainda cambaleia um pouco (4 de HP tomado)\n")
      vidaDoPersonagem = vidaDoPersonagem - 4

    } senao se(bauVermelhobauVerde == "2"){
      escreva("\nVocê resolve abrir o baú verde, e imediatamente sente uma força a mais, sente como se estivesse ficado mais saudável, com mais disposição(aumentou 5 de HP máximo).\n")
      vidaDoPersonagem = vidaDoPersonagem + 5
      auxVidaDoPersonagem = auxVidaDoPersonagem + 5

    }
    
    seguir()
  }

  funcao armadilhasDoPantanoPARTE3(){
    cadeia opcaoPlataformas
    limpa()
    status()

    escreva("\nQue desgraça, esse Pântano é cheio de armadilhas. Enfim, você segue seu rumo e se depara com um caminho estranhamente normal.\n")
    escreva("Só que logo você repara ao lado que tem uma placa escrita \"Se pisar em falso, sofrerá alguma consequência\".\n")
    escreva("Você percebe que há 10 plataformas, então 5 plataformas tem alguma armadilha e 5 são tranquilas.\n")
    escreva("\nComeçando pelas plataformas número 1 e 2, qual você pisa primeiro?\n1-Plataforma 1\n2-Plataforma 2\n")
    leia(opcaoPlataformas)

    enquanto(opcaoPlataformas != "1" e opcaoPlataformas != "2"){
      escreva("Opção 1 ou Opção 2?\n")
      leia(opcaoPlataformas)
    }

    limpa()
    status()
    se(opcaoPlataformas == "1"){
      escreva("\nPisando na plataforma 1, você...se sente bem, não acontece nada(ufa!).")

    } senao se(opcaoPlataformas == "2"){
      escreva("\nPisando na plataforma 2, você sente que nada aconteceu, até do nada cair uma BIGORNA NA SUA CABEÇA\n")
      se(capacete[0] == 1){
        escreva("Sorte que você tinha um capacete, aí o dano reduziu para 1\n")
        vidaDoPersonagem = vidaDoPersonagem - 1
        
      } senao{
        escreva("Essa porradona na cabeça fez você perder 2 de HP\n")
        vidaDoPersonagem = vidaDoPersonagem - 2
      }

    }
    seguir()
    limpa()
    status()
    escreva("\nPRÓXIMA PLATAFORMA\nQual Plataforma você escolhe?\n1-Plataforma 3\n2-Plataforma 4\n")
    leia(opcaoPlataformas)

    enquanto(opcaoPlataformas != "1" e opcaoPlataformas != "2"){
      escreva("Opção 1 ou Opção 2?\n")
      leia(opcaoPlataformas)
    }
    
    se(opcaoPlataformas == "1"){
      escreva("\nVocê pisa na plataforma e imediatamente toma um soco na boca, era uma armadilha feita com aquelas caixas surpresa que saí uma mão te socando de dentro.\n")
      vidaDoPersonagem = vidaDoPersonagem - 2
    } senao se(opcaoPlataformas == "2"){
      escreva("\nVocê pisa e nada acontece, acertou!\n")
      
    }

    seguir()
    limpa()
    status()
    escreva("\nPRÓXIMA PLATAFORMA\nQual Plataforma você escolhe?\n1-Plataforma 5\n2-Plataforma 6\n")
    leia(opcaoPlataformas)
    
    enquanto(opcaoPlataformas != "1" e opcaoPlataformas != "2"){
      escreva("Opção 1 ou Opção 2?\n")
      leia(opcaoPlataformas)
    }

    se(opcaoPlataformas == "1"){
      escreva("\nVocê pisa na plataforma e uma flecha é acionada, pegando de raspão no seu braço(2 de HP perdidos).\n")
      vidaDoPersonagem = vidaDoPersonagem - 2

    } senao se(opcaoPlataformas == "2"){
      escreva("\nVocê pisa na plataforma e nada ocorre, se deu bem ",nomeDoPersonagem)

    }

    seguir()
    limpa()
    status()
    escreva("\nPRÓXIMA PLATAFORMA(faltam 2)\nQual Plataforma você escolhe?\n1-Plataforma 7\n2-Plataforma 8\n")
    leia(opcaoPlataformas)

    enquanto(opcaoPlataformas != "1" e opcaoPlataformas != "2"){
      escreva("Opção 1 ou Opção 2?\n")
      leia(opcaoPlataformas)
    }

    se(opcaoPlataformas == "1"){
      escreva("\nVocê pisa na plataforma e sente um alivio, não aconteceu nada.\n")
      

    } senao se(opcaoPlataformas == "2"){
      escreva("\nVocê pisa na plataforma e uma TORA DE MADEIRA TE ACERTA EM CHEIO NO NARIZ(tomou uma porrada de 5 de dano).\n")
      vidaDoPersonagem = vidaDoPersonagem - 5

    }

    seguir()
    limpa()
    status()
    escreva("\nÚLTIMA PLATAFORMA\nQual Plataforma você escolhe?\n1-Plataforma 9\n2-Plataforma 10\n")
    leia(opcaoPlataformas)
    
    enquanto(opcaoPlataformas != "1" e opcaoPlataformas != "2"){
      escreva("Opção 1 ou Opção 2?\n")
      leia(opcaoPlataformas)
    }

    se(opcaoPlataformas == "2"){
      escreva("\nVocê pisa na plataforma e sente um alivio, nada aconteceu...aí do nada um balde de tinta caí sobre você, te deixando todo sujo.\n")

    } senao se(opcaoPlataformas == "1"){
      escreva("\nVocê pisa na plataforma,e...NADA ACONTECEU, TU É DEMAIS, TU É...do nada caí uma pedra na sua cabeça(tomou 3 de dano).\n")
      vidaDoPersonagem = vidaDoPersonagem - 3
      
    }

    seguir()
    limpa()
    status()
    escreva("\nMandou bem aventureiro, passou pelas 10 plataformas, e não vamos perder as contas, ao todo foram 3 armadilhas que você teve que passar.\n")
    escreva("Você avista o Castelo Dourado ficando mais próximo, e novamente vê aquele homem de cabelos longos te observando, ele saí caminhando lentamente.\n")
    
    seguir()
  }

  funcao armadilhasDoPantanoPARTE4(){
    cadeia opcaoCurioso

    limpa()
    status()
    escreva("\nVocê tem 2 opções de caminho agora, pode seguir pelo caminho que o homem foi, ou pode seguir por outro caminho que parece tranquilo.\n")
    escreva("\nQual Caminho desejas seguir?\n1-O caminho que aquele homem foi\n2-O Caminho aparentemente tranquilo\n")
    leia(opcaoCurioso)

    enquanto(opcaoCurioso != "1" e opcaoCurioso != "2"){
      escreva("Opção 1 ou Opção 2?\n")
      leia(opcaoCurioso)
    }
    
    se(opcaoCurioso == "1"){
      batalhaTotalContraSlime()

    } senao se(opcaoCurioso == "2"){
      cadeia opcaoAbreBau 
      escreva("\nVocê segue pelo caminho aparentemente tranquilo, e tudo está estranhamente tranquilo, e no meio do caminho você encontra um baú.\n")
      escreva("\nAí vem aquela velha escolha, você quer abrir o Báu?\n1-MAS É CLARO\n2-Eu não, saí fora\n")
      leia(opcaoAbreBau)

      enquanto(opcaoAbreBau != "1" e opcaoAbreBau != "2"){
        escreva("Opção 1 ou Opção 2?\n")
        leia(opcaoAbreBau)
      }

      limpa()
      status()
      
      se(opcaoAbreBau == "1"){
        escreva("\nCom muita coragem, você abre o baú e tem uma poção dentro, MARAVILHA.\nEu não sei se você já encontrou uma dessas, mas a antiga dava 15 de cura, essa da 30!\n")
        casoEncontrePocaoFODONA()

      } senao se(opcaoAbreBau == "2"){
        escreva("\nVocê ignora o bau e segue seu rumo\n")
      
      }
      seguir()
    }
    
  }

  funcao armadilhasDoPantanoPARTE5(){
    limpa()
    status()
    cadeia opcaoSIMouSIM
    inteiro desviaDasFlechadas = 0

    descansarNoPantano()
    limpa()
    status()

    escreva("\nVocê segue andando e começa a ver vultos, vultos pretos, e de repente sente alguém tocando seus cabelos por trás.\n")
    escreva("\nEstranho:\n-Seus cabelos estão maltratados, devia cuidar melhor deles.\n\nVocê vira-se rapidamente pra ver quem é, mas não tem ninguém ali, e quando volta sua atenção para a frente, está ali, o Homem de cabelos longos.\n")
    escreva("Em um piscar de olhos, ele some novamente(cara chatão mané).")

    seguir()
    limpa()
    status()

    escreva("\nLogo após esse evento doido, algumas flechas são lançadas em sua direção, você começa a correr.\n")

    escreva("\nBora testar sua sorte, vou rolar um dado d20, se cair 10 ou mais, você desvia da flecha, senão você toma, isso se repetirá 3 vezes.\n")
    escreva("Pronto?\n1-Sim\n2-Sim\n")
    leia(opcaoSIMouSIM)

    enquanto(opcaoSIMouSIM != "1" e opcaoSIMouSIM != "2"){
      escreva("Opção 1 ou Opção 2?\n")
      leia(opcaoSIMouSIM)
    }

    limpa()
    status()
    desviaDasFlechadas = 0
    desviaDasFlechadas = u.sorteia(1,20)
    escreva("\nRodada 1\n\nSeu resultado foi de...",desviaDasFlechadas,"!\n")
    se(desviaDasFlechadas > 9){
      escreva("\nVocê corre e desvia da primeira flecha(ela passa muito próxima ao seu nariz)")
    } senao{
      escreva("\nVocê tenta desviar e toma a primeira flechada(bem na bunda)")
      vidaDoPersonagem = vidaDoPersonagem - 3
    }
    seguir()

    limpa()
    status()
    desviaDasFlechadas = 0
    desviaDasFlechadas = u.sorteia(1,20)
    escreva("\nRodada 2\n\nSeu resultado foi de...",desviaDasFlechadas,"!\n")
    se(desviaDasFlechadas > 9){
      escreva("\nVocê corre e desvia da segunda flecha(ela passa muito próxima ao seu braço)")
    } senao{
      escreva("\nVocê tenta desviar e toma a segunda flechada(bem nas costas)")
      vidaDoPersonagem = vidaDoPersonagem - 3
    }
    seguir()


    limpa()
    status()
    desviaDasFlechadas = 0
    desviaDasFlechadas = u.sorteia(1,20)
    escreva("\nRodada 3\n\nSeu resultado foi de...",desviaDasFlechadas,"!\n")
    se(desviaDasFlechadas > 9){
      escreva("\nVocê corre e desvia da terceira flecha(ela passa muito próxima a sua perna)")
    } senao{
      escreva("\nVocê tenta desviar e toma a terceira flechada(bem na perna)")
      vidaDoPersonagem = vidaDoPersonagem - 3
    }
    seguir()

    limpa()
    status()

    escreva("\nVocê conseguiu sobreviver a mais uma série de situações tentando te matar, mandou bem!\n")
    seguir()
    
  }

  funcao armadilhasDoPantanoPARTE6(){
    cadeia rexpoxta
    escreva("\nVocê Caminha, já cansado de tanta porcaria no seu caminho.\n")
    escreva("Meio distraído, você da de cara com uma barreira gigantesca, e uma voz robótica começa a dizer algo\n\n")
    escreva("Voz:\nPara passar, você terá que acertar uma pergunta impossível,a pergunta mais difícil de todas...Qual é seu nome?\n\n")
    escreva("Sim...essa é a pergunta, qual é seu nome(ou seja, o que você colocou no inicio do jogo): ")
    leia(rexpoxta)

    se(rexpoxta == nomeDoPersonagem){
      escreva("\nParabéns, você sabe seu nome!\nO portão se abre e você está livre pra passar\n")
    } senao{
      escreva("\nSério isso? errou seu próprio nome? poh ta de sacanagem, merece isso!\n\n")
      escreva("Uma perna robótica surge derrepente e te acerta no meio da fuça, te lançando contra uma árvore. E caí um coco na sua cabeça.\nLevou de 10 de dano(merecidississímo).\n")
      vidaDoPersonagem = vidaDoPersonagem - 10
      escreva("O portão se abre do mesmo jeito(talvez por pena).")
    }

    seguir()

  }

  funcao batalhaContraKarasu(){
    limpa()
    status()

    escreva("\nVocê finalmente passa por todas as armadilhas do pântano, e avista o Castelo Dourado bem na sua frente.\n")
    escreva("Só que novamente você sente alguém mexendo em seus cabelos, e você sabe exatamente quem é.\n\nHomem:\n-De todos os guerreiros fortes que já enfrentei, eu gosto mais de você!\nEu tenho um grande prazer em matar as pessoas que eu adoro.\n")
    escreva("\nLogo em seguida, ele se afasta e fala algo.\n\nHomem:\n-Meu nome é Karasu, e o seu deve ser...",nomeDoPersonagem,"?\n")
    escreva("\nKarasu:\n-Vou te contar um segredo, eu acho você um aventureiro muito bonito, mas do que adianta deixa-lo viver sendo que um dia irá envelhecer e ficar feio?\nPortanto, vou te fazer um favor e te matarei agora.\n")
    
    seguir()
    limpa()
    status()
    
    escreva("\nKarasu se afasta de você, novamente falando algo.\n\nKarasu:\n-Eu não vim aqui, para ser derrubado facilmente, e minha luta contra você não será igual as outras!\n")
    escreva("\n(realmente não será, a dinâmica da batalha será diferente, o ataque atual de cada um será o máximo de dano que poderá causar,\ne o mínimo será de 1/5 desse valor, assim como a defesa).\n")
    escreva("(Então se você tem 60 de ataque, o máximo de dano que tu pode causar é 60,\ne o mínimo é 12(se der um número não inteiro, arredondamos pra baixo) entendindo? espero que sim!).\n")

    escreva("\nVocê nota que Karasu começa a emanar uma energia absurda, e em suas mãos aparece algo.\n\nKarasu:\n-Isso é uma bomba, e eu alimento ela com minha própria energia, prepare-se, vou explodir esse seu lindo rostinho.\n")
    seguir()

    
    inteiro umQuintoDoDanoPersonagem = 0
    inteiro umQuintoDaDefesaPersonagem = 0
    inteiro umQuintoDoDanoInimigo = 0
    inteiro umQuintoDaDefesaDoInimigo = 0

    umQuintoDoDanoPersonagem = (ataqueDoPersonagem / 5) - 1
    umQuintoDaDefesaPersonagem = (defesaDoPersonagem / 5) - 1
    umQuintoDaDefesaDoInimigo = (dEfesaDosInimigos[10] / 5) - 1
    umQuintoDoDanoInimigo = (aTaqueDosInimigos[10] / 5) - 1
    
    inteiro contadorRodada = 0
    inteiro numDoInimigo = 10
    enquanto(vidaDoPersonagem > 0 e vIdaDosInimigos[10] > 0){
      
      limpa()

      contadorRodada++
      
      opcaoNaBatalha(numDoInimigo,contadorRodada)

      u.aguarde(1000)
      sorteio = 0
      escreva("\nVez de ",nomeDoPersonagem, "\n")
      
      u.aguarde(1200)

      
      sorteio = u.sorteia(umQuintoDoDanoPersonagem,ataqueDoPersonagem)
      sorteioDefesa = u.sorteia(umQuintoDaDefesaDoInimigo, dEfesaDosInimigos[10])
      armazenaDano = sorteio - sorteioDefesa

      se(armazenaDano <= 0){
        armazenaDano = 0
      }
      
      se(sorteio >= sorteioDefesa){
        vIdaDosInimigos[10] = vIdaDosInimigos[10] - armazenaDano
        escreva("Seu ataque deu: ", sorteio,"\n")
        escreva("Defesa do inimigo deu: ", sorteioDefesa,"\n")
        escreva("Dano dado: ",armazenaDano,"\n")

      } senao{
        escreva("Seu ataque deu: ", sorteio,"\n")
        escreva("Defesa do inimigo deu: ", sorteioDefesa,"\n")
        escreva("Dano dado: 0\n")

      } 
        

      
        
      
      se(vIdaDosInimigos[10] <= 0){
        vIdaDosInimigos[10] = 0
        pare

      } 

      u.aguarde(2000)

      se(vIdaDosInimigos[10] < 60 e ativaCutsceneKarasu == 0){
        ativaCutsceneKarasu = 1
        seguir()
        limpa()
        escreva("\nA Máscara de Karasu caí após seu ataque, revelando sua face.\n\nKarasu:\n-Ai ",nomeDoPersonagem," eu te adoro, cada vez mais eu sinto vontade de te matar!\n")
        escreva("\nImediatamente após falar isso, Karasu abre a boca e começa a sugar energia do ar, ele começa a emanar uma energia ABSURDA.\n")
        escreva("A cor do cabelo dele muda, e ele fica rodeado com todo aquele poder.\n\nKarasu:\n-Agora não terei piedade de você, ",nomeDoPersonagem,"\n")

        vIdaDosInimigos[10] = vIdaDosInimigos[10] + 40
        aTaqueDosInimigos[10] = aTaqueDosInimigos[10] + 30

        seguir()
        limpa()
        statusDuranteBatalhaContraKarasu()
      }
      

      sorteio = 0
      escreva("\nVez de ", inimigosDaCampanhaNormal[10])

      u.aguarde(1200)
      //
      sorteio = u.sorteia(umQuintoDoDanoInimigo,aTaqueDosInimigos[10])
      sorteioDefesa = u.sorteia(umQuintoDaDefesaPersonagem, defesaDoPersonagem)
      armazenaDano = sorteio - sorteioDefesa
      
      se(armazenaDano <= 0){
        armazenaDano = 0
      }

      se(sorteio >= sorteioDefesa){
        vidaDoPersonagem = vidaDoPersonagem - armazenaDano
        escreva("\nO Ataque do inimigo deu: ", sorteio,"\n")
        escreva("Sua defesa: ", sorteioDefesa,"\n")
        escreva("Dano tomado: ",armazenaDano,"\n")

      } senao{
        escreva("\nO Ataque do inimigo deu: ", sorteio,"\n")
        escreva("Sua defesa: ", sorteioDefesa,"\n")
        escreva("Dano tomado: 0\n")

      } 
      //
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
        escreva("\nPARABÉNS, você conseguiu derrotar o ", inimigosDaCampanhaNormal[10],"\n")
        escreva("\nXP obtido:",xPDosInimigos[10],"\n")

        subirDeNivelContraKarasu() 

        seguir()
        limpa()
        status()
      
      } 

  }


  funcao subirDeNivelContraKarasu() {
      
    xpDoPersonagem = xpDoPersonagem + xPDosInimigos[10]
    enquanto(xpDoPersonagem >= limitadorDeNivel){

      escreva("\nPARABÉNS, subiu do nível ",nivel," para o nível ",nivel + 1)
      aumentaStatsPorNivel = aumentaStatsPorNivel + 2

      escreva("\nAtributos ganhos:\nVida + ",aumentaStatsPorNivel,"\tDefesa + ",aumentaStatsPorNivel," e Ataque + ",aumentaStatsPorNivel,"\n")
      auxVidaDoPersonagem = auxVidaDoPersonagem + aumentaStatsPorNivel
      vidaDoPersonagem = vidaDoPersonagem + aumentaStatsPorNivel
      defesaDoPersonagem = defesaDoPersonagem + aumentaStatsPorNivel
      ataqueDoPersonagem = ataqueDoPersonagem + aumentaStatsPorNivel
      nivel = nivel + 1
      se(xpDoPersonagem >= limitadorDeNivel){
        xpDoPersonagem = xpDoPersonagem - limitadorDeNivel
      } senao{
        
      }
      
      limitadorDeNivel = limitadorDeNivel + 40
      
      se(xpDoPersonagem >= limitadorDeNivel){
        escreva("\nVocê vai subir mais um nível, pois ta com o XP acima de 100\n")
        seguir()

      }

    }
    
  }







  funcao descansarNoPantano(){
    se(vidaDoPersonagem > 0){ 
      escreva("\n")
      escreva("Você decide dar uma descansada, afinal, passou por muita coisa...e uma descansada boa, você adormece ali e recupera 15 de HP\n")
      escreva("Porém quando você acorda, tem um cachorro m-mijando na sua boca(que nojo).\n")
      se((vidaDoPersonagem + 15) > auxVidaDoPersonagem){
        vidaDoPersonagem = auxVidaDoPersonagem
      } senao{
        vidaDoPersonagem = vidaDoPersonagem + 5
      }
      seguir()
      
    } senao{
      taMorto()
    }
  }

  funcao batalhaTotalContraSlime(){
    limpa()
    status()
    escreva("\nVocê resolve ir pelo mesmo caminho que aquele homem de cabelos longos foi(pq? quer morrer?).\n")
    escreva("No meio do caminho, você vê um Slime pequeno, parece bem fofo, você passa direto por ele e consegue ver ao longe aquele homem.\n")
    escreva("Porém, um barulho muito alto vem detras de ti, você olha e o SLIME CRESCEU DEMAIS, ele está gigante, e logo pula pra bloquear seu caminho.\nHora de lutar!\n")

    seguir()

    inteiro contadorRodada = 0
    inteiro numDoInimigo = 9
    enquanto(vidaDoPersonagem > 0 e vIdaDosInimigos[9] > 0){
      
      limpa()

      contadorRodada++
      
      opcaoNaBatalha(numDoInimigo,contadorRodada)

      u.aguarde(1000)
      sorteio = 0
      escreva("\nVez de ",nomeDoPersonagem, "\n")
        
      u.aguarde(1200)

      sorteio = u.sorteia(1,20) + ataqueDoPersonagem
      se(sorteio - dEfesaDosInimigos[9] > 0){

        vIdaDosInimigos[9] = vIdaDosInimigos[9] - (sorteio - dEfesaDosInimigos[9])
        escreva("Seu ataque + o dado deu: ", sorteio,"\n")
        escreva("Dano dado: ", sorteio  - dEfesaDosInimigos[9],"\n")

      } senao{
        escreva("Seu ataque + o dado deu: ", sorteio,"\n")
        escreva("Seu dano não superou a defesa do ",inimigosDaCampanhaNormal[9] ,"\n")

      }

      se(vIdaDosInimigos[9] <= 0){
        vIdaDosInimigos[9] = 0
        pare

      } 

      u.aguarde(2000)

      sorteio = 0
      escreva("\nVez de ", inimigosDaCampanhaNormal[9])

      u.aguarde(1200)

      sorteio = u.sorteia(1,20) + aTaqueDosInimigos[9]
        
      se(sorteio - defesaDoPersonagem > 0){
        vidaDoPersonagem = vidaDoPersonagem - (sorteio - defesaDoPersonagem)

        escreva("\nO ataque + o dado do ",inimigosDaCampanhaNormal[9],": ", sorteio,"\n")
        escreva("Dano dado: ", sorteio  - defesaDoPersonagem,"\n")
        se(vidaDoPersonagem < 0){
          vidaDoPersonagem = 0
        }
          
      } senao{
        escreva("\nO ataque + o dado do ",inimigosDaCampanhaNormal[9],": ", sorteio,"\n")
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
        escreva("\nPARABÉNS, você conseguiu derrotar o ", inimigosDaCampanhaNormal[9],"\n")
        xpDoPersonagem = xpDoPersonagem + xPDosInimigos[9]
        enquanto(xpDoPersonagem >= limitadorDeNivel){

          escreva("\nPARABÉNS, subiu do nível ",nivel," para o nível ",nivel + 1)
          aumentaStatsPorNivel = aumentaStatsPorNivel + 2

          escreva("\nAtributos ganhos:\nVida + ",aumentaStatsPorNivel,"\tDefesa + ",aumentaStatsPorNivel," e Ataque + ",aumentaStatsPorNivel,"\n")
          auxVidaDoPersonagem = auxVidaDoPersonagem + aumentaStatsPorNivel
          vidaDoPersonagem = vidaDoPersonagem + aumentaStatsPorNivel
          defesaDoPersonagem = defesaDoPersonagem + aumentaStatsPorNivel
          ataqueDoPersonagem = ataqueDoPersonagem + aumentaStatsPorNivel
          nivel = nivel + 1
          se(xpDoPersonagem >= limitadorDeNivel){
            xpDoPersonagem = xpDoPersonagem - limitadorDeNivel
          } senao{
          
          }
        
          limitadorDeNivel = limitadorDeNivel + 40
        
          se(xpDoPersonagem >= limitadorDeNivel){
            escreva("\nVocê vai subir mais um nível, pois ta com o XP acima de 100\n")
            seguir()
          }
        }

    

        seguir()
        limpa()
        status()
        escreva("\nVocê perde de vista o homem que vive te observando, tudo culpa daquele Slime, o jeito é seguir em frente né?\n")
        
        seguir()
        limpa()
        status()
      
      } 

  }


  funcao casteloDourado(){
    mEUlOCALaTUAL = 5
    localizacao = 4
    se(vidaDoPersonagem > 0){
      limpa()
      escreva("\nCASTELO DOURADO\n")

      se(vidaDoPersonagem > 0 e passouPelaIntroCasteloDourado == 0){
        passouPelaIntroCasteloDourado = 1

        escreva("\n\nVocê chegou ao seu destino final, o Castelo Dourado, depois de enfrentar muitas armadilhas e lutas, aqui está o fim de sua jornada.\n")
        escreva("\nE você lembra que eu disse que teríamos sua recompensa final do Pântano aqui no Castelo né? pois bem, quando seguir, poderá escolher uma.")

        seguir()
        limpa()
        status()
        
        recompensaFinalDoPantano()
        giovani()
      }
      se(vidaDoPersonagem > 0){
        cadeia opcaoGiovani

        voltaOuDriblaOGiovani()
        limpa()
        status()
        
        escreva("\nGiovani está alí, mexendo no celular, você deseja tentar passar furtivo por ele ou ataca-lo?\n")
        escreva("1-Passar Furtivo(exige sorte)\n2-Atacar\n")
        leia(opcaoGiovani)

        enquanto(opcaoGiovani != "1" e opcaoGiovani != "2"){
          escreva("Option 1 or Option 2?\n")
          leia(opcaoGiovani)

        }

        se(opcaoGiovani == "1"){
          furtivoGiovani()

        } senao{
          escreva("\nVocê resolve partir pra cima do Giovani, que para de mexer no celular e fica em posição de combate.\n")
          
          batalhaContraGiovani()
          inimigosDaCampanhaNormal[11] = "Giovani Anestesiado"
          vIdaDosInimigos[11] = aUXVIDADOSINIMIGOS[11] + 30
          aUXVIDADOSINIMIGOS[11] = aUXVIDADOSINIMIGOS[11] + 30
          aTaqueDosInimigos[11] = aTaqueDosInimigos[11] + 15
          dEfesaDosInimigos[11] = dEfesaDosInimigos[11] +10
          xPDosInimigos[11] = xPDosInimigos[11] + 30
          escreva("\nVocê saí dali após ter derrotado Giovani, porém, rapadura é doce mas não é mole não!\n")
          escreva("Giovani, quase sem vida, injeta uma seringa em seu próprio corpo, você pode ver suas veias saltando, seu corpo ficando maior...\n")
          batalhaContraGiovani()
          escreva("\nNem a anestesia salvou Giovani de levar uma sapecada, e você novamente parte em direção ao castelo, porém...ele não dá sossego!\n")
          escreva("Novamente Giovani se levanta com dificuldades, e puxa outra seringa, bem maior que a anterior, e crava no peito.\n")
          escreva("Ele fica maior ainda, as veias saltando, sangue escorrendo, catarro saindo dos olhos(credo!).\n")
          escreva("Analisando Giovani, vemos que ele abusou do suco, portanto...FAKE NATTY!\n")
          inimigosDaCampanhaNormal[11] = "Giovani ANABOLIZADO"
          vIdaDosInimigos[11] = aUXVIDADOSINIMIGOS[11] + 30
          aUXVIDADOSINIMIGOS[11] = aUXVIDADOSINIMIGOS[11] + 30
          aTaqueDosInimigos[11] = aTaqueDosInimigos[11] + 15
          dEfesaDosInimigos[11] = dEfesaDosInimigos[11] +10
          xPDosInimigos[11] = xPDosInimigos[11] + 30
          batalhaContraGiovani()
          escreva("\nMais uma vez, você derrota Giovani, e parte mais uma vez pro castelo,porém...\n")
          escreva("GIOVANI LEVANTA DE NOVO, E TIRA MAIS UMA SERINGA SEI LÁ DE ONDE, ele se prepara para usar ela quando de repente...ele caí no chão.")
          escreva("\nParece que ele teve um ataque de Overdose e morreu(FINALMENTE NÉ? TAVA IGUAL CHULÉ, NÃO DESGRUDAVA NUNCA).")
          escreva("E agora sim, você entra no castelo.\n")

        }

        chegadaNoCastelo()
        
        se(vidaDoPersonagem > 0){
          cadeia opcKuririn
          escreva("\nVocê avança no corredor do Castelo, e avista uma criança careca na frente de um portão gigante.\n")
          escreva("Você supõe que seja ali que O Devastador esteja(ATÉ PORQUE TEM UMA PLACA DE TODO TAMANHO ESCRITO \"LAR DO DEVASTADOR\").")
          escreva("\nAo chegar mais perto, você percebe que na verdade aquilo não é uma criança careca, é...O KURIRIN,\n")
          escreva("e pra passar por ele, ou terá que lutar, ou passar furtivamente.\n")

          escreva("\nO que deseja fazer?\n1-Atacar o careca\n2-Passar furtivamente pelo careca\n")
          leia(opcKuririn)
          enquanto(opcKuririn != "1" e opcKuririn != "2"){
            escreva("Option 1 or Option 2?\n")
            leia(opcKuririn)

          }
          se(opcKuririn == "1"){
            batalhaKuririn()
          } senao{
            furtivoKuririn()
          }
          se(vidaDoPersonagem > 0){
            helgaMinhaAnja()
            toguroDEVASTADOR()

          }

        }
      }
    }
  }

  

  funcao recompensaFinalDoPantano(){
    cadeia opcRecompPantan

    inteiro defesaDaArmadura = 0
    inteiro danoDaArma = 26
    inteiro capaceteDaFuncao = 0
    inteiro peitoralDaFuncao = 0
    inteiro calcaDaFuncao = 0
    inteiro botasDaFuncao = 0

    escreva("\nAntes de entrar no castelo, você avista vários altares com itens em cima, ao todo são 5 altares.\n\nEscolha um dos 5 itens.\n")
    escreva("\n1-Máscara do Karasu: Serve como um capacete(como isso funcionaria?) (+22 de defesa).\n")
    escreva("\n2-Peitoral de Slime: Não sei se vc encontrou o Slime antes, mas isso é feito com a família dele (+25 de defesa).\n")
    escreva("\n3-Calças da Arlequina: Primeiramente, não sei como isso veio parar aqui! (+24 de defesa).\n")
    escreva("\n4-Sapatos do Coringa: Também não sei como isso veio parar aqui (+23 de defesa).\n")
    escreva("\n5-Machado das Trevas: Grandão, e parece bem forte(realmente é forte, +26 Ataque).")
    escreva("\n\nQual dessas você escolhe(?digite o número): ")
    leia(opcRecompPantan)

    enquanto(opcRecompPantan != "1" e opcRecompPantan != "2" e opcRecompPantan != "3" e opcRecompPantan != "4" e opcRecompPantan != "5"){
      escreva("\nAh...escreva direito!\n")
      leia(opcRecompPantan)
      
    }

    se(opcRecompPantan == "1"){
      capaceteDaFuncao = 1
      defesaDaArmadura = 22
      casoEncontreArmadura(defesaDaArmadura,capaceteDaFuncao,peitoralDaFuncao,calcaDaFuncao,botasDaFuncao)

    } senao se(opcRecompPantan == "2"){
      peitoralDaFuncao = 1
      defesaDaArmadura = 25
      casoEncontreArmadura(defesaDaArmadura,capaceteDaFuncao,peitoralDaFuncao,calcaDaFuncao,botasDaFuncao)

    } senao se(opcRecompPantan == "3"){
      calcaDaFuncao = 1
      defesaDaArmadura = 24
      casoEncontreArmadura(defesaDaArmadura,capaceteDaFuncao,peitoralDaFuncao,calcaDaFuncao,botasDaFuncao)

    } senao se(opcRecompPantan == "4"){
      botasDaFuncao = 1
      defesaDaArmadura = 23 

    } senao se(opcRecompPantan == "5"){
      danoDaArma = 26
      casoEncontreARMA(danoDaArma)

    }

  }

  funcao giovani(){
    limpa()
    status()
    escreva("\nApós a escolha da recompensa, você avança em direção a entrada do castelo, mas logo se esconde atrás de uma pedra.\n")
    escreva("Tem um guarda ali na frente da porta, você pode reparar que ele está mexendo no celular e carrega um crachá escrito \"Giovani\"\n")
    seguir()
  }

  funcao voltaOuDriblaOGiovani(){
    cadeia opcaoDaLiberdade
    inteiro sorteio = 0
    
    enquanto(opcaoDaLiberdade != "1" e opcaoDaLiberdade != "2" e opcaoDaLiberdade != "3"){
      limpa()
      status()
      escreva("\nVocê tem duas opções agora, pode achar um jeito de driblar o Giovani, ou voltar região(que não seria demorado pq tu acabou de sair do pântano).")
      escreva("\nO que deseja fazer ",nomeDoPersonagem," ?\n\n1-Achar uma maneira de passar por ele\n2-Voltar Região\n")
      leia(opcaoDaLiberdade)
      escolha(opcaoDaLiberdade){

        caso "1":

          escreva("\nOk, seguiremos com sua tentativa de driblar o Guarda.\n")
          seguir()
        pare

        caso "2":
          
          se(mEUlOCALaTUAL == 1){
            limpa()
            status()
            escreva("\nVocê já está na região 1, não tem pra onde voltar\n")
            
            
          } senao{
            mEUlOCALaTUAL--
            se(mEUlOCALaTUAL == 1){
              desenhoDaFloresta()
              casoVoltePraFloresta()
              
            } senao se(mEUlOCALaTUAL == 2){
              vilaAbandonada()
              cavernaSombria()
              pantanoDosLamentos()
            } senao se(mEUlOCALaTUAL == 3){
              cavernaSombria()
              pantanoDosLamentos()
            } senao se(mEUlOCALaTUAL == 4){
              pantanoDosLamentos()
            }
          }

        pare

      }
    }
    
  }

  funcao furtivoGiovani(){
    inteiro sorteioDoFurtivo = 0
    sorteioDoFurtivo = u.sorteia(sorteDoPersonagem,20)
    limpa()
    status()
    escreva("\nVocê precisa ter um pouco de sorte pra passar pelo Giovani. E seu resultado foi de: ",sorteioDoFurtivo,"\n")
    se(sorteioDoFurtivo > 14){
      escreva("\nVocê vai bem de mansinho, agachado em direção ao portão do castelo.\nVocê passa pelo Giovani, e por pura curiosidade, tenta ver o que ele está fazendo no celular, e é...meio estranho.\n")
      escreva("Você vê diversas cores e um Tigre com óculos escuros, e logo aparece \"MEGA GANHO: R$4058.01\" na tela do telefone dele.\n")
      escreva("Tu não entende nada e entra no Castelo.\n")

    } senao{
      escreva("\nVocê foi caminhando, bem de mansinho, está quase se aproximando do portão do castelo...quando começa a tocar o som de ligação do Nokia tijolão no seu bolso.\n")
      escreva("Você fica sem entender nada, nem ao menos você tinha celular, e quando você pega ele na mão, tu consegue ver que a foto do Karasu está na tela de desbloqueio.\n")
      escreva("Agora ta explicado, Karasu deve ter colocado isso no seu bolso durante a luta ou quando mexia em seu cabelo.\n")
      escreva("Esse som alertou Giovani, que vem pra cima de você imediatamente.\n")
      batalhaContraGiovani()
      inimigosDaCampanhaNormal[11] = "Giovani Anestesiado"
      vIdaDosInimigos[11] = aUXVIDADOSINIMIGOS[11] + 30
      aUXVIDADOSINIMIGOS[11] = aUXVIDADOSINIMIGOS[11] + 30
      aTaqueDosInimigos[11] = aTaqueDosInimigos[11] + 15
      dEfesaDosInimigos[11] = dEfesaDosInimigos[11] +10
      xPDosInimigos[11] = xPDosInimigos[11] + 30
      escreva("\nVocê saí dali após ter derrotado Giovani, porém, rapadura é doce mas não é mole não!\n")
      escreva("Giovani, quase sem vida, injeta uma seringa em seu próprio corpo, você pode ver suas veias saltando, seu corpo ficando maior...\n")
      batalhaContraGiovani()
      escreva("\nNem a anestesia salvou Giovani de levar uma sapecada, e você novamente parte em direção ao castelo, porém...ele não dá sossego!\n")
      escreva("Novamente Giovani se levanta com dificuldades, e puxa outra seringa, bem maior que a anterior, e crava no peito.\n")
      escreva("Ele fica maior ainda, as veias saltando, sangue escorrendo, catarro saindo dos olhos(credo!).\n")
      escreva("Analisando Giovani, vemos que ele abusou do suco, portanto...FAKE NATTY!\n")
      inimigosDaCampanhaNormal[11] = "Giovani ANABOLIZADO"
      vIdaDosInimigos[11] = aUXVIDADOSINIMIGOS[11] + 30
      aUXVIDADOSINIMIGOS[11] = aUXVIDADOSINIMIGOS[11] + 30
      aTaqueDosInimigos[11] = aTaqueDosInimigos[11] + 15
      dEfesaDosInimigos[11] = dEfesaDosInimigos[11] +10
      xPDosInimigos[11] = xPDosInimigos[11] + 30
      batalhaContraGiovani()
      escreva("\nMais uma vez, você derrota Giovani, e parte mais uma vez pro castelo, porém...\n")
      escreva("GIOVANI LEVANTA DE NOVO, E TIRA MAIS UMA SERINGA SEI LÁ DE ONDE, ele se prepara para usar ela quando de repente...ele caí no chão.")
      escreva("\nParece que ele teve um ataque de Overdose e morreu(FINALMENTE NÉ? TAVA IGUAL CHULÉ, NÃO DESGRUDAVA NUNCA).")
      escreva("E agora sim, você entra no castelo.\n")

    
    }
    seguir()
  }

  

  funcao batalhaContraGiovani(){
    
    cadeia opcaoDePreparado

    escreva("Está preparado? Sim? Não?\n")
    leia(opcaoDePreparado)
    
    enquanto(opcaoDePreparado != "Sim" e opcaoDePreparado != "sim"){
      escreva("\nÉ Sim ou Sim, não escreva outra coisa e muito menos tente fugir:\n")
      leia(opcaoDePreparado)
    }
    escreva("Isso mesmo, boa sorte(você vai precisar)\n")
    
    inteiro contadorRodada = 0
    inteiro numDoInimigo = 11
    enquanto(vidaDoPersonagem > 0 e vIdaDosInimigos[11] > 0){
      
      limpa()

      contadorRodada++

      opcaoNaBatalha(numDoInimigo,contadorRodada)

      u.aguarde(1000)
      sorteio = 0
      escreva("\nVez de ",nomeDoPersonagem, "\n")
      
      u.aguarde(1200)

      sorteio = u.sorteia(1,20) + ataqueDoPersonagem
      se(sorteio - dEfesaDosInimigos[11] > 0){

        vIdaDosInimigos[11] = vIdaDosInimigos[11] - (sorteio - dEfesaDosInimigos[11])
        escreva("Seu ataque + o dado deu: ", sorteio,"\n")
        escreva("Dano dado: ", sorteio  - dEfesaDosInimigos[11],"\n")

      } senao{
        escreva("Seu ataque + o dado deu: ", sorteio,"\n")
        escreva("Seu dano não superou a defesa do ",inimigosDaCampanhaNormal[11] ,"\n")

      }

      se(vIdaDosInimigos[11] <= 0){
        vIdaDosInimigos[11] = 0
        pare

      } 

      u.aguarde(2000)

      sorteio = 0
      escreva("\nVez de ", inimigosDaCampanhaNormal[11])

      u.aguarde(1200)

      sorteio = u.sorteia(1,20) + aTaqueDosInimigos[11]
      
      se(sorteio - defesaDoPersonagem > 0){
        vidaDoPersonagem = vidaDoPersonagem - (sorteio - defesaDoPersonagem)

        escreva("\nO ataque + o dado do ",inimigosDaCampanhaNormal[11],": ", sorteio,"\n")
        escreva("Dano dado: ", sorteio  - defesaDoPersonagem,"\n")
        se(vidaDoPersonagem < 0){
          vidaDoPersonagem = 0
        }
        
      } senao{
        escreva("\nO ataque + o dado do ",inimigosDaCampanhaNormal[11],": ", sorteio,"\n")
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
        escreva("\nPARABÉNS, você conseguiu derrotar o ", inimigosDaCampanhaNormal[11],"\n")
        escreva("\nXP obtido:",xPDosInimigos[11],"\n")

        subirDeNivelContraGiovani() 

        seguir()
        limpa()
        status()
      
      } 

  }


  funcao subirDeNivelContraGiovani() {
      
    xpDoPersonagem = xpDoPersonagem + xPDosInimigos[11]
    enquanto(xpDoPersonagem >= limitadorDeNivel){

      escreva("\nPARABÉNS, subiu do nível ",nivel," para o nível ",nivel + 1)
      aumentaStatsPorNivel = aumentaStatsPorNivel + 2

      escreva("\nAtributos ganhos:\nVida + ",aumentaStatsPorNivel,"\tDefesa + ",aumentaStatsPorNivel," e Ataque + ",aumentaStatsPorNivel,"\n")
      auxVidaDoPersonagem = auxVidaDoPersonagem + aumentaStatsPorNivel
      vidaDoPersonagem = vidaDoPersonagem + aumentaStatsPorNivel
      defesaDoPersonagem = defesaDoPersonagem + aumentaStatsPorNivel
      ataqueDoPersonagem = ataqueDoPersonagem + aumentaStatsPorNivel
      nivel = nivel + 1
      se(xpDoPersonagem >= limitadorDeNivel){
        xpDoPersonagem = xpDoPersonagem - limitadorDeNivel
      } senao{
        
      }
      
      limitadorDeNivel = limitadorDeNivel + 40
      
      se(xpDoPersonagem >= limitadorDeNivel){
        escreva("\nVocê vai subir mais um nível, pois ta com o XP acima de 100\n")
        seguir()

      }

    }
    
  }

  funcao chegadaNoCastelo(){
    se(vidaDoPersonagem > 0){

    
      limpa()
      status()
      escreva("\nApós entrar no castelo, o portão automaticamente se fecha, impedindo sua volta.\n")
      escreva("\nAo redor, você vê uma sala com uma cadeira apenas, você vai até ela e senta, cruzando as pernas e colocando a mão no queixo\n")
      escreva("(a cadeira é bem confortável, foi um bom descanso, recuperou 10 de HP).\n")
      se((vidaDoPersonagem + 10) > auxVidaDoPersonagem){
        vidaDoPersonagem = auxVidaDoPersonagem

      } senao{
        vidaDoPersonagem = vidaDoPersonagem + 10

      }
      seguir()
      limpa()
      status()
      escreva("\nDepois de descansar, você se levanta e volta para o corredor principal.\n")
      seguir()
      exploraCastelo()
    }
  }

  funcao exploraCastelo(){
    cadeia opcaoDaLiberdade
    limpa()
    enquanto(opcaoDaLiberdade != "1" e opcaoDaLiberdade != "2"){
      limpa()
      status()
      escreva("\nO que deseja fazer agora ",nomeDoPersonagem," ?\n\n1-Seguir em frente no corredor\n2-Explorar o corredor\n")
      leia(opcaoDaLiberdade)
      escolha(opcaoDaLiberdade){

        caso "1":

          escreva("Bora seguir.")
          u.aguarde(1000)
          limpa()
          
        pare

        caso "2":

          sorteio = 0
          sorteio = u.sorteia(sorteDoPersonagem, 20)
          escreva("\nVocê resolveu explorar o local, mas para conseguir algo bom, precisa ter sorte no dado d20, e você tirou...",sorteio)
          se(sorteDoPersonagem > 6 ou sorteio == 20){

            escreva("\nDeu muita sorte, pra isso ter acontecido, você só pode ter pego o amuleto que a Helga te deu né? Enfim, seguimos!\n")
            escreva("\n\nVocê, muito atento, acaba percebendo uma fresta de uma porta aberta, curioso do jeito que é, abre e vê uma sala enorme,\n")
            escreva("e logo decide entrar. Dentro da sala, há 5 baús diferentes, você se aproxima e pisa sem querer em um botão escondido no chão(nem tão escondido assim né).\n")
            escreva("Após tu pisar no botão, os 5 baús abrem, o conteúdo deles são:\n\n")
            
            cincoBaus()

          } senao{
            batalhaContraArlequina()
            
          }
         pare
      }
    }
  }  

  funcao cincoBaus(){
    cadeia opcBaus

    inteiro defesaDaArmadura = 0
    inteiro danoDaArma = 35
    inteiro capaceteDaFuncao = 0
    inteiro peitoralDaFuncao = 0
    inteiro calcaDaFuncao = 0
    inteiro botasDaFuncao = 0

    
    escreva("\n1-Elmo Chifrudo: Esse Elmo era usado por alguém que era muito corno (30+ de defesa).\n")
    escreva("\n2-Camisa do Grêmio: Mas é claro que o Grêmio não ia ficar de fora desse RPG né? (32+ de defesa).\n")
    escreva("\n3-Calça do inter: Só pra não me chamarem de clubista (+31 de defesa).\n")
    escreva("\n4-Chuteira do CR7: Essa é da temporada 16/17 (+33 de defesa).\n")
    escreva("\n5-Espada da Chama Mortal: Essa espada tem uma chama absurda em volta dela! (+35 de ataque).")
    escreva("\n\n(peço perdão por fazer tu escolher só um desses itens)Digite o número de sua escolha: ")
    leia(opcBaus)

    enquanto(opcBaus != "1" e opcBaus != "2" e opcBaus != "3" e opcBaus != "4" e opcBaus != "5"){
      escreva("\nAh...escreva direito!\n")
      leia(opcBaus)
      
    }

    se(opcBaus == "1"){
      capaceteDaFuncao = 1
      defesaDaArmadura = 30
      casoEncontreArmadura(defesaDaArmadura,capaceteDaFuncao,peitoralDaFuncao,calcaDaFuncao,botasDaFuncao)

    } senao se(opcBaus == "2"){
      peitoralDaFuncao = 1
      defesaDaArmadura = 32
      casoEncontreArmadura(defesaDaArmadura,capaceteDaFuncao,peitoralDaFuncao,calcaDaFuncao,botasDaFuncao)

    } senao se(opcBaus == "3"){
      calcaDaFuncao = 1
      defesaDaArmadura = 31
      casoEncontreArmadura(defesaDaArmadura,capaceteDaFuncao,peitoralDaFuncao,calcaDaFuncao,botasDaFuncao)

    } senao se(opcBaus == "4"){
      botasDaFuncao = 1
      defesaDaArmadura = 33

    } senao se(opcBaus == "5"){
      casoEncontreARMA(danoDaArma)

    }

    seguir()

  }

  funcao batalhaContraArlequina(){
    limpa()
    status()
    escreva("\nVocê explora o corredor pra ver se encontra algo, mas não consegue achar nada(devia ter pego o Amuleto da Helga).\n")
    escreva("E logo depois de não encontrar nada, você sente alguém te abraçando por trás.\n")
    escreva("\nVoz desconhecida:\n-PUDIMZINHO!\n\nVocê vira-se rapidamente e percebe que era a Arlequina que fez isso. A expressão no rosto dela muda, ela fica muito irritada.\n\n")
    escreva("Arlequina:\n-Você não é meu Pudimzinho, você é um intruso.\n\nEla Pega a marreta dela e parte pra cima de você.\n")
    
    seguir()

    inteiro contadorRodada = 0
    inteiro numDoInimigo = 12

    enquanto(vidaDoPersonagem > 0 e vIdaDosInimigos[12] > 0){
      
      limpa()

      contadorRodada++
      
      opcaoNaBatalha(numDoInimigo,contadorRodada)

      u.aguarde(1000)
      sorteio = 0
      escreva("\nVez de ",nomeDoPersonagem, "\n")
      
      u.aguarde(1200)

      sorteio = u.sorteia(1,20) + ataqueDoPersonagem
      se(sorteio - dEfesaDosInimigos[12] > 0){

        vIdaDosInimigos[12] = vIdaDosInimigos[12] - (sorteio - dEfesaDosInimigos[12])
        escreva("Seu ataque + o dado deu: ", sorteio,"\n")
        escreva("Dano dado: ", sorteio  - dEfesaDosInimigos[12],"\n")

      } senao{
        escreva("Seu ataque + o dado deu: ", sorteio,"\n")
        escreva("Seu dano não superou a defesa do ",inimigosDaCampanhaNormal[12] ,"\n")

      }

      se(vIdaDosInimigos[12] <= 0){
        vIdaDosInimigos[12] = 0
        pare

      } 

      u.aguarde(2000)

      sorteio = 0
      escreva("\nVez de ", inimigosDaCampanhaNormal[12])

      u.aguarde(1200)

      sorteio = u.sorteia(1,20) + aTaqueDosInimigos[12]
      
      se(sorteio - defesaDoPersonagem > 0){
        vidaDoPersonagem = vidaDoPersonagem - (sorteio - defesaDoPersonagem)

        escreva("\nO ataque + o dado do ",inimigosDaCampanhaNormal[12],": ", sorteio,"\n")
        escreva("Dano dado: ", sorteio  - defesaDoPersonagem,"\n")
        se(vidaDoPersonagem < 0){
          vidaDoPersonagem = 0
        }
        
      } senao{
        escreva("\nO ataque + o dado do ",inimigosDaCampanhaNormal[12],": ", sorteio,"\n")
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
        escreva("\nApós seu último golpe, ", inimigosDaCampanhaNormal[12]," ficou jogada no chão, agora você entendeu porquê as calças dela apareceram antes.\n")
        escreva("\nXP obtido:",xPDosInimigos[12],"\n")

        subirDeNivelContraArlequina() 

        seguir()
        limpa()
        status()
      
      } 

  }

  

  funcao subirDeNivelContraArlequina() {
      
    xpDoPersonagem = xpDoPersonagem + xPDosInimigos[12]
    enquanto(xpDoPersonagem >= limitadorDeNivel){

      escreva("\nPARABÉNS, subiu do nível ",nivel," para o nível ",nivel + 1)
      aumentaStatsPorNivel = aumentaStatsPorNivel + 2

      escreva("\nAtributos ganhos:\nVida + ",aumentaStatsPorNivel,"\tDefesa + ",aumentaStatsPorNivel," e Ataque + ",aumentaStatsPorNivel,"\n")
      auxVidaDoPersonagem = auxVidaDoPersonagem + aumentaStatsPorNivel
      vidaDoPersonagem = vidaDoPersonagem + aumentaStatsPorNivel
      defesaDoPersonagem = defesaDoPersonagem + aumentaStatsPorNivel
      ataqueDoPersonagem = ataqueDoPersonagem + aumentaStatsPorNivel
      nivel = nivel + 1
      se(xpDoPersonagem >= limitadorDeNivel){
        xpDoPersonagem = xpDoPersonagem - limitadorDeNivel
      } senao{
        
      }
      
      limitadorDeNivel = limitadorDeNivel + 40
      
      se(xpDoPersonagem >= limitadorDeNivel){
        escreva("\nVocê vai subir mais um nível, pois ta com o XP acima de 100\n")
        seguir()

      }

    }
    
  }

  funcao furtivoKuririn(){
    inteiro sorteioDoFurtivo = 0
    sorteioDoFurtivo = u.sorteia(sorteDoPersonagem,20)
    limpa()
    status()
    escreva("\nVocê precisa ter um pouco de sorte pra passar pelo Kuririn. E seu resultado foi de: ",sorteioDoFurtivo,"\n")
    se(sorteioDoFurtivo > 14){
      escreva("\nVocê vê que vai ser difícil passar por ele, mas como você tirou acima de 14, tu vai conseguir passar furtivo.\n")
      escreva("Ao se esconder atrás de uma mesa, tu percebe que em cima da mesa tem uma foto da Androide 18.\n")
      escreva("Você pega a foto e atira perto do Kuririn enquanto ele está um pouco distraído. Ele repara na foto ao chão, pega e fica olhando, com uma cara de abobado.\n")
      escreva("Você aproveita e passa de fininho pelo portão, enquanto Kuririn está distráido vendo a foto da 18. Você consegue abrir e fechar o portão bem devagar, MANDOU BEM!")

      seguir()

    } senao{
      escreva("\nAo se esconder atrás de uma mesa, tu percebe que em cima da mesa tem uma foto da Androide 18.\n")
      escreva("Você pega a foto e atira perto do Kuririn enquanto ele está um pouco distraído. Ele repara na foto ao chão, pega e fica olhando, com uma cara de abobado.\n")
      escreva("Você aproveita e passa de fininho pelo portão, enquanto Kuririn está distráido vendo a foto da 18. Você consegue abrir o portão,\n")
      escreva("só que antes de fecha-lo, você não se aguenta e grita \"TROUXA HAHAHAHA!\", e imediatamente, o Kuririn fica alerta, e se prepara pra te atacar.\n")
      escreva("(Na verdade, isso só aconteceu pois tu não tirou o suficiente no dado, você não seria tão idiota assim.)\n")

      seguir()
      batalhaKuririn()

    }
    
  }

  funcao batalhaKuririn(){
    
    cadeia opcaoDePreparado

    escreva("Está preparado? Sim? Não?\n")
    leia(opcaoDePreparado)
    
    enquanto(opcaoDePreparado != "Sim" e opcaoDePreparado != "sim"){
      escreva("\nÉ Sim ou Sim, não escreva outra coisa e muito menos tente fugir:\n")
      leia(opcaoDePreparado)
    }
    escreva("Isso mesmo, boa sorte(você vai precisar)\n")
    
    inteiro contadorRodada = 0
    inteiro numDoInimigo = 13
    enquanto(vidaDoPersonagem > 0 e vIdaDosInimigos[13] > 0){
      
      limpa()

      contadorRodada++
    
      opcaoNaBatalha(numDoInimigo,contadorRodada)

      u.aguarde(1000)
      sorteio = 0
      escreva("\nVez de ",nomeDoPersonagem, "\n")
      
      u.aguarde(1200)

      sorteio = u.sorteia(1,20) + ataqueDoPersonagem
      se(sorteio - dEfesaDosInimigos[13] > 0){

        vIdaDosInimigos[13] = vIdaDosInimigos[13] - (sorteio - dEfesaDosInimigos[13])
        escreva("Seu ataque + o dado deu: ", sorteio,"\n")
        escreva("Dano dado: ", sorteio  - dEfesaDosInimigos[13],"\n")

      } senao{
        escreva("Seu ataque + o dado deu: ", sorteio,"\n")
        escreva("Seu dano não superou a defesa do ",inimigosDaCampanhaNormal[13] ,"\n")

      }

      se(vIdaDosInimigos[0] <= 0){
        vIdaDosInimigos[0] = 0
        pare

      } 

      u.aguarde(2000)

      sorteio = 0
      escreva("\nVez de ", inimigosDaCampanhaNormal[13])

      u.aguarde(1200)

      sorteio = u.sorteia(1,20) + aTaqueDosInimigos[13]
      
      se(sorteio - defesaDoPersonagem > 0){
        vidaDoPersonagem = vidaDoPersonagem - (sorteio - defesaDoPersonagem)

        escreva("\nKuririn usa o Kienzan, tirando: ", sorteio," no dado\n")
        escreva("Dano dado: ", sorteio  - defesaDoPersonagem,"\n")
        se(vidaDoPersonagem < 0){
          vidaDoPersonagem = 0
        }
        
      } senao{
        escreva("\nO ataque + o dado do ",inimigosDaCampanhaNormal[13],": ", sorteio,"\n")
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
        escreva("\nPARABÉNS, você conseguiu derrotar o ", inimigosDaCampanhaNormal[13]," (que morre pela milésima vez\n")
        escreva("\nXP obtido:",xPDosInimigos[13],"\n")

        subirDeNivelKuririn() 

        seguir()
        limpa()
        status()
      
      } 

  }

 

  funcao subirDeNivelKuririn() {
      
    xpDoPersonagem = xpDoPersonagem + xPDosInimigos[0]
    enquanto(xpDoPersonagem >= limitadorDeNivel){

      escreva("\nPARABÉNS, subiu do nível ",nivel," para o nível ",nivel + 1)
      aumentaStatsPorNivel = aumentaStatsPorNivel + 2

      escreva("\nAtributos ganhos:\nVida + ",aumentaStatsPorNivel,"\tDefesa + ",aumentaStatsPorNivel," e Ataque + ",aumentaStatsPorNivel,"\n")
      auxVidaDoPersonagem = auxVidaDoPersonagem + aumentaStatsPorNivel
      vidaDoPersonagem = vidaDoPersonagem + aumentaStatsPorNivel
      defesaDoPersonagem = defesaDoPersonagem + aumentaStatsPorNivel
      ataqueDoPersonagem = ataqueDoPersonagem + aumentaStatsPorNivel
      nivel = nivel + 1
      se(xpDoPersonagem >= limitadorDeNivel){
        xpDoPersonagem = xpDoPersonagem - limitadorDeNivel
      } senao{
        
      }
      
      limitadorDeNivel = limitadorDeNivel + 40

      se(xpDoPersonagem >= limitadorDeNivel){
        escreva("\nVocê vai subir mais um nível, pois ta com o XP acima de 100\n")
        seguir()

      }

    }
    
  }

  funcao helgaMinhaAnja(){
    cadeia aceitaBebidaAlcolica
    escreva("\nApós passar pelo Kuririn, você está em um corredor grande, andando em direção ao fim da sua jornada, em direção ao Devastador, em direção do causador de tudo.\n")
    escreva("Antes que você possa avançar, você sente uma mão tocando seu ombro.\n")

    se(vIdaDosInimigos[7] == 0){
      escreva("Ao olhar, você vê que é Helga, ainda um pouco arrebentada pela surra que deu em você.\n\n")
      escreva("Helga:\n-Você está prestes a enfrentar o cara causador de tudo isso...por favor, tome isto antes de enfrenta-lo.\nHelga te oferece um frasco com um líquido dentro.\n")
      escreva("\nHelga:\n-Isso é uma bebida que recuperará sua vida por completo, tome ela, por favor!\n\n")
      escreva("Eae, você toma?\n1-Sim\n2-Não\n")
      leia(aceitaBebidaAlcolica)
      
      enquanto(aceitaBebidaAlcolica != "1" e aceitaBebidaAlcolica != "2"){
        escreva("\n???responda direito\n")
        leia(aceitaBebidaAlcolica)

      }

      limpa()
      se(aceitaBebidaAlcolica == "1"){
        escreva("\nVocê pega a bebida e toma...você sente-se mal no começo, mas logo sente um vigor absurdo, sente todo seu poder restaurado.\n")
        se(pOSSUIpOCAO == 0 e pOSSUIpOCAO)
        escreva("\nHelga:\n-Obrigada por confiar em mim ",nomeDoPersonagem,"\n")
        se(pOSSUIpOCAOfodona == 0){
          escreva("\nHelga também te oferece uma poção fodona. Você pega e guarda.")
          pOSSUIpOCAOfodona = 1
        }
        escreva("\nHelga te dá um beijo na bochecha e saí andando.\n\nAntes dela desaparecer, ela vira pra trás de diz:\n\nHelga:\nTalvez você esteja se perguntando o motivo de eu estar te ajudando, e a verdade é que...eu não fui corrompida como eles.\n\nEla some completamente, e você segue para a batalha final.\n")
        vidaDoPersonagem = auxVidaDoPersonagem
      
      } senao{
        escreva("\nVocê recusa a bebida, e Helga fica bem triste com isso.\n\nHelga:\n-É uma pena você não confiar em mim...enfim, boa sorte.\n")
        escreva("\nAntes dela desaparecer, ela vira pra trás de diz:\n\nHelga:\nTalvez você esteja se perguntando o motivo de eu estar te ajudando, e a verdade é que...eu não fui corrompida como eles.\n\nEla some completamente, e você segue para a batalha final.\n")
      }

    } senao{
      escreva("\nAo olhar, você vê que é uma moça...bem moça, você olha pra ela e pensa \"Moça bonita! moça bem feita! Moça formosa!\".\n")
      escreva("\nHelga:\n-Prazer, meu nome é Helga, eu estava na caverna esperando por você, mas tu não me encontrou. Eu vim\nte ajudar, trouxe uma bebida que restaurará suas forças.\n\nHelga te entrega uma bebida, você vai aceitar?\n1-Sim\n2-Não\n")
      leia(aceitaBebidaAlcolica)
      
      enquanto(aceitaBebidaAlcolica != "1" e aceitaBebidaAlcolica != "2"){
        escreva("\n???responda direito\n")
        leia(aceitaBebidaAlcolica)

      }

      limpa()
      se(aceitaBebidaAlcolica == "1"){
        escreva("\nVocê resolve confiar na mocinha e tomar a bebia...no começo, você sente uma tontura, mas logo sente-se REVIGORADO\n")
        se(pOSSUIpOCAOfodona == 0){
          escreva("\nHelga também te oferece uma poção fodona. Você pega e guarda.\n")
          pOSSUIpOCAOfodona = 1
        }
        escreva("Helga pula e te abraça.\n\nHelga:\n-Obrigada por confiar em mim, te desejo boa sorte e torço que você derrote O Devastador\n")
        escreva("\nAntes dela desaparecer, ela vira pra trás de diz:\n\nHelga:\n-Talvez você esteja se perguntando o motivo de eu estar te ajudando, e a verdade é que...eu não fui corrompida como eles.\n\nEla some completamente, e você segue para a batalha final.\n")
        vidaDoPersonagem = auxVidaDoPersonagem
      
      } senao{
        escreva("\nVocê recusa a bebida, e Helga fica bem triste com isso.\n\nHelga:\n-É uma pena você não confiar em mim...enfim, boa sorte.\n")
        escreva("\nAntes dela desaparecer, ela vira pra trás de diz:\n\nHelga:\nTalvez você esteja se perguntando o motivo de eu estar te ajudando, e a verdade é que...eu não fui corrompida como eles.\n\nEla some completamente, e você segue para a batalha final.\n")
      }
    }
  
    seguir()
  }

  funcao toguroDEVASTADOR(){
    cadeia taComMedo
    cadeia sentaEtomaAlgo
    cadeia bebida
    limpa()
    status()

    escreva("\nVocê está de frente com a porta que te levará ao encontro do Devastador, é o momento da sua vida, e então, tu abre a porta e entra.\n")
    escreva("Ao entrar, você vê uma sala gigante, e no centro dela, duas cadeiras, sendo que uma está virada contra sua direção.\n")
    escreva("\nVoz:\n-Eu estava esperando por você, ",nomeDoPersonagem,".")
    escreva("\nEle gira na cadeira e fica de frente pra você, depois levanta e tu tem visão completa dele.\n")
    escreva("Ele é um homem alto, cerca de 2,05 metros de altura, porte físico bem grande, óculos escuros, cabelo curto. Ele está usando uma espécie de jaqueta ou sobretudo verde.\n")
    escreva("Somente a presença dele faz você ficar intimidado.\n")
    escreva("\nEle diz:\n-Meu nome é Toguro, mas você deve me conhecer como \"O Devastador\", e eu estou curioso de uma coisa, você está com medo de mim?\n")
    escreva("\nVocê está com medo?\n1-Claro\n2-Não estou\n")
    leia(taComMedo)
    enquanto(taComMedo != "1" e taComMedo != "2"){
      escreva("\n1 ou 2?\n")
      leia(taComMedo)
    }
    limpa()
    se(taComMedo == "1"){
      escreva("\nToguro vai tirando aquele sobretudo, revelando seu corpo musculoso.\n\nToguro:\n-Que bom que você admite isso, reconhecer a verdadeira força do inimigo também é uma virtude dos mais fortes.\n")

    } senao se(taComMedo == "2"){
      escreva("\nToguro vai tirando aquele sobretudo, revelando seu corpo musculoso.\n\nToguro:\n-Deixa de frescura, você está tremendo de medo de mim, reconhecer a força do inimigo também é uma virtude dos mais fortes\n")

    }

    escreva("\nToguro senta de novo na cadeira.\n\nToguro:\n- Vamos ",nomeDoPersonagem,", sente-se aqui na outra cadeira, e pode servir-se com algumas das bebidas que estão na mesa.\n\n")
    escreva("Você pode notar que a expressão de Toguro é muito calma, e que na mesa tem chá, café, água, refri e suco de uva.\n\nToguro:\nVamos, sente-se e relaxe um pouco, enquanto eu conto os meus motivos de ter feito tudo isso, afinal, você precisa saber de tudo antes de morrer.")
    escreva("\n\nO que você faz?\n1-Senta, pega algo pra beber e ouve com calma.\n2-Fica de pé, ouvindo Toguro falar.\n")
    leia(sentaEtomaAlgo)
    enquanto(sentaEtomaAlgo != "1" e sentaEtomaAlgo != "2"){
      escreva("\n1 ou 2?\n")
      leia(sentaEtomaAlgo)
    }
    limpa()
    se(sentaEtomaAlgo == "1"){
      escreva("\nVocê resolve se sentar na cadeira e Toguro sorri levemente.\n\nToguro:\n-Vamos, pegue algo para beber.\n")
      escreva("\nO que quer beber?\n1-Chá\n2-Café\n3-Água\n4-Refri\n5-Suco de laranja\n")
      leia(bebida)

      enquanto(bebida != "1" e bebida != "2" e bebida != "3" e bebida != "4" e bebida != "5"){
        escreva("\n1,2,3,4,5?\n")
        leia(bebida)
      
      }
      limpa()

      se(bebida == "1"){
        escreva("\nVocê pega o chá, parece bom, não está envenenado nem nada, e é chá de maça.\n")

      } senao se(bebida == "2"){
        escreva("\nVocê pega o café, parece bom, não está envenenado nem nada, é um café forte mas bom.\n")

      } senao se(bebida == "3"){
        escreva("\nVocê pega a água, parece boa, não está envenenada nem nada, a água parece bem pura.\n")

      } senao se(bebida == "4"){
        escreva("\nVocê pega o refri, parece bom, não está envenenado nem nada, é uma coca-cola geladinha.\n")

      } senao se(bebida == "5"){
        escreva("\nVocê pega o suco de laranja, parece bom, esse cara parece não gostar de bebida alcólica.\n")

      } 

    } senao se(sentaEtomaAlgo == "2"){
      escreva("\nVocê decide ficar de pé, Toguro continua sério.\n\nToguro:\n-Eu não jogo sujo dessa forma, não tem nada de errado com nenhuma das bebidas, mas chega de enrolação, vou contar a verdade pra você.\n")
    } 
    seguir()
    escreva("\nToguro:\n-Bom, você deve ter notado que meu físico é muito robusto certo? pois bem, na verdade eu tenho 70 anos. Há muito tempo, por volta dos meus 20 anos,\neu tinha uma vontade muito grande de lutar com alguém que era mais forte do que eu!")
    escreva(" Esse desejo era muito forte, mas eu tinha um medo, o meu\nmedo não era de aparecer alguém mais forte do que eu, e sim de eu não estar forte para enfrenta-lo.")
    escreva(" Quando eu tinha 20 anos, participei e venci um torneio, e o\nprêmio era muito bom: Ter qualquer coisa que eu desejasse. O que eu mais desejava naquele momento era ser forte para sempre.\n")
    escreva("Eu não queria ter que envelhecer e ficar fraco, eu queria me manter forte pra sempre, para poder estar preparado para o que der e vier.\n")
    escreva("Então, eu desejei nunca envelhecer. Após isso, passaram-se 50 anos, e eu continuava infeliz, queria alguém forte para lutar, até que eu descobri\na profecia de Eldoria.")
    escreva( "Descobri que caso uma crise fosse instaurada em Eldoria, a profecia de um herói aconteceria, e\nali eu vi a esperança de nascer alguém capaz de me derrotar.")
    escreva("Eu invoquei novamente o Demônio do torneio, o mesmo que eu fiz o pacto para não envelhecer, e desejei\na ele que causasse uma catástrofe no Reino.")
    escreva(" Ele entou invocou a \"Maldição da Ficção corrompida\", onde personagens de ficção foram trazidos\npara o reino e foram corrompidos, virando criaturas do mal.")
    escreva(" A única que não foi corrompida foi aquela maldita da Helga...\nbom, chega de papo, minha vontade foi cumprida, um herói forte surgiu e está na minha frente.\n\n")

    seguir()
    limpa()
    escreva("\nToguro levanta da cadeira.\n\nToguro:\n-Eu só queria dizer mais uma coisa, o meu poder é aumentar minha força gradualmente, de 1% até 100%.\n")
    escreva("-E agora eu vou começar com 80%.\n\nToguro começa a ficar mais musculoso, as veias estão saltando, o chão treme, as cadeiras e bebidas voam longe.\n")
    escreva("A energia emanada por Toguro é a mais absurda que você já viu.\n\nO sistema de batalha vai ser igual ao que foi contra o Karasu, e se você não lembra, eu irei explicar.\n")
    escreva("O dano máximo que você poderá causar é o seu ataque, e o dano mínimo é 1/5 do seu ataque, mesma coisa pra defesa. E o sistema se aplicará no Toguro também.")
    escreva("\nDito isso, bora pra batalha!\n")
    
    seguir()
    limpa()

    inteiro umQuintoDoDanoPersonagem = 0
    inteiro umQuintoDaDefesaPersonagem = 0
    inteiro umQuintoDoDanoInimigo = 0
    inteiro umQuintoDaDefesaDoInimigo = 0

    umQuintoDoDanoPersonagem = (ataqueDoPersonagem / 5) - 1
    umQuintoDaDefesaPersonagem = (defesaDoPersonagem / 5) - 1
    umQuintoDaDefesaDoInimigo = (dEfesaTOGURO / 5) - 1
    umQuintoDoDanoInimigo = (aTaqueTOGURO / 5) - 1
    
    inteiro contadorRodada = 0
    
    enquanto(vidaDoPersonagem > 0 e vidaTOGURO > 0){
      
      limpa()

      contadorRodada++
      
      opcaoNaBatalhaTOGURO(contadorRodada)

      u.aguarde(1000)
      sorteio = 0
      escreva("\nVez de ",nomeDoPersonagem, "\n")
      
      u.aguarde(1200)

      
      sorteio = u.sorteia(umQuintoDoDanoPersonagem,ataqueDoPersonagem)
      sorteioDefesa = u.sorteia(umQuintoDaDefesaDoInimigo, dEfesaTOGURO)
      armazenaDano = sorteio - sorteioDefesa
      
      se(armazenaDano <= 0){
        armazenaDano = 0
      }
      
      se(sorteio > sorteioDefesa){
        vidaTOGURO = vidaTOGURO - armazenaDano
        escreva("Seu ataque deu: ", sorteio,"\n")
        escreva("Defesa do inimigo deu: ", sorteioDefesa,"\n")
        escreva("Dano dado: ",armazenaDano,"\n")

      } senao{
        escreva("Seu ataque deu: ", sorteio,"\n")
        escreva("Defesa do inimigo deu: ", sorteioDefesa,"\n")
        escreva("Dano dado: 0\n")

      } 
      u.aguarde(1000)
      sorteio = 0
      sorteio = u.sorteia(0,2)
      se(armazenaDano <= 0){
        escreva(falas0[sorteio])
      } senao se(armazenaDano > 0 e armazenaDano < 16){
        escreva(falas1e15[sorteio])
      } senao se(armazenaDano > 15 e armazenaDano < 46){
        escreva(falas16e45[sorteio])
      } senao se(armazenaDano > 45){
        escreva(falas45[sorteio])
      }
        
      u.aguarde(2000)
      se(vidaTOGURO <= 0 e toguroCEMporCENTO == 0){
        toguroCEMporCENTO = 100
        escreva("\nAo acertar esse ataque, Toguro caí no chão, mas logo levanta. O óculos dele quebrou, e pela primeira vez, você consegue ver seus olhos.\n")
        escreva("\nToguro:\n-Acho que chegou a hora de eu usar os 100%.\n\nNesse momento, o chão começa a tremer, como se estivesse tendo um terremoto, Toguro emana uma energia fenomenal.\n")
        escreva("A pele de Toguro vai mudando, ficando acizentada, o olhar dele é vazio, e seu poder é imensurável.\n\nToguro:\n-Agora sim ",nomeDoPersonagem,", vamos continuar nossa luta")
        vidaTOGURO = 0
        vidaTOGURO = 200
        aTaqueTOGURO = aTaqueTOGURO + 30
        dEfesaTOGURO = dEfesaTOGURO + 10
      }
      
      
      se(vidaTOGURO <= 0){
        vidaTOGURO = 0
        pare

      } 

      u.aguarde(2000)


      sorteio = 0
      escreva("\nVez de ", nomeTOGURO)

      u.aguarde(1200)
      //
      sorteio = u.sorteia(umQuintoDoDanoInimigo,aTaqueTOGURO)
      sorteioDefesa = u.sorteia(umQuintoDaDefesaPersonagem, defesaDoPersonagem)
      armazenaDano = sorteio - sorteioDefesa
      
      se(armazenaDano <= 0){
        armazenaDano = 0
      }

      se(sorteio >= sorteioDefesa){
        vidaDoPersonagem = vidaDoPersonagem - armazenaDano
        escreva("\nO Ataque do inimigo deu: ", sorteio,"\n")
        escreva("Sua defesa: ", sorteioDefesa,"\n")
        escreva("Dano tomado: ",armazenaDano,"\n")

      } senao{
        escreva("\nO Ataque do inimigo deu: ", sorteio,"\n")
        escreva("Sua defesa: ", sorteioDefesa,"\n")
        escreva("Dano tomado: 0\n")

      } 
      //
      u.aguarde(2000)
       
      se(vidaDoPersonagem == 0){
        escreva("\nToguro pega você pela cabeça.\n\nToguro:\n-Decepcionante Aventureiro, eu esperava mais de você.\nToguro enfia a mão no seu peito, perfurando seu coração e te matando completamente.\n")
        seguir()
        taMorto()
        u.aguarde(3000)
      
        limpa()
        
      }  
      
      u.aguarde(1000)

    }

    escreva("\nApós acertar o último golpe no Toguro, ele te dá um soco que te faz cair no chão.\n")
    escreva("Toguro se aproxima lentamente.\n\nToguro:\n-Muito obrigado ",nomeDoPersonagem,", eu me diverti bastante.\n")
    escreva("Você pode notar que a pele dele começa a rachar.\n\nToguro:\n-Eu fiz um esforço violento pra atingir os 100%...você é capaz de tirar 100% CONTRA ALGUÉM?\n\nNeste momento, a pele de Toguro racha e ele caí no chão.\n\n")
    escreva("Você venceu ",nomeDoPersonagem,", venceu.\nHelga entra correndo na sala e pula em cima de você...ela não foi corrompida.\nLogo após isso, Eldoria volta a ser um lugar tranquilo...graças a você!\n")

    seguir()
    limpa()
    escreva("\nCHEAT DESBLOQUEADO: Esse é o único por enquanto. Na hora de escolher classe, em vez de digitar 'Mago', 'Guerreiro' ou 'Arqueiro',\ndigite 'Lorde Faisão das Trevas', é uma classe muito roubada.\n")
    escreva("\n\nBORA PROS CRÉDITOS\n\n")

    creditos()
  

  }

  funcao opcaoNaBatalhaTOGURO(inteiro contadorRodada){
    cadeia opcao

    limpa()
    
    enquanto(opcao != "1" e opcao != "2"){
      escreva("Rodada ",contadorRodada)
      escreva("\nUsuário:",nomeDoPersonagem,"\t│\t",vidaDoPersonagem,"/",auxVidaDoPersonagem,"\n")
      escreva("Inimigo:",nomeTOGURO,"\t│\t",vidaTOGURO,"/",auxVidaTOGURO,"\n\n")
      
      escreva("Sua vez!\nO que você quer fazer?\n1-Atacar\n2-Usar Poção\n")
      leia(opcao)
      limpa()
    }
    
    
      se(opcao == 2){
        
        pocao()
        u.aguarde(2000)
        opcaoNaBatalhaTOGURO(contadorRodada)
      } senao se(opcao == 1){
        
      } 
           
  }

  
  






  
























  funcao casoEncontrePocaoFODONA(){
    inteiro opcao
    se(pOSSUIpOCAOfodona == 1 e vidaDoPersonagem == auxVidaDoPersonagem){
      escreva("\nVocê já possui uma poção e não poderá carregar mais uma, e também já ta com a vida máxima, ou seja...sem poção extra")
    } senao se(pOSSUIpOCAOfodona == 1 e vidaDoPersonagem < auxVidaDoPersonagem){
      
      escreva("\nVocê já possui uma poção e não poderá carregar mais uma, mas não está com a vida máxima, quer usar a poção que encontrou agora?Sim?Não?\n")
      leia(opcao)
      enquanto(opcao != "Sim" e opcao != "Não"){
        escreva("Sim OU Não?")
        leia(opcao)
      }
      se(opcao == "Sim"){
        pocaoFODONA()
        pOSSUIpOCAOfodona = 1

      } senao{
        escreva("\nOk então\n")

      }
      
  
    } 
    senao{
      escreva("\nPoção guardada!\n")
      pOSSUIpOCAOfodona = 1
    }

  }

  funcao pocaoFODONA(){
    se(pOSSUIpOCAOfodona == 1){
      se((vidaDoPersonagem + 30) > auxVidaDoPersonagem){
      vidaDoPersonagem = auxVidaDoPersonagem
      } senao{
      vidaDoPersonagem = vidaDoPersonagem + 30
      }
      escreva("Poção usada\n")
      pOSSUIpOCAO--
      escreva("Vida atual: ", vidaDoPersonagem)
    } senao se(pOSSUIpOCAOfodona == 0){
      escreva("\nVocê não tem poção ;-;\n")
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
      escreva("\nPoção guardada!\n")
      pOSSUIpOCAO = 1
    }

  }

  funcao pocao (){
    se(pOSSUIpOCAO == 1 e pOSSUIpOCAOfodona == 0){
      se((vidaDoPersonagem + 15) > auxVidaDoPersonagem){
      vidaDoPersonagem = auxVidaDoPersonagem
      } senao{
      vidaDoPersonagem = vidaDoPersonagem + 15
      }
      escreva("Poção usada\n")
      pOSSUIpOCAO--
      escreva("Vida atual: ", vidaDoPersonagem)
    } senao se(pOSSUIpOCAO == 0 e pOSSUIpOCAOfodona == 0){
      escreva("\nVocê não tem poção ;-;\n")
    } senao se(pOSSUIpOCAO == 0 e pOSSUIpOCAOfodona == 1){
      pocaoFODONA()
    }
  }

  funcao casoEncontreArmadura(inteiro defesaDaArmadura, inteiro capaceteDaFuncao, inteiro peitoralDaFuncao, inteiro calcaDaFuncao, inteiro botasDaFuncao){
    cadeia opcaoSeQuerOuNaoQuerArmaduraNova

    se(capaceteDaFuncao == 1 e capacete[0] == 1){
      escreva("\nVocê já possui um capacete, deseja trocar por esse que você encontrou agora?\nDefesa do Capacete atual: ",capacete[1],"\nCapacete Novo: ", defesaDaArmadura)
      escreva("\n1-Trocar pelo capacete novo\n2-Ficar com o velho\n")
      leia(opcaoSeQuerOuNaoQuerArmaduraNova)
      
      enquanto(opcaoSeQuerOuNaoQuerArmaduraNova != "1" e opcaoSeQuerOuNaoQuerArmaduraNova != "2"){
        escreva("Opção 1 ou Opção 2?\n")
        leia(opcaoSeQuerOuNaoQuerArmaduraNova)
      }
    
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
      
      enquanto(opcaoSeQuerOuNaoQuerArmaduraNova != "1" e opcaoSeQuerOuNaoQuerArmaduraNova != "2"){
        escreva("Opção 1 ou Opção 2?\n")
        leia(opcaoSeQuerOuNaoQuerArmaduraNova)
      }

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
      escreva("\nVocê já possui um Peitoral, deseja trocar por esse que você encontrou agora?\nDefesa do Peitoral atual: +",peitoral[1],"\nPeitoral Novo: +", defesaDaArmadura)
      escreva("\n1-Trocar pelo Peitoral novo\n2-Ficar com o velho\n")
      leia(opcaoSeQuerOuNaoQuerArmaduraNova)

      enquanto(opcaoSeQuerOuNaoQuerArmaduraNova != "1" e opcaoSeQuerOuNaoQuerArmaduraNova != "2"){
        escreva("Opção 1 ou Opção 2?\n")
        leia(opcaoSeQuerOuNaoQuerArmaduraNova)
      }

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

      enquanto(opcaoSeQuerOuNaoQuerArmaduraNova != "1" e opcaoSeQuerOuNaoQuerArmaduraNova != "2"){
        escreva("Opção 1 ou Opção 2?\n")
        leia(opcaoSeQuerOuNaoQuerArmaduraNova)
      }

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
      escreva("\nVocê já possui uma Calça, deseja trocar por essa que você encontrou agora?\nDefesa da Calça atual: +", calca[1],"\nCalça Nova: +", defesaDaArmadura)
      escreva("\n1-Trocar pela Calça nova\n2-Ficar com a velha\n")
      leia(opcaoSeQuerOuNaoQuerArmaduraNova)

      enquanto(opcaoSeQuerOuNaoQuerArmaduraNova != "1" e opcaoSeQuerOuNaoQuerArmaduraNova != "2"){
        escreva("Opção 1 ou Opção 2?\n")
        leia(opcaoSeQuerOuNaoQuerArmaduraNova)
      }

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
      
      enquanto(opcaoSeQuerOuNaoQuerArmaduraNova != "1" e opcaoSeQuerOuNaoQuerArmaduraNova != "2"){
        escreva("Opção 1 ou Opção 2?\n")
        leia(opcaoSeQuerOuNaoQuerArmaduraNova)
      }

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
      escreva("\nVocê já possui Botas, deseja trocar por essas que você encontrou agora?\nDefesa das Botas atual: +",botas[1],"\nBotas Nova: +", defesaDaArmadura)
      escreva("\n1-Trocar pelas Botas novas\n2-Ficar com o velho\n")
      leia(opcaoSeQuerOuNaoQuerArmaduraNova)

      enquanto(opcaoSeQuerOuNaoQuerArmaduraNova != "1" e opcaoSeQuerOuNaoQuerArmaduraNova != "2"){
        escreva("Opção 1 ou Opção 2?\n")
        leia(opcaoSeQuerOuNaoQuerArmaduraNova)
      }

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

      enquanto(opcaoSeQuerOuNaoQuerArmaduraNova != "1" e opcaoSeQuerOuNaoQuerArmaduraNova != "2"){
        escreva("Opção 1 ou Opção 2?\n")
        leia(opcaoSeQuerOuNaoQuerArmaduraNova)
      }

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


  } 

  funcao casoEncontreARMA(inteiro danoDaArma){
    cadeia opcaoSeQuerARMA
    limpa()
    status()
    se(arma[0] == 1){
    escreva("Você já possui uma arma, quer trocar por essa que já tem agora?\nDano da Arma atual: ",arma[1],"\tDano da nova Arma: ",danoDaArma,"\n1-Trocar\n2-Não trocar\n")
    leia(opcaoSeQuerARMA)
    
    enquanto(opcaoSeQuerARMA != "1" e opcaoSeQuerARMA != "2"){
      escreva("Opção 1 ou Opção 2?\n")
      leia(opcaoSeQuerARMA)
    }

    se(opcaoSeQuerARMA == "1"){
      escreva("\nArma Trocada!\n")
      ataqueDoPersonagem = ataqueDoPersonagem - arma[1]
      arma[1] = danoDaArma
      ataqueDoPersonagem = ataqueDoPersonagem + arma[1]
    } senao{
      escreva("\nArma não trocada!\n")
    }

    } senao se(arma[0] == 0){
      escreva("\nArma pega!\n")
      arma[0] = 1
      arma[1] = danoDaArma
      ataqueDoPersonagem = ataqueDoPersonagem + arma[1]

    }
    seguir()
  }



  funcao status(){
    se(vidaDoPersonagem > 0){
      escreva("\nNome:",nomeDoPersonagem)
      escreva("\nClasse:", classe," ———— ","Região: ", mEUlOCALaTUAL ," — ",regioes[localizacao])
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
        escreva("Calça:✅ \t")
      } senao{
        escreva("Calça:❌ \t")
      }
      se(botas[0] == 1){
        escreva("Botas:✅ \t")
      } senao{
        escreva("Botas:❌ \t")
      }
      se(arma[0] == 1){
        escreva("Arma:✅\t\n")
      } senao{
        escreva("Arma:❌\t\n")
      }
      escreva("Def:",capacete[1],"\t\t\t\t\tDef:",peitoral[1],"\t\t\t\t Def:",calca[1],"\t\t\t Def:",botas[1],"\t\t\tDano:",arma[1],"\n")

    } senao{
      taMorto()
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

  

  funcao opcaoNaBatalha(inteiro numDoInimigo,inteiro contadorRodada){
    cadeia opcao

    limpa()
    
    enquanto(opcao != "1" e opcao != "2"){
      escreva("Rodada ",contadorRodada)
      escreva("\nUsuário:",nomeDoPersonagem,"\t│\t",vidaDoPersonagem,"/",auxVidaDoPersonagem,"\n")
      escreva("Inimigo:",inimigosDaCampanhaNormal[numDoInimigo],"\t│\t",vIdaDosInimigos[numDoInimigo],"/",aUXVIDADOSINIMIGOS[numDoInimigo],"\n\n")
      
      escreva("Sua vez!\nO que você quer fazer?\n1-Atacar\n2-Usar Poção\n")
      leia(opcao)
      limpa()
    }
    
    
      se(opcao == 2){
        
        pocao()
        u.aguarde(2000)
        opcaoNaBatalha(numDoInimigo,contadorRodada)
      } senao se(opcao == 1){
        
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
    limpa()
    status()
    se(opcao == "1"){
      escreva("\nShow, ele tem um BOM aumento de dano(mais especificamente 5 de acréscimo no seu ataque)\n")
      escreva("\n\n __________________________________________________________  \n")
      escreva(" \\                                  | (_)     (_)    (_)   \\ \n")
      escreva("  `.                                |                       / \n")
      escreva("    `-..........................____|_(‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾)_/ \n")
      arma[0] = 1
      arma[1] = 5
      ataqueDoPersonagem = ataqueDoPersonagem + arma[1]
    } senao se(opcao == "2"){
      escreva("\n;———;\n")
    }
    seguir()
  }

  funcao pistola(){
    inteiro danoDaArma = 15
    escreva("\nVocê encontra um baú e abre ele, dentro havia uma pistola(muito conveniente)\n\n\n")
    u.aguarde(2000)
    escreva(" +-'~`---------------------------------/\\--         \n")
    escreva("||\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\" \\\\\\\\\\/(~)     \n")
    escreva("||                                  \\\\\\\\  \\/_     \n")
    escreva(" |~~~~~~~~-________________-_________________\\ ~--_ \n")
    escreva(" !---------|_________       ------~~~~~(--   )--~~  \n")
    escreva("                     \\ /~~~~\\~~\\   ()--- \\_ /()       \n")
    escreva("                      ||     |  | \\   ()   \\\\       \n")
    escreva("                      \\\\____/_ / ()\\        \\\\      \n")
    escreva("                       `~~~~~~~~~-. \\        \\\\     \n")
    escreva("                                   \\ \\  <($)> \\\\    \n")
    escreva("                                    \\ \\        \\\\   \n")
    escreva("                                     \\ \\        \\\\  \n")
    escreva("                                      \\ \\        \\\\ \n")
    escreva("                                       \\ \\  ()    \\|\n")
    escreva("                                       _\\_\\__====~~~\n")
    escreva("\n\n")

    seguir()

    casoEncontreARMA(danoDaArma)
  }































  funcao batalha(){
    
    cadeia opcaoDePreparado

    escreva("Está preparado? Sim? Não?\n")
    leia(opcaoDePreparado)
    
    enquanto(opcaoDePreparado != "Sim" e opcaoDePreparado != "sim"){
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

        subirDeNivel() 

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
    enquanto(xpDoPersonagem >= limitadorDeNivel){

      escreva("\nPARABÉNS, subiu do nível ",nivel," para o nível ",nivel + 1)
      aumentaStatsPorNivel = aumentaStatsPorNivel + 2

      escreva("\nAtributos ganhos:\nVida + ",aumentaStatsPorNivel,"\tDefesa + ",aumentaStatsPorNivel," e Ataque + ",aumentaStatsPorNivel,"\n")
      auxVidaDoPersonagem = auxVidaDoPersonagem + aumentaStatsPorNivel
      vidaDoPersonagem = vidaDoPersonagem + aumentaStatsPorNivel
      defesaDoPersonagem = defesaDoPersonagem + aumentaStatsPorNivel
      ataqueDoPersonagem = ataqueDoPersonagem + aumentaStatsPorNivel
      nivel = nivel + 1
      se(xpDoPersonagem >= limitadorDeNivel){
        xpDoPersonagem = xpDoPersonagem - limitadorDeNivel
      } senao{
        
      }
      
      limitadorDeNivel = limitadorDeNivel + 40

      se(xpDoPersonagem >= limitadorDeNivel){
        escreva("\nVocê vai subir mais um nível, pois ta com o XP acima de 100\n")
        seguir()

      }

    }
    
  }

  funcao liberdade(){
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
          liberdade()//alterar
          
          
        } senao{
          mEUlOCALaTUAL--
          se(mEUlOCALaTUAL == 1){
            desenhoDaFloresta()
            casoVoltePraFloresta()
            //Vou colocar um "se" para os números de cada região.
            //e depois vou criar uma função específica pra cada região, se ele voltar,
            //ele irá poder explorar e tals, mas sempre encontrará um inimigo
          } senao se(mEUlOCALaTUAL == 2){
            vilaAbandonada()
            cavernaSombria()
          } senao se(mEUlOCALaTUAL == 3){
            cavernaSombria()
            pantanoDosLamentos()

          }senao se(mEUlOCALaTUAL == 4){
            pantanoDosLamentos()
          }
           
        }

        pare

      }
    }
    seguir()
  }

  funcao descansar(){
    se(vidaDoPersonagem > 0){ 
      escreva("\n")
      escreva("\n\n")
      se((vidaDoPersonagem + 5) > auxVidaDoPersonagem){
        vidaDoPersonagem = auxVidaDoPersonagem
      } senao{
        vidaDoPersonagem = vidaDoPersonagem + 5
      }
      seguir()
      
    } senao{
      taMorto()
    }
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

  
  funcao creditos(){
    limpa()
    escreva("             ________________________________________________              \n")
    escreva("            /                                                \\             \n")
    escreva("           |    _________________________________________     |            \n")
    escreva("           |   |                                         |    |            \n")
    escreva("           |   |  Eu vou dizer uma coisa...              |    |            \n")
    escreva("           |   |                                         |    |            \n")
    escreva("           |   |                   O                     |    |            \n")
    escreva("           |   |               PROFESSOR                 |    |            \n")
    escreva("           |   |               VINICIUS                  |    |            \n")
    escreva("           |   |                   É                     |    |            \n")
    escreva("           |   |               DEMAIS!!!                 |    |            \n")
    escreva("           |   |                                         |    |            \n")
    escreva("           |   |                                         |    |            \n")
    escreva("           |   |                                         |    |            \n")
    escreva("           |   |                                         |    |            \n")
    escreva("           |   |                                         |    |            \n")
    escreva("           |   |_________________________________________|    |            \n")
    escreva("           |                                                  |            \n")
    escreva("            \\_________________________________________________/            \n")
    escreva("                   \\___________________________________/                   \n")
    escreva("                ___________________________________________                \n")
    escreva("             _-'    .-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.  --- `-_             \n")
    escreva("          _-'.-.-. .---.-.-.-.-.-.-.-.-.-.-.-.-.-.-.--.  .-.-.`-_          \n")
    escreva("       _-'.-.-.-. .---.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-`__`. .-.-.-.`-_       \n")
    escreva("    _-'.-.-.-.-. .-----.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-----. .-.-.-.-.`-_    \n")
    escreva(" _-'.-.-.-.-.-. .---.-. .-------------------------. .-.---. .---.-.-.-.`-_ \n")
    escreva(":-------------------------------------------------------------------------:\n")
    escreva("`---._.-------------------------------------------------------------._.---'\n")
    escreva("                                                             \n")

    vidaDoPersonagem = 0
    seguir()
  }

  funcao taMorto(){
    seguir()
    limpa()
    escreva("                                                                                                                              ..--                                                  ..++::              \n")
    escreva("                                                                                                              ..::            ++                                              ----                      \n")
    escreva("                                                                                                              ++  ##          --  ##                                        --                          \n")
    escreva("                                                                                                              mm  ..##        ..  ++                                    mm                              \n")
    escreva("                                                                                                              @@  ..::                          ::                  ..                                ..\n")
    escreva("                                                                                                              --    --mm    ..    ..          ::                                                        \n")
    escreva("                                                                                                  @@            --  --++    ..    --::      ++  ..                ::                                    \n")
    escreva("                                                                                                --    --        MM    --::  ..    --::        ..##                ::                                    \n")
    escreva("                                                                                                        ::      ::    --@@  --    ----    --  ..                  ++                                    \n")
    escreva("                                                                                                  ++      ++      ..  ..--  mm    ..    MM  --MM                  ::                                  ..\n")
    escreva("                                                                                                          ..++    @@    --##..    --      ..++                    ::                    --##mm++@@@@..::\n")
    escreva("                                                                                                    ::      ..@@  MM    --##--..::++....--++                      ::            ..--  mm    --        mm\n")
    escreva("                                                                                                      ++      --@@@@  ....##--..--..------@@                      ::          ++::  --    ++  ::  ..    \n")
    escreva("                                                                                                        mm      ........MM......--....------                      ::        @@    ##    ::    MM        \n")
    escreva("                                                                                                          MM      ::------..----------....++                      ::                ++    ++@@          \n")
    escreva("                                                                                                            MM  --  --....--..--MMmm--MMmm--                      ::              ++    ++MM  ..        \n")
    escreva("                                                                                                              ++    ..--..++::..----......                        ..              ::                    \n")
    escreva("                                                                                                                    ----..----..--..------                                        ::      ..        ++mm\n")
    escreva("                                                                                                    ::mm--::mm  ++    ..mmMMmm    --......                                        ++    mm..      @@    \n")
    escreva("                                                                                                  ..        --::::    mm......++  --....--..MMMM                    ..            ..      --    @@      \n")
    escreva("                                                                                                  ::            ..++..--......--..  ..------  ####                  ++            ..      @@  --        \n")
    escreva("                                                                                                      ::++                      --..--::mm--..####mm                ++            mm      --  --    ..  \n")
    escreva("                                                                                                          ..++                    ..##..--..######MM                ..          ..--              ++    \n")
    escreva("                                                                                                              --                  ::mm++--::######@@##                            @@        --  ++    --\n")
    escreva("                                                                                                                  @@          MM....--....##########@@MM                          ..        @@  ++    ..\n")
    escreva("                                                                                                                      ::mmmm##    --..++################MM            --          ..    --  ##      MM  \n")
    escreva("                                    mmmm::----::MM::                                                                        ##############################            @@                ++..@@..  ..    \n")
    escreva("                              ::::                  ..++                                                                    ############@@################            --                --  MM  ..##    \n")
    escreva("                          ----                          MM                                                                  @@########MM@@@@############@@mm                          --mm  ++  --MM    \n")
    escreva("                        ::              ....              MM                                                                  MMMMMMMMMMMMMM############..  --                          ..      ::++    \n")
    escreva("                    ::          ..mm..        ..@@                                                                              @@MMMMMMMM@@@@########++----            --                      ++      \n")
    escreva("                  ++        ....                  --        mm                                                                    ##MM@@MMMM@@MM####++--MM....mm        mm          ++        ::++      \n")
    escreva("                mm        ++                        ..      ..                                                                      ######@@MM####::  ..--++--..mm      --          ++        ::....  ..\n")
    escreva("              mm      --                              mm      ..                                                                      @@MMMM##@@        ........  mm    ..                        MM  ++\n")
    escreva("            mm      ::                                        ::                                                                                        ..--....--  mm                            ##  ++\n")
    escreva("                  ::                                    ..    ::                                                                        mm                --------..  ::  ..          ..          ##mm  \n")
    escreva("          ::    ..                                      --    --                                                ##                        ..                ----..--..  ++            MM          ##..  \n")
    escreva("        mm      --                ..++@@@@@@@@          --    ..                                            ::##++                        ::                ............  @@          mm..        ##    \n")
    escreva("              @@          MM##mmmmmmmmmmmmmmmmmmMM..    ..                                                @@####            ##                                ----......--  --          ++              \n")
    escreva("      MM          --@@MMmmMM@@####################MM@@      ..                                          ######@@        --##::              ++                  ........----##      ..::MM              \n")
    escreva("      ..    @@MMmmmm@@##################################::  --                                        ########        @@####                ::                  --........--@@          mm              \n")
    escreva("    ::  @@@@mm##########################################@@##                                        @@########    --@@####..                                      ----......++          ::              \n")
    escreva("    ++    --      ++@@########################################                    ----            MM########    MM########                                        --........--          MM      ::      \n")
    escreva("    --    mm              ::####################################..          MMmmmmmmmmmm@@    ::mm##########  @@@@######::                    --                  --..++----            ::    --        \n")
    escreva("          mm                    MM################################MM      mmmm##########MMmm@@mm##########mmMMMM########                      --                  ..--MM----            mm..  ..++      \n")
    escreva("          mm                        ##################################  MMmm################mm@@##########@@mm########@@                      --                    ..  ....::          ::MM##          \n")
    escreva("          MM                          MM################################@@################################mm##########                    --  MM                    ..--MM--@@        ..  @@  MM        \n")
    escreva("          MM                            ::##############################################################mm@@##########                    ..    mm                ....--MM--              ++MM          \n")
    escreva("    ..    --                                ############################################################mm##########@@            ########                ::      --..--mm::        ..    ..            \n")
    escreva("    ::      ++              ..--::MM####@@############################################################mm############          @@########..        ..      ..    ......--::++        ..                   \n")
    escreva("    ++      ..          ++MMmmmmMM####################################################################MM############      --############            ----::mmmm....--------mm              ::            \n")
    escreva("      ..      ..::    ##mmmm######################################################################################@@      ########@@mm--                      ..::----....MM              @@            \n")
    escreva("      ::          ##mmmm############################################################################@@############..    ##########++mm      ++          --......  --..----@@              ..            \n")
    escreva("        mm      mmmmMM############################################################################################  ::##  ######mm++mm    --          --..................++            MM              \n")
    escreva("          ..--mmmm@@##################################################################################################++  ######mm++::    MM        ----..................            MM                \n")
    escreva("              mm@@####################################################@@mm################..      ++##################    ######mm++--            ..--............--....++              ##              \n")
    escreva("            MMmm####################################################..--..@@MM############::##++--..  ##############      ######MM++mm--++        ----................--mm        ..##MM::                \n")
    escreva("          @@mm######################################################++####mm++##############mmMM--MM  ..##########    ::########MM++++mm@@        ................----                @@                \n")
    escreva("          mm@@############################################################MM--######--######..####@@    ##########    ############++++MM##      ..--..............--  ##MM        mm@@                  \n")
    escreva("        mmmm############################################MM##########..--------::##@@..##..++------++##  ######MM--..::@@##########++++++##      --................--  ####        ..mm--              ..\n")
    escreva("      @@mm######MM--                ::@@################MM########..--..++mm--..##....##----....--++@@  ##......--..--@@##########++++mm@@      --..........------  ######        @@::--..               \n")
    escreva("      mmmmMM::                            ##############MM########....MM      --@@..--++----....--@@--  --------....--@@##########++++++..mm..--............----  ########      @@                        \n")
    escreva("    @@++@@                              mmmm######################..--@@        ----....--........mm......--......----@@############++++++..++----......----  ############    --                        \n")
    escreva("  ..mm                                MMmmMM##############MM######MM..--      MM##mm::::..--......++@@::----........MM@@############mm++++++--@@--....----++MM@@############                            \n")
    escreva("  ##                                @@mmmm##################@@######..  MM      ++::mm..------....--++----......--::  @@##############++++mm++::mm##mm@@mm++++################                          \n")
    escreva("::                                @@++mm############################::--  ::      ++        ----........  ----....@@  ##@@##############++++++++++++MM++++++mm##############@@##                        \n")
    escreva("                                mmmm++################################--..                    --..--..##  ##----....  ##@@################++++++++++@@mm++####################@@@@    ..mmMM++          \n")
    escreva("                                mmmm##########################MM@@######                          --..mm      ..++    ##@@mm################@@mm++++############################@@@@                    \n")
    escreva("                                mmmm##########################@@....--mm++        ::                --##    ##  @@  ..####@@mm####################################################@@MM@@@@MM--          \n")
    escreva("                                mmmm##############################      ##@@      mm                  mm--      MM  mm##mm@@MM######################################################++        MM        \n")
    escreva("                              ..mmmm################################--    ..      MM                ++++++    mm++  ####mm##@@++##########################################################--            \n")
    escreva("                              ..mmmm####################mm############mm--..##++                    ##++++    mm++  ######mm@@mm@@####################################################@@@@@@            \n")
    escreva("                              ..mmmm##############MM    mm##########mm  ..                          ####mm      ::  ######++##@@++######################################################@@@@@@@@@@    ::..  \n")
    escreva("                                mmmm############        mm##########      ..                      ++      MM    ::  ######++MM@@MM++########################################################@@@@        \n")
    escreva("                                mmmm##########          MM########          --                  ..          --..::  ######MM++##@@++@@##########################################################  @@--  \n")
    escreva("                                MMmm########..          @@######++            ..mm::..        ....              ::++########++MM@@@@++##################################@@######################::      \n")
    escreva("                                @@mm######MM            --######                                                ::@@########++++##@@MM::mmmmmm++++++++::++++++mm@@@@@@@@@@########@@############        \n")
    escreva("                                ++mm######                ######                                                ++##########mm++MM@@@@mm++++++++mmmmMMMM@@@@@@@@@@@@@@@@##########@@##################@@@@\n")
    escreva("                                --mm####mm                ######                                                ++############++++##@@@@##@@@@@@@@@@@@@@@@@@######################@@##################  \n")
    escreva("                                  mm####                    ##@@                                                  ############++++++@@@@##@@##@@@@@@@@@@@@@@@@@@@@@@############@@@@##################MM\n")
    escreva("                                  @@MM##                    --@@                                                  ############++++++++@@@@@@##@@##@@@@@@@@@@@@@@@@@@@@##########@@@@####################\n")
    escreva("                                  ++mmMM                      ::                                                  ############@@++++++++@@@@@@######@@@@@@@@@@@@@@@@@@@@####@@@@@@@@####################\n")
    escreva("                                    ++                                                                          ::##############++++++++++mm@@@@@@##@@##@@@@@@@@@@@@@@@@####@@@@@@######################\n")
    escreva("                                    ##                                                                          ++##############++++++++++++++MM@@@@@@##@@##@@@@@@@@@@@@@@##@@@@########################\n")
    escreva("                                    mm                                                                          ..##############++++++++++++++++++mmMMMM@@@@@@@@@@@@@@@@@@##@@@@########################\n")
    escreva("                                                                                                                  ##############@@++++++++++++++++++++++++++++@@@@@@@@@@@@##@@##########################\n")
    escreva("                                                                                                                  MM##############++++++++++++++++++++++++++++++@@@@@@@@@@####MM########################\n")
    escreva("                                                                                                                    ##############++++++++++++++++++++++++++++++++@@@@@@@@##@@@@####################@@@@\n")
    escreva("                                                                                                                    ##############++++++++++++++++++++++++++++++++mm@@@@@@##MM@@@@@@@@############@@@@@@\n")
    escreva("                                                                                                                      ############++++++++++++++++++++++++++++++++++@@@@@@@@@@####@@############@@##@@@@\n")
    escreva("                                                                                                                      ############@@++++++++++++++++++++++++++++++mm@@@@##MMMM##@@@@MM########++mm@@MM##\n")
    escreva("                                                                                                                        ############++++++mm++++++++++++++++++++++MM@@@@@@MM@@@@@@##########++++++MM@@@@\n")
    escreva("                                                                                                                        ::##########++++++@@++++++++++++++++++++++@@@@####@@##MM@@@@######++++++++++MM@@\n")
    escreva("                                                                                                                          ++########++++++mm++++++++++++++++++++@@##++####@@##MM########MM++++++++++++@@\n")
    escreva("                                                                                                                            ..######++++++++MM++++++++++++++++mmMM++::####MM@@@@@@@@MM##++++++++++++++++\n")
    escreva("                                                                                                                              ..####@@++++++##++++++++++++++++@@++++##MM@@@@MM######@@####++++++++++++++\n")
    escreva("                                                                                                                                  ####++++++@@++++++MM++++++++++++####MM@@##@@MM@@MM##mm@@MM++++++++++++\n")

    seguir()
    limpa()
    menu()
  
  //você é inutil função, só sera útil quando eu botar desenhinho
  }
}



  

