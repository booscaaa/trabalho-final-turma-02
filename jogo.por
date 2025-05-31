programa {
  inclua biblioteca Util --> u
                      //0                   1                    2                  3                  4                      5           6                      7
  cadeia regioes[8] = {"VILA DOS COME�OS", "FLORESTA DA N�VOA", "VILA ABANDONADA", "CAVERNA SOMBRIA", "LABIRINTO ESCONDIDO", "COLISEU", "P�NTANO DOS LAMENTOS", "CASTELO DOURAD0"}
  inteiro regiaoAtual = 0

  cadeia nomeDoPersonagem, classe
  inteiro opcaoDeClase = 0
  inteiro nivel = 0
  inteiro experiencia = 0
  inteiro afinidadeLUZ = 0
  inteiro afinidadeESCURIDAO = 0
  inteiro afinidadeFOGO = 0
  inteiro afinidadeAGUA = 0
  inteiro afinidadeVENTO = 0
  inteiro afinidadeTERRA = 0
  inteiro afinidadeNEUTRO = 1
  inteiro vida = 100
  inteiro ataque = 0
  inteiro defesa = 0
  inteiro agilidade = 0
  
  // Bagulho pro combate
  inteiro pontosDeAcao = 10
  inteiro pontosDeAcaoInimigo = 10
  cadeia nomeDoInimigo
  inteiro nivelDoInimigo
  inteiro vidaDoInimigo
  inteiro inimigoATK
  inteiro inimigoDEF
  inteiro inimigoAGI

  // A��es de combate
  cadeia ataque
  cadeia defesa
  cadeia habilidade

    // Fun��o principal
    funcao inicio() {
        inteiro opcao = 0
        
        enquanto (opcao != 3) {
            opcao = menuDeInicializacao()
            
            escolha(opcao) {
                caso 1:
                    criarPersonagem()
                    campanha()
                pare
                caso 2:
                    mostrarCreditos()
                pare
                caso 3:
                    escreva("Saindo do jogo...\n")
                pare
                caso contrario:
                    escreva("Op��o inv�lida! Tente novamente.\n")
                pare
            }
      }
    }
    
    // Fun��o para exibir o menu inicial e retornar a op��o escolhida
    funcao inteiro menuDeInicializacao() {
        inteiro opcao = 0
        
        escreva("\nBem vindo a Eldoria Saga\n")
        escreva("--1: Novo jogo--\n")
        escreva("--2: Cr�ditos--\n")
        escreva("--3: Sair--\n")
        escreva("Escolha uma op��o: ")
      
        
        // Garante que a leitura seja feita pelo menos uma vez
        leia(opcao)
        se(opcao < 1 ou opcao > 3) {
            escreva("Op��o inv�lida! Tente novamente: ")
            leia(opcao)
        }
        
        retorne opcao
    }
    
    // Fun��o para criar um novo personagem
    funcao criarPersonagem() {

        escreva("\n--- Cria��o de Personagem ---\n")
        escreva("Digite o nome do seu personagem: ")
        leia(nomeDoPersonagem)
        
        // Mostra menu de classes at� receber uma op��o v�lida
        escreva("\nEscolha sua classe:\n")
        escreva("1 - GUERREIRO, Foco em vida e defesa. Ideal para resist�ncia prolongada.\n")
        escreva("2 - MAGO, Ataque poderoso, por�m fr�gil. Especialista em dano r�pido.\n")
        escreva("3 - ARQUEIRO, Equilibrado entre ataque e mobilidade. Vers�til.\n")
        escreva("Op��o: ")
        
        leia(opcaoDeClase)
        enquanto(opcaoDeClase < 1 ou opcaoDeClase > 3) {
            escreva("Op��o inv�lida! Tente novamente: ")
            leia(opcaoDeClase)
        }
        
        escolha(opcaoDeClase) {
            caso 1:
                classe = "GUERREIRO"
            pare
            caso 2:
                classe = "MAGO"
            pare
            caso 3:
                classe = "ARQUEIRO"
            pare
        }
        
        // Aqui voc� pode adicionar a inicializa��o dos atributos do personagem
        escreva("\nPersonagem criado com sucesso!\n")
        
        se(classe == "GUERREIRO"){
          vida = vida + 50
          ataque += 7
          defesa += 7
          agilidade += 1
        }
        se(classe == "MAGO"){
          vida = vida + 20
          ataque += 10
          defesa += 2
          agilidade += 3
        }
        se(classe == "ARQUEIRO"){
          vida = vida + 30
          ataque += 5
          defesa += 5
          agilidade += 5
        }
        escreva("Nome: ", nomeDoPersonagem, "\n")
        escreva("Classe: ", classe, "\n\n")
        escreva("Vida: ", vida, "\n")
        escreva("N�vel: ", nivel, "\n")
        escreva("Ataque: ", ataque, "\n")
        escreva("Defesa: ", defesa, "\n")
        escreva("Agilidade: ", agilidade, "\n")
    }
    
    // Fun��o para mostrar os cr�ditos
    funcao mostrarCreditos() {
        escreva("\n--- Cr�ditos ---\n")
        escreva("Desenvolvido por: Patrick-fed\n")
        escreva("Eldoria Saga v1.0\n\n")
    }
    funcao subirDeNivel(){
      enquanto(experiencia >= (nivel+1)*10 e nivel < 15) {
      nivel = nivel + 1
      vida = vida + nivel
      escreva("Seu her�i subiu para o n�vel: ", nivel, "\n")

      escolha(classe) {
        caso "GUERREIRO":
          ataque += 3
          defesa += 2
          agilidade += 1
        pare
        caso "CAVALEIRO":
          ataque += 4
          defesa += 4
          agilidade += 1
        pare
        caso "SAMURAI":
          ataque += 5
          defesa += 1
          agilidade += 3
        pare
        caso "PALADINO":
          ataque += 2
          defesa += 5
          agilidade += 2
        pare
        caso "MAGO":
          ataque += 4
          defesa += 1
          agilidade += 1
        pare
        caso "EVOCADOR":
          ataque += 6
          defesa += 1
          agilidade += 2
        pare
        caso "ONMYOJI":
          ataque += 4
          defesa += 1
          agilidade += 4
        pare
        caso "BRUXO":
          ataque += 3
          defesa += 3
          agilidade += 3
        caso "ARQUEIRO":
          ataque += 2
          defesa += 2
          agilidade += 2
        pare
        caso "CA�ADOR":
          ataque += 2
          defesa += 5
          agilidade += 2
        pare
        caso "ATIRADOR":
          ataque += 5
          defesa += 2
          agilidade += 2
        pare
        caso "VIGIA":
          ataque += 3
          defesa += 3
          agilidade += 3
        pare
        caso "CAVALEIRO DO SUBMUNDO":
          ataque += 6
          defesa += 4
          agilidade += 2

          afinidadeFOGO += 35
          afinidadeESCURIDAO += 35
        pare
        caso "CAVALEIRO DA CENTELHA":
          ataque += 2
          defesa += 5
          agilidade += 5

          afinidadeVENTO += 40
          afinidadeTERRA += 30
        pare
        caso "CAVALEIRO RADIANTE":
          ataque += 4
          defesa += 4
          agilidade += 4

          afinidadeLUZ += 35
          afinidadeAGUA += 25
          afinidadeFOGO += 10
        pare
        caso "SHOGUN":
          ataque += 5
          defesa += 2
          agilidade += 5

          afinidadeTERRA += 45
          afinidadeNEUTRO += 25
        pare
        caso "NITORYUU":
          ataque += 5
          defesa += 1
          agilidade += 6

          afinidadeVENTO += 70
        pare
        caso "RONIN":
          ataque += 6
          defesa += 3
          agilidade += 3

          afinidadeNEUTRO += 70
        pare
        caso "PARAGON":
          ataque += 4
          defesa += 5
          agilidade += 3

          afinidadeAGUA += 10
          afinidadeFOGO += 10
          afinidadeTERRA += 10
          afinidadeVENTO += 10
          afinidadeLUZ += 10
          afinidadeESCURIDAO += 10
          afinidadeNEUTRO += 10
        pare
        caso "PALADINO DO DRAG�O GIGANTE":
          ataque += 3
          defesa += 6
          agilidade += 3

          afinidadeAGUA += 20
          afinidadeVENTO += 25
          afinidadeFOGO += 25
        pare
        caso "PALADINO DE NEMESIS":
          ataque += 3
          defesa += 7
          agilidade += 2

          afinidadeAGUA +=35
          afinidadeTERRA += 35
        pare
        caso "ARQUIMAGO":
          ataque += 10
          defesa += 1
          agilidade += 1

          afinidadeAGUA += 17
          afinidadeFOGO += 17
          afinidadeTERRA += 17
          afinidadeVENTO += 17
          afinidadeNEUTRO += 2
        pare
        caso "MAGO DE FOGO RAPIDO":
          ataque += 6
          defesa += 0
          agilidade += 6

          afinidadeFOGO += 25
          afinidadeVENTO += 25
          afinidadeLUZ += 20
        pare
        caso "SABIO":
          ataque += 6
          defesa += 2
          agilidade += 4

          afinidadeLUZ += 35
          afinidadeESCURIDAO += 35
        pare
        caso "INVOCADOR":
          ataque += 4
          defesa += 3
          agilidade += 6

          afinidadeNEUTRO += 35
          afinidadeESCURIDAO += 35
        pare
        caso "ESPIRITUALISTA":
          ataque += 5
          defesa += 2
          agilidade += 5

          afinidadeAGUA += 14
          afinidadeFOGO += 14
          afinidadeTERRA += 14
          afinidadeVENTO += 14
          afinidadeESCURIDAO += 14
        pare
        caso "DRUIDA":
          ataque += 5
          defesa += 3
          agilidade += 4

          afinidadeAGUA += 24
          afinidadeTERRA += 24
          afinidadeLUZ += 22
        pare
        caso "SHAMAN":
          ataque += 6
          defesa += 2
          agilidade += 4

          afinidadeFOGO += 20
          afinidadeTERRA += 20
          afinidadeESCURIDAO += 30
        pare
        caso "BRUXO DO PESADELO":
          ataque += 6
          defesa += 1
          agilidade += 5

          afinidadeESCURIDAO += 50
          afinidadeFOGO += 20
        pare
        caso "MAGO NEGRO":
          ataque += 5
          defesa += 5
          agilidade += 2

          afinidadeESCURIDAO += 70
        pare
        caso "CA�ADOR DE ESTRELAS":
          ataque += 4
          defesa += 3
          agilidade += 5

          afinidadeLUZ += 40
          afinidadeVENTO += 15
          afinidadeFOGO += 15
        pare
        caso "CA�ADOR SOMBRIO":
          ataque += 5
          defesa += 3
          agilidade += 4

          afinidadeESCURIDAO += 30
          afinidadeVENTO += 10
          afinidadeNEUTRO += 30
        pare
        caso "CA�ADOR ANCESTRAL":
          ataque += 5
          defesa += 5
          agilidade += 2

          afinidadeTERRA += 30
          afinidadeLUZ += 20
          afinidadeESCURIDAO += 20
        pare
        caso "ARTILHEIRO":
          ataque += 7
          defesa += 2
          agilidade += 3

          afinidadeNEUTRO += 35
          afinidadeFOGO += 35
        pare
        caso "ASSASSINO":
          ataque += 8
          defesa += 2
          agilidade += 2

          afinidadeNEUTRO += 20
          afinidadeAGUA += 20
          afinidadeESCURIDAO += 30
        pare
        caso "EXECUTOR CARMESIM":
          ataque += 6
          defesa += 0
          agilidade += 6

          afinidadeFOGO += 50
          afinidadeNEUTRO += 20
        pare
        caso "SENTINELA SOLAR":
          ataque += 4
          defesa += 4
          agilidade += 4

          afinidadeLUZ += 35
          afinidadeFOGO += 35
        pare
        caso "GUARDI�O CELESTE":
          ataque += 5
          defesa += 4
          agilidade += 3

          afinidadeAGUA += 25
          afinidadeVENTO += 25
          afinidadeLUZ += 20
        pare
        caso "OLHO DO ABISMO":
          ataque += 4
          defesa += 4
          agilidade += 4

          afinidadeAGUA += 35
          afinidadeESCURIDAO += 35
        pare

      }
      mostrarAtributos()
      se(nivel == 5){
        avancoDeClasse()
      }
      se(nivel == 10){
        avancoDeClasseFinal()
      }
      }
      
    }
    funcao mostrarAtributos() {
      escreva("---Atributos atuais---\n")
      escreva("Classe: ", classe, "\n")
      escreva("Vida: ", vida, "\n")
      escreva("Ataque: ", ataque, "\n")
      escreva("Defesa: ", defesa, "\n")
      escreva("Experi�ncia: ", experiencia, " / ", (nivel+1)*10, "\n")
  }
  funcao ganharExperiencia(inteiro quantidadeXP){
    experiencia = experiencia + quantidadeXP
    escreva(nomeDoPersonagem, ", ganhou: ", quantidadeXP, " de XP!\n")
    escreva("Total: ", experiencia, "\n")

    subirDeNivel()
  }
  funcao avancoDeClasse(){
    inteiro opcaoDeAvanco

    se(nivel == 5){
      escolha(classe){
        caso "GUERREIRO":
          avancoDeClasseGuerreiro()
        pare
        caso "MAGO":
          avancoDeClasseMago()
        pare
        caso "ARQUEIRO":
          avancoDeClasseArqueiro()
      }
      
    }
      
  }
  funcao avancoDeClasseFinal(){
    se(nivel == 10){
      escolha(classe){
        caso "CAVALEIRO":
          avancoDeClasseCavaleiro()
        pare
        caso "SAMURAI":
          avancoDeClasseSamurai()
        pare
        caso "PALADINO":
          avancoDeClassePaladino()
        pare
        caso "EVOCADOR":
          avancoDeClasseEvocador()
        pare
        caso "ONMYOJI":
          avancoDeClasseOnmyoji()
        pare
        caso "BRUXO":
          avancoDeClasseBruxo()
        pare
        caso "CA�ADOR":
          avancoDeClasseCacador()
        pare
        caso "ATIRADOR":
          avancoDeClasseAtirador()
        pare
        caso "VIGIA":
          avancoDeClasseVigia()
        pare
      }
    }
  }
  // Fun��o para avan�o de classe do Guerreiro
funcao avancoDeClasseGuerreiro() {
    inteiro opcaoDeAvanco
    
    escreva(nomeDoPersonagem, " alcan�ou o n�vel maximo na sua classe inicial, agora escolha uma das op��es de avan�o de classe.\n")
    escreva("1 - CAVALEIRO\n")
    escreva("Classe que evolui diretamente do Guerreiro, o Cavaleiro mant�m um bom equil�brio entre ataque e defesa.\n")
    escreva("� uma escolha s�lida para quem quer enfrentar inimigos de forma direta, com for�a e resist�ncia parecidas.\n")
    escreva("N�o se destaca em um �nico ponto, mas � confi�vel em qualquer situa��o.\n\n")

    escreva("2 - SAMURAI\n")
    escreva("O Samurai foca na agilidade e no ataque. Ele causa mais dano e se move com mais rapidez,\n")
    escreva("mas tem uma defesa um pouco mais baixa.\n")
    escreva("� ideal para quem prefere atacar primeiro e r�pido, mesmo que isso signifique receber mais dano se for atingido.\n\n")

    escreva("3 - PALADINO\n")
    escreva("Classe voltada para a defesa. O Paladino resiste bem aos ataques e consegue aguentar mais tempo em combate.\n")
    escreva("Em compensa��o, seu ataque n�o � t�o forte.\n")
    escreva("� uma boa escolha para quem prefere jogar de forma segura e com mais prote��o.\n")
    escreva("Digite o n�mero de seu avan�o de classe escolhido: \n")
    leia(opcaoDeAvanco)
    
    enquanto(opcaoDeAvanco < 1 ou opcaoDeAvanco > 3) {
        escreva("Op��o inv�lida, tente novamente. As op��es v�lidas s�o 1, 2 e 3.\n")
        leia(opcaoDeAvanco)
    }
    
    escolha (opcaoDeAvanco) {
        caso 1:
            classe = "CAVALEIRO"
        pare
        caso 2:
            classe = "SAMURAI"
        pare
        caso 3:
            classe = "PALADINO"
        pare
    }
    
    escreva(nomeDoPersonagem, ", agora � um: ", classe, ".\n")
    mostrarAtributos()
}

funcao avancoDeClasseCavaleiro(){
  inteiro opcaoDeAvancoFinal

  escreva(nomeDoPersonagem, " alcan�ou o n�vel maximo na sua classe atual, agora escolha uma das op��es de avan�o de classe. Este ser� seu ultimo avan�o de classe.\n")
  
  escreva(nomeDoPersonagem, " alcan�ou o n�vel maximo na sua classe inicial, agora escolha uma das op��es de avan�o de classe.\n")
  escreva("1 - CAVALEIRO DO SUBMUNDO\n")
  escreva("Um guerreiro que abra�ou as chamas e as sombras da batalha.\n")
  escreva("Focado em ataque, o Cavaleiro do Submundo utiliza fogo e escurid�o para causar dano intenso aos inimigos.\n")
  escreva("Sua defesa � menor, mas compensa com habilidades ofensivas poderosas.\n")
  escreva("Ideal para quem busca dominar o campo com for�a bruta e energia obscura.\n\n")

  escreva("2 - CAVALEIRO DA CENTELHA\n")
  escreva("Um cavaleiro que canaliza a Centelha da Alma como fonte de energia e determina��o.\n")
  escreva("Equilibra defesa e agilidade, utilizando eletricidade (representando o vento) para atacar e o poder da terra para se proteger.\n")
  escreva("Perfeito para quem procura versatilidade em combate, mantendo mobilidade sem abrir m�o da prote��o.\n\n")

  escreva("3 - CAVALEIRO RADIANTE\n")
  escreva("A personifica��o da luz em forma de guerreiro. O Cavaleiro Radiante domina o equil�brio entre ataque, defesa e agilidade.\n")
  escreva("Usa habilidades baseadas em luz para combater inimigos se proteger, mantendo-se firme em qualquer situa��o.\n")
  escreva("Uma escolha excelente para quem busca estabilidade e poder em igual medida.\n")
  escreva("Digite o n�mero de seu avan�o de classe escolhido: \n")

  leia(opcaoDeAvancoFinal)
  
  enquanto(opcaoDeAvancoFinal < 1 ou opcaoDeAvancoFinal > 3){
    escreva("Op��o inv�lida, tente novamente. As op��es v�lidas s�o 1, 2 e 3.\n")
    leia(opcaoDeAvancoFinal)
  }

  escolha(opcaoDeAvancoFinal){
    caso 1:
     classe = "CAVALEIRO DO SUBMUNDO"
    pare
    caso 2:
      classe = "CAVALEIRO DA CENTELHA"
    pare
    caso 3:
      classe = "CAVALEIRO RADIANTE"
    pare
  }

  escreva(nomeDoPersonagem, ", agora � um: ", classe, ".\n")
  mostrarAtributos()

}
funcao avancoDeClasseSamurai(){
  inteiro opcaoDeAvancoFinal

  escreva(nomeDoPersonagem, " alcan�ou o n�vel maximo na sua classe atual, agora escolha uma das op��es de avan�o de classe. Este ser� seu ultimo avan�o de classe.\n")
  
  escreva("1 - SHOGUN\n")
  escreva("Um l�der de guerra que mant�m o equil�brio entre for�a e velocidade.\n")
  escreva("O Shogun � um mestre do combate f�sico, utilizando a terra como base para manter-se firme\n")
  escreva("enquanto desfere ataques r�pidos e precisos. N�o t�o veloz quanto outros, mas mais resistente.\n")
  escreva("Ideal para quem quer pot�ncia ofensiva sem abrir m�o de alguma estabilidade.\n\n")

  escreva("2 - NITORYUU\n")
  escreva("O espadachim que domina duas l�minas em perfeita harmonia com o vento.\n")
  escreva("O Nitoryuu ataca com velocidade extrema, sacrificando quase toda sua defesa em troca de dano.\n")
  escreva("Sua maestria permite realizar ataques duplos e se mover com uma leveza quase sobrenatural.\n")
  escreva("Excelente escolha para quem prefere ofensiva total e combate veloz.\n\n")

  escreva("3 - RONNIN\n")  
  escreva("Um guerreiro errante que domina o combate f�sico com disciplina e foco.\n")
  escreva("O Ronnin � ofensivo, mas n�o t�o extremo quanto outras op��es. Sua for�a vem da const�ncia e precis�o.\n")
  escreva("Mant�m um leve equil�brio, mas sempre prioriza causar dano direto com suas habilidades com a espada.\n")
  escreva("Recomendado para quem quer um atacante puro, por�m mais controlado.\n")
  escreva("Digite o n�mero de seu avan�o de classe escolhido: \n")


  leia(opcaoDeAvancoFinal)
  
  enquanto(opcaoDeAvancoFinal < 1 ou opcaoDeAvancoFinal > 3){
    escreva("Op��o inv�lida, tente novamente. As op��es v�lidas s�o 1, 2 e 3.\n")
    leia(opcaoDeAvancoFinal)
  }

  escolha(opcaoDeAvancoFinal){
    caso 1:
      classe = "SHOGUN"
    pare
    caso 2:
      classe = "NITORYUU"
    pare
    caso 3:
      classe = "RONIN"
    pare
  }

  escreva(nomeDoPersonagem, ", agora � um: ", classe, ".\n")
  mostrarAtributos()
}
funcao avancoDeClassePaladino(){
  inteiro opcaoDeAvancoFinal

  escreva(nomeDoPersonagem, " alcan�ou o n�vel maximo na sua classe atual, agora escolha uma das op��es de avan�o de classe. Este ser� seu ultimo avan�o de classe.\n")
  
  escreva("1 - PARAGON\n")
  escreva("A personifica��o da perfei��o e do hero�smo. O Paragon � o paladino idealizado, s�mbolo de equil�brio.\n")
  escreva("Domina de forma moderada todos os elementos ? �gua, fogo, vento, terra, luz, escurid�o e o neutro ?,\n")
  escreva("e mant�m um excelente balan�o entre ataque, defesa e agilidade.\n")
  escreva("Recomendado para quem busca versatilidade total e quer ser um verdadeiro campe�o da justi�a.\n\n")

  escreva("2 - PALADINO DO DRAG�O GIGANTE\n")
  escreva("Conhecidos como Paladinos de Fellgrand, s�o cavaleiros sagrados que fizeram um juramento ao grande drag�o ancestral.\n")
  escreva("Focados em defesa, podem invocar parte do poder de Fellgrand para feitos incr�veis em combate.\n")
  escreva("T�m afinidade especial com os elementos fogo, vento e �gua, canalizados atrav�s das b�n��os drac�nicas.\n")
  escreva("Perfeitos para quem deseja ser um basti�o resistente, com o poder dos drag�es ao seu lado.\n\n")

  escreva("3 - PALADINO DE N�MESIS\n")
  escreva("Defensores absolutos da justi�a, acreditam que todo bem ou mal deve ser retribu�do na mesma medida.\n")
  escreva("Entre os paladinos, s�o os que possuem a maior defesa, capazes de resistir a quase qualquer golpe.\n")
  escreva("Especializados em contra-ataques, devolvem o dano recebido com for�a equivalente.\n")
  escreva("T�m dom�nio sobre os elementos �gua e terra, simbolizando firmeza e equil�brio.\n")
  escreva("Indicados para quem prefere enfrentar o inimigo de forma impenetr�vel e implac�vel.\n")
  escreva("Digite o n�mero de seu avan�o de classe escolhido: \n")


  leia(opcaoDeAvancoFinal)
  
  enquanto(opcaoDeAvancoFinal < 1 ou opcaoDeAvancoFinal > 3){
    escreva("Op��o inv�lida, tente novamente. As op��es v�lidas s�o 1, 2 e 3.\n")
    leia(opcaoDeAvancoFinal)
  }

  escolha(opcaoDeAvancoFinal){
    caso 1:
      classe = "PARAGON"
    pare
    caso 2:
      classe = "PALADINO DO DRAG�O GIGANTE"
    pare
    caso 3:
      classe = "PALADINO DE NEMESIS"
    pare
  }

  escreva(nomeDoPersonagem, ", agora � um: ", classe, ".\n")
  mostrarAtributos()
}
funcao avancoDeClasseEvocador(){
  inteiro opcaoDeAvancoFinal

  escreva(nomeDoPersonagem, " alcan�ou o n�vel maximo na sua classe atual, agora escolha uma das op��es de avan�o de classe. Este ser� seu ultimo avan�o de classe.\n")
  
  escreva("1 - ARQUIMAGO\n")
  escreva("O mestre absoluto da magia elemental. O Arquimago atinge n�veis alt�ssimos de poder ofensivo,\n")
  escreva("com dom�nio sobre os elementos �gua, fogo, terra, vento e neutro.\n")
  escreva("Sua defesa � baixa, mas seu ataque destrutivo compensa com facilidade.\n")
  escreva("Ideal para quem quer causar grandes danos com uma variedade de feiti�os elementais.\n\n")

  escreva("2 - MAGO DO FOGO R�PIDO\n")
  escreva("Um especialista em conjura��o veloz e destrui��o imediata. Seu corpo � fr�gil, ainda mais que o do Arquimago,\n")
  escreva("mas sua agilidade e dano explosivo o tornam mortal em combate.\n")
  escreva("Foca em magias de fogo, vento e luz, queimando tudo � sua frente antes mesmo de ser tocado.\n")
  escreva("Perfeito para quem prefere velocidade e impacto acima de tudo.\n\n")

  escreva("3 - S�BIO\n")
  escreva("Guardi�o do conhecimento profundo e do equil�brio entre for�as opostas.\n")
  escreva("Embora mais equilibrado que os outros magos, ainda possui a fragilidade comum � sua classe.\n")
  escreva("Controla com maestria os poderes da luz e da escurid�o, usando-os para atacar, proteger e manipular o campo de batalha.\n")
  escreva("Uma boa escolha para quem busca versatilidade m�gica e sabedoria arcana.\n")
  escreva("Digite o n�mero de seu avan�o de classe escolhido: \n")
  
  leia(opcaoDeAvancoFinal)
  
  enquanto(opcaoDeAvancoFinal < 1 ou opcaoDeAvancoFinal > 3){
  escreva("Op��o inv�lida, tente novamente. As op��es v�lidas s�o 1, 2 e 3.\n")
  leia(opcaoDeAvancoFinal)
  }

  escolha(opcaoDeAvancoFinal){
    caso 1:
      classe = "ARQUIMAGO"
    pare
    caso 2:
     classe = "MAGO DE FOGO RAPIDO"
    pare
    caso 3:
      classe = "SABIO"
    pare
    
  }

  escreva(nomeDoPersonagem, ", agora � um: ", classe, ".\n")
  mostrarAtributos()
}
funcao avancoDeClasseOnmyoji(){
  inteiro opcaoDeAvancoFinal

  escreva(nomeDoPersonagem, " alcan�ou o n�vel maximo na sua classe atual, agora escolha uma das op��es de avan�o de classe. Este ser� seu ultimo avan�o de classe.\n")
  
  escreva("1 - INVOCADOR\n")
  escreva("Um m�stico que transcendeu a invoca��o de criaturas, passando a chamar fen�menos,\n")
  escreva("ecos do passado e milagres sobrenaturais. Sua magia � enigm�tica e poderosa,\n")
  escreva("mas sua afinidade com os elementos � limitada, exceto pela escurid�o e o neutro.\n")
  escreva("Escolha ideal para quem deseja dominar o campo com efeitos misteriosos e imprevis�veis.\n\n")

  escreva("2 - ESPIRITUALISTA\n")
  escreva("A continua��o natural do Onmyoji tradicional, o Espiritualista invoca esp�ritos elementais\n")
  escreva("para lutar ao seu lado e canalizar seus poderes. Possui grande afinidade com os elementos\n")
  escreva("�gua, fogo, vento, terra e escurid�o, tornando-se um mestre das for�as espirituais da natureza.\n")
  escreva("Uma escolha poderosa para quem valoriza o suporte e a versatilidade elemental.\n\n")

  escreva("3 - DRUIDA\n")
  escreva("Um guardi�o da harmonia natural, o Druida usa sua comunh�o com a natureza para se fortalecer e proteger.\n")
  escreva("Especializa-se nos elementos �gua, terra e luz, canalizando suas energias para curar,\n")
  escreva("defender ou devastar com a for�a do mundo natural.\n")
  escreva("Indicado para jogadores que buscam uma conex�o profunda com a terra e o equil�brio m�gico.\n")
  escreva("Digite o n�mero de seu avan�o de classe escolhido: \n")
  
  leia(opcaoDeAvancoFinal)
  
  enquanto(opcaoDeAvancoFinal < 1 ou opcaoDeAvancoFinal > 3){
    escreva("Op��o inv�lida, tente novamente. As op��es v�lidas s�o 1, 2 e 3.\n")
    leia(opcaoDeAvancoFinal)
  }

  escolha(opcaoDeAvancoFinal){
    caso 1:
      classe = "INVOCADOR"
    pare
    caso 2:
      classe = "ESPIRITUALISTA"
    pare
    caso 3:
      classe = "DRUIDA"
    pare
  }

  escreva(nomeDoPersonagem, ", agora � um: ", classe, ".\n")
  mostrarAtributos()
}
funcao avancoDeClasseBruxo(){
  inteiro opcaoDeAvancoFinal

  escreva(nomeDoPersonagem, " alcan�ou o n�vel maximo na sua classe atual, agora escolha uma das op��es de avan�o de classe. Este ser� seu ultimo avan�o de classe.\n")
  
  escreva("1 - SHAMAN\n")
  escreva("Um mestre das maldi��es e da for�a vital. O Shaman � o oposto do Druida,\n")
  escreva("fortalecendo a si mesmo enquanto enfraquece seus inimigos com rituais antigos.\n")
  escreva("Manipula os elementos fogo, terra e escurid�o, drenando energia e quebrando resist�ncias.\n")
  escreva("Ideal para quem deseja dominar o campo com malef�cios e resist�ncia constante.\n\n")

  escreva("2 - BRUXO DO PESADELO\n")
  escreva("Um ilusionista sombrio que mergulha a mente de seus inimigos em pesadelos aterrorizantes.\n")
  escreva("Enquanto o inimigo est� indefeso, o Bruxo do Pesadelo o destr�i lentamente, sem piedade.\n")
  escreva("Seu foco est� na escurid�o, mas tamb�m possui certa maestria com o fogo para alimentar seus horrores.\n")
  escreva("Uma escolha excelente para quem prefere controle mental e dano psicol�gico.\n\n")

  escreva("3 - MAGO NEGRO\n")
  escreva("Diferente de todos os outros magos, o Mago Negro rompe com a fragilidade tradicional da classe.\n")
  escreva("Equilibra bem ataque e defesa, tornando-se uma amea�a s�lida e constante em campo.\n")
  escreva("Seu poder � concentrado inteiramente na escurid�o, usando-a para causar destrui��o direta e implac�vel.\n")
  escreva("Recomendado para jogadores que desejam poder bruto, com um toque de resist�ncia rara para um mago.\n")
  escreva("Digite o n�mero de seu avan�o de classe escolhido: \n")
  
  leia(opcaoDeAvancoFinal)
  
  enquanto(opcaoDeAvancoFinal < 1 ou opcaoDeAvancoFinal > 3){
    escreva("Op��o inv�lida, tente novamente. As op��es v�lidas s�o 1, 2 e 3.\n")
    leia(opcaoDeAvancoFinal)
  }

  escolha(opcaoDeAvancoFinal){
    caso 1:
      classe = "SHAMAN"
    pare
    caso 2:
      classe = "BRUXO DO PESADELO"
    pare
    caso 3:
      classe = "MAGO NEGRO"
    pare
  }

  escreva(nomeDoPersonagem, ", agora � um: ", classe, ".\n")
  mostrarAtributos()
}
funcao avancoDeClasseCacador(){
  inteiro opcaoDeAvancoFinal

  escreva(nomeDoPersonagem, " alcan�ou o n�vel maximo na sua classe atual, agora escolha uma das op��es de avan�o de classe. Este ser� seu ultimo avan�o de classe.\n")
  
  escreva("1 - CA�ADOR DE ESTRELAS\n")
  escreva("Um arqueiro lend�rio, veloz e mortal, cuja precis�o � comparada ao poder de derrubar estrelas.\n")
  escreva("Combina alta agilidade e ataque com habilidades elementais de luz, vento e fogo.\n")
  escreva("Ideal para quem busca um estilo ofensivo �gil e devastador, sempre em movimento.\n\n")

  escreva("2 - CA�ADOR SOMBRIO\n")
  escreva("Especialista em emboscadas e ataques nas sombras. O Ca�ador Sombrio domina a arte do ataque furtivo,\n")
  escreva("mantendo o equil�brio cl�ssico dos arqueiros, mas com foco t�tico e preciso.\n")
  escreva("Utiliza os elementos escurid�o, vento e neutro para surpreender seus inimigos de forma letal.\n")
  escreva("Excelente para quem prefere a ast�cia e o ataque sorrateiro ao confronto direto.\n\n")

  escreva("3 - CA�ADOR ANCESTRAL\n")
  escreva("Um guerreiro conectado �s for�as primitivas da natureza. O Ca�ador Ancestral canaliza o poder da terra\n")
  escreva("em seus disparos, tornando suas flechas mais pesadas e impactantes.\n")
  escreva("� mais resistente que os outros ca�adores, mas ligeiramente mais lento.\n")
  escreva("Possui afinidade com os elementos terra, luz e escurid�o. Uma �tima escolha para quem busca for�a e estabilidade.\n")
  escreva("Digite o n�mero de seu avan�o de classe escolhido: \n")
  
  leia(opcaoDeAvancoFinal)
  
  enquanto(opcaoDeAvancoFinal < 1 ou opcaoDeAvancoFinal > 3){
    escreva("Op��o inv�lida, tente novamente. As op��es v�lidas s�o 1, 2 e 3.\n")
    leia(opcaoDeAvancoFinal)
  }

  escolha(opcaoDeAvancoFinal){
    caso 1:
      classe = "CA�ADOR DE ESTRELAS"
    pare
    caso 2:
      classe = "CA�ADOR SOMBRIO"
    pare
    caso 3:
      classe = "CA�ADOR ANCESTRAL"
    pare
  }

  escreva(nomeDoPersonagem, ", agora � um: ", classe, ".\n")
  mostrarAtributos()
}
funcao avancoDeClasseAtirador(){
  inteiro opcaoDeAvancoFinal

  escreva(nomeDoPersonagem, " alcan�ou o n�vel maximo na sua classe atual, agora escolha uma das op��es de avan�o de classe. Este ser� seu ultimo avan�o de classe.\n")
  escreva("1 - ARTILHEIRO\n")
  escreva("Um mestre do armamento pesado, o Artilheiro leva o conceito de dano a um novo patamar.\n")
  escreva("Focado inteiramente no ataque, utiliza os elementos fogo e neutro para ampliar ainda mais seu poder destrutivo.\n")
  escreva("Ideal para quem prefere eliminar o inimigo antes mesmo de ser alcan�ado.\n\n")

  escreva("2 - ASSASSINO\n")
  escreva("Especialista em ataques fatais e silenciosos, o Assassino luta para encerrar a batalha com um �nico golpe.\n")
  escreva("Seu estilo � r�pido, letal e preciso, com afinidade com os elementos neutro, �gua e escurid�o.\n")
  escreva("Perfeito para quem busca dano extremo com mobilidade furtiva e finaliza��es velozes.\n\n")

  escreva("3 - EXECUTOR CARMESIM\n")
  escreva("Um atirador cruel e implac�vel, que sacrificou toda defesa em prol de velocidade e letalidade.\n")
  escreva("Equilibra bem ataque e agilidade, mas qualquer golpe recebido pode ser fatal.\n")
  escreva("Canaliza os elementos fogo e neutro para executar seus inimigos com estilo e brutalidade.\n")
  escreva("Recomendado para quem vive no fio da navalha: mata r�pido ou morre r�pido.\n")
  escreva("Digite o n�mero de seu avan�o de classe escolhido: \n")
  
  leia(opcaoDeAvancoFinal)
  
  enquanto(opcaoDeAvancoFinal < 1 ou opcaoDeAvancoFinal > 3){
    escreva("Op��o inv�lida, tente novamente. As op��es v�lidas s�o 1, 2 e 3.\n")
    leia(opcaoDeAvancoFinal)
  }

  escolha(opcaoDeAvancoFinal){
    caso 1:
      classe = "ARTILHEIRO"
    pare
    caso 2:
      classe = "ASSASSINO"
    pare
    caso 3:
      classe = "EXECUTOR CARMESIM"
    pare
  }

  escreva(nomeDoPersonagem, ", agora � um: ", classe, ".\n")
  mostrarAtributos()
}
funcao avancoDeClasseVigia(){
  inteiro opcaoDeAvancoFinal

  escreva(nomeDoPersonagem, " alcan�ou o n�vel maximo na sua classe atual, agora escolha uma das op��es de avan�o de classe. Este ser� seu ultimo avan�o de classe.\n")
  escreva("1 - SENTINELA SOLAR\n")
  escreva("Um arqueiro equilibrado que canaliza a energia do sol para iluminar o campo de batalha.\n")
  escreva("Mant�m os atributos balanceados do Vigia, combinando-os com os elementos fogo e luz.\n")
  escreva("Ideal para quem deseja manter versatilidade com um toque de brilho ofensivo e precis�o sagrada.\n\n")

  escreva("2 - GUARDI�O CELESTIAL\n")
  escreva("Um arqueiro aben�oado pelos c�us, que aprimora seus disparos com o poder dos fen�menos celestes.\n")
  escreva("Possui afinidade com os elementos �gua, vento e luz, e � levemente mais ofensivo que o Vigia tradicional.\n")
  escreva("Excelente para quem prefere uma abordagem ofensiva sem abrir m�o da graciosidade celestial.\n\n")

  escreva("3 - VIGIA DO ABISMO\n")
  escreva("Um arqueiro sombrio que extrai sua for�a dos abismos profundos da terra e do oceano.\n")
  escreva("Mant�m os atributos equilibrados do Vigia, mas canaliza os elementos �gua e escurid�o\n")
  escreva("para disparos misteriosos, silenciosos e muitas vezes fatais.\n")
  escreva("Recomendado para jogadores que gostam de manter o equil�brio enquanto exploram o lado mais sombrio da natureza.\n")
  escreva("Digite o n�mero de seu avan�o de classe escolhido: \n")  
  
  leia(opcaoDeAvancoFinal)
  
  enquanto(opcaoDeAvancoFinal < 1 ou opcaoDeAvancoFinal > 3){
    escreva("Op��o inv�lida, tente novamente. As op��es v�lidas s�o 1, 2 e 3.\n")
    leia(opcaoDeAvancoFinal)
  }

  escolha(opcaoDeAvancoFinal){
    caso 1:
      classe = "SENTINELA SOLAR"
    pare
    caso 2:
      classe = "GUARDI�O CELESTE"
    pare
    caso 3:
      classe = "OLHO DO ABISMO"
    pare
  }

  escreva(nomeDoPersonagem, ", agora � um: ", classe, ".\n")
  mostrarAtributos()
}
// Fun��o para avan�o de classe do Mago
funcao avancoDeClasseMago() {
    inteiro opcaoDeAvanco
    
    escreva(nomeDoPersonagem, " alcan�ou o n�vel m�ximo na sua classe inicial, agora escolha uma das op��es de avan�o de classe.\n")
    escreva("1 - EVOCADOR\n")
    escreva("Classe que continua o caminho do Mago, com foco total em ataques poderosos.\n")
    escreva("Mant�m uma defesa fraca, mas � capaz de causar grande dano de forma r�pida e direta.\n")
    escreva("Ideal para quem quer continuar atacando com for�a, mesmo sendo mais vulner�vel.\n\n")

    escreva("2 - ONMYOJI\n")
    escreva("Classe que troca parte do poder direto por mais velocidade e controle.\n")
    escreva("Pode invocar pequenas criaturas para ajudar nos combates, al�m de se mover com mais agilidade.\n")
    escreva("Boa escolha para quem gosta de estrat�gia e movimenta��o.\n\n")

    escreva("3 - BRUXO\n")
    escreva("Foca em enfraquecer o inimigo e se fortalecer durante o combate.\n")
    escreva("N�o � t�o r�pido quanto outras classes, mas consegue virar o jogo aos poucos.\n")
    escreva("Indicado para quem prefere um estilo mais calculado e resistente.\n")
    escreva("Digite o n�mero de seu avan�o de classe escolhido: \n")
    leia(opcaoDeAvanco)
    
    enquanto(opcaoDeAvanco < 1 ou opcaoDeAvanco > 3) {
        escreva("Op��o inv�lida tente novamente. As op��es v�lidas s�o 1, 2 e 3.\n")
        leia(opcaoDeAvanco)
    }
    
    escolha (opcaoDeAvanco) {
        caso 1:
            classe = "EVOCADOR"
        pare
        caso 2:
            classe = "ONMYOJI"
        pare
        caso 3:
            classe = "BRUXO"
        pare
    }
    
    escreva(nomeDoPersonagem, ", agora � um: ", classe, ".\n")
    mostrarAtributos()
}

// Fun��o para avan�o de classe do Arqueiro
funcao avancoDeClasseArqueiro() {
    inteiro opcaoDeAvanco
    
    escreva(nomeDoPersonagem, " alcan�ou o n�vel m�ximo na sua classe inicial, agora escolha uma das op��es de avan�o de classe.\n")

    escreva("1 - CA�ADOR\n")
    escreva("Classe com foco total na agilidade. Se move rapidamente e ataca com velocidade.\n")
    escreva("Boa para quem quer estar sempre em movimento e evitar ser atingido.\n\n")

    escreva("2 - ATIRADOR\n")
    escreva("Especializado em causar o m�ximo de dano com seus ataques � dist�ncia.\n")
    escreva("Tem menos mobilidade, mas acerta com mais for�a.\n")
    escreva("Recomendado para quem prefere eliminar os inimigos rapidamente.\n\n")

    escreva("3 - VIGIA\n")
    escreva("Evolu��o equilibrada do Arqueiro, mantendo o bom desempenho entre ataque e mobilidade.\n")
    escreva("Vers�til e confi�vel em qualquer situa��o.\n\n")

    escreva("Digite o n�mero de seu avan�o de classe escolhido: \n")
    leia(opcaoDeAvanco)

    enquanto(opcaoDeAvanco < 1 ou opcaoDeAvanco > 3) {
        escreva("Op��o inv�lida tente novamente. As op��es v�lidas s�o 1, 2 e 3.\n")
        leia(opcaoDeAvanco)       
    }
    
    escolha (opcaoDeAvanco) {
        caso 1:
            classe = "CA�ADOR"
        pare
        caso 2:
            classe = "ATIRADOR"
        pare
        caso 3:
            classe = "VIGIA"
        pare
    }
    escreva(nomeDoPersonagem, ", agora � um: ", classe, ".\n")
    mostrarAtributos()
  }
  funcao turnoDeBatalha(){
    enquanto(vida >= 0 e vidaDoInimigo >= 0){
    turnoDoJogador()

    se(vidaDoInimigo <= 0){
      escreva("Parab�ns, ", nomeDoPersonagem, " derrotou o inimigo.")
      pare
    }

        // Turno do inimigo
    se(vida <= 0){
      escreva(nomeDoPersonagem, " foi derrotado.")
      pare
    }

    se(pontosDeAcao < 10){
      pontosDeAcao = 10
    }
    se(pontosDeAcaoInimigo < 10){
      pontosDeAcaoInimigo = 10
    }



      

  }

}
funcao turnoDoJogador(){
  enquanto(vida > 0 e pontosDeAcao > 0){
    escreva("Turno do jogador\n")
      escreva("1 - Atacar\n2 - Defender\nEscolha: ")
      inteiro acao
      leia(acao)

      se(acao == 1){
        //atacar
      }senao se(acao == 2){
        //defender
      }senao se(acao == 3){
        //habilidades ou itens se eu conseguir
      }senao se(acao == 4){
        //Encerrar o turno
      }senao{
        escreva("Op��o inv�lida tente novamente.\n")
        leia(acao)
      }

      se(vidaDoInimigo <= 0){
        pare
      }

      //Mecanica de custos
      se(pontosDeAcao > 0){
        escreva("Deseja continuar seu turno: 1 - Sim | 2 - N�o.\n")
        inteiro continuar
        leia(continuar)

        se(continuar == 2){
          pare
        }senao{
          escreva("Voc� n�o tem pontos de a��o o suficiente.\n")
          pare
        }
      }
  }
}
funcao turnoDoInimigo(){
  escreva("Turno do inimigo")
  enquanto(vidaDoInimigo > 0 e pontosDeAcaoInimigo > 0){
    inteiro acaoDoInimigo = u.sorteia(1,3)

    se(acaoDoInimigo == 1){
      //custoAcao = custoAtaque
      //executarAcaoInimigo(custoAcao, "atacar")
    }senao se(acaoDoInimigo == 2){
      //custoAcao = custoDefesa
      //executarAcaoInimigo(custoAcao, "denfender")
    }senao se(acaoDoInimigo == 3){
      //custoAcao = custoHabilidade
      //executarAcaoInimigo(custoAcao, "habilidade")
    }

    u.aguarde(900)

    se(pontosDeAcaoInimigo <= 0){
      pare
    }
  }
}
funcao executarAcao(inteiro custo, cadeia tipoAcao){
  inteiro excedente = 0

  se(pontosDeAcao < 0){
    excedente = custo - pontosDeAcao
    pontosDeAcao = 0
    pontosDeAcao += excedente
    escreva(nomeDoPersonagem, " n�o tem pontos de a��o o suficiente para esta a��o o excedente de: ", excedente, " ser�o pontos de a��o bonus do inimigo.\n")
  }senao{
    pontosDeAcao -= custo
  }
  se(tipoAcao == "atacar"){
    inteiro danoCausado = ataque - inimigoDEF
    se(danoCausado < 0){
      danoCausado = 0
    }
    vidaDoInimigo -= danoCausado
    escreva(nomeDoPersonagem, " atacou causando: ", danoCausado, " de dano.\n")
  }senao se(tipoAcao == "defender"){
    //logica de defesa, s� bloquear o ataque talvez.
  }senao se(tipoAcao == "habilidade"){
    inteiro danoCausado = (ataque*2) - inimigoDEF
    se(danoCausado < 0){
      danoCausado = 0
    }
    vidaDoInimigo -= danoCausado
    escreva(nomeDoPersonagem, " usou seu ataqtue mais forte causando: ", danoCausado, " de dano.\n" )
  }
  se(excedente > 0){
    escreva("O inimigo ganhou: ", excedente, " pontos extras.\n")
  }
}
funcao executarAcaoInimigo(){}
funcao statusDeBatalha(){}
funcao mostrarOpcoes(){}
funcao gerarInimigo() {
    nomeDoInimigo
    nivelDoInimigo = nivel
    vidaDoInimigo = 20 + nivel * 5
    inimigoATK = 5 + nivel
    inimigoDEF = 2 + nivel
    inimigoAGI = 1 + nivel
}
funcao proximaRegiao(){
  se(regiaoAtual >= 7){
    escreva("Voc� j� est� na ultima regi�o de Eldoria.\n")
    escreva("N�o h� mais o que explorar a frente.\n")
  }

  inteiro opcaoDeRegiao
  escreva("Voc� chegou a borda da regi�o atual deseja seguir em frente?")
  escreva("Se sim digite 1 \t | \t Sen�o digite 2.")
  leia(opcaoDeRegiao)

  enquanto(opcaoDeRegiao < 1 ou opcaoDeRegiao > 2){
    escreva("Op��o inv�lida, tente novamente. As op��es v�lidas s�o 1 e 2.")
    leia(opcaoDeRegiao)
  }
  se(opcaoDeRegiao == 1){
    regiaoAtual++
    escreva(nomeDoPersonagem, " Avan�ou para a pr�xima regi�o.\n")
    escreva(nomeDoPersonagem, "Agora est� n� regi�o da: ", regioes[regiaoAtual], "\n")
    escreva("Voc� est� na regi�o:", (regiaoAtual + 1), "de 8.\n")
      // pensar n� logica aqui.
  }senao{
    escreva("Voc� decidiu permanecer na regi�o atual.\n")
    escreva(nomeDoPersonagem, " continua na regi�o: ", regioes[regiaoAtual], ".\n")
  }
}
funcao voltarRegiao(){
    se(regiaoAtual == 0){
      escreva("Voc� j� est� na primeira regi�o de Eldoria.\n")
      escreva("N�o h� mais para onde voltar depois daqui.\n")
    }
    inteiro opcaoDeRegiaoVoltar
    escreva("Voc� j� viu o necess�rio dessa regi�o, deseja voltar?\n")
    escreva("Se sim digite 1 \t | \t Sen�o digite 2.")
    leia(opcaoDeRegiaoVoltar)

    enquanto(opcaoDeRegiaoVoltar < 1 ou opcaoDeRegiaoVoltar > 2){
      escreva("Op��o inv�lida, tente novamente. As op��es v�lidas s�o 1 e 2.")
      leia(opcaoDeRegiaoVoltar)
    }
    se(opcaoDeRegiaoVoltar == 1){
      regiaoAtual--
      escreva(nomeDoPersonagem, " Voltou a regi�o anerior.\n")
      escreva(nomeDoPersonagem, "Agora est� n� regi�o da: ", regioes[regiaoAtual], "\n")
      escreva("Voc� est� na regi�o:", (regiaoAtual + 1), "de 8.\n")
    }senao{
      escreva("Voc� decidiu permanecer na regi�o atual.\n")
      escreva(nomeDoPersonagem, " continua na regi�o: ", regioes[regiaoAtual], ".\n")
    }
}
funcao menuDeNavegacao(){
    // pensar em como fazer aqui, escolha provavelmente.
}
funcao mostrarRegiaoAtual(){

  escreva("\n?? === REGI�O ATUAL ===\n")
  escreva("Regi�o: ", regioes[regiaoAtual], "\n")
  escreva("Posi��o no mapa: ", (regiaoAtual + 1), " de 8\n")
        
  escreva("\n??? Mapa das regi�es:\n")
  para(inteiro i = 0; i < 8; i++) {
    se(i == regiaoAtual){
      escreva("? [", (i + 1), "] ", regioes[i], " ? (VOC� EST� AQUI)\n")
    }senao{
      escreva("  [", (i + 1), "] ", regioes[i], "\n")
    }
  }
        
  // Informa��es de navega��o
  escreva("\n?? Informa��es de navega��o:\n")
  se(regiaoAtual == 0){
      escreva("? Voc� est� na primeira regi�o\n")
      escreva("? Pr�xima regi�o dispon�vel: ", regioes[regiaoAtual + 1], "\n")
    }
    senao se(regiaoAtual == 7){
      escreva("? Voc� est� na �ltima regi�o\n")
      escreva("? Regi�o anterior dispon�vel: ", regioes[regiaoAtual - 1], "\n")
    }
    senao{
      escreva("? Regi�o anterior: ", regioes[regiaoAtual - 1], "\n")
      escreva("? Pr�xima regi�o: ", regioes[regiaoAtual + 1], "\n")
    }
}
  

funcao campanha(){
  escreva("H� muito tempo, no Reino de Eldoria, a paz era mantida pela m�stica Pedra da Luz, protegida pelos Anci�os do Castelo Dourado.\n")
  u.aguarde(300)

  escreva("\nUm dia, uma for�a sombria conhecida como O Devastador invadiu o reino, roubando a rel�quia sagrada e mergulhando as terras em trevas e caos.\n")
  u.aguarde(300)

  escreva("\nVilas foram saqueadas, florestas corrompidas, e criaturas sombrias come�aram a vagar pelas regi�es.\n")
  u.aguarde(300)

    escreva("\nDiante da crise, uma antiga profecia se cumpriu: um her�i escolhido surgir� das sombras para restaurar a luz. Voc� � esse her�i.\n")
    u.aguarde(300)

    escreva("\nSua miss�o � atravessar cinco regi�es dominadas pelo mal, enfrentando inimigos, evoluindo suas habilidades e se preparando para confrontar O Devastador no Castelo Dourado.\n")
    u.aguarde(300)

    escreva("\nA jornada ser� repleta de perigos, escolhas e batalhas. Seu destino e o de Eldoria est�o entrela�ados.\n")
    u.aguarde(300)
  }
}