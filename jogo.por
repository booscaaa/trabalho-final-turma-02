programa {
  inclua biblioteca Util --> u

  cadeia regioes[8] = {"VILA DOS COMECOS", "FLORESTA DA NEVOA", "VILA ABANDONADA", "CAVERNA SOMBRIA", "LABIRINTO ESCONDIDO", "COLISEU DE SUCATAS", "PANTANO DOS LAMENTOS", "CASTELO DOURADO"}
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
  inteiro vidaMaxima = 0
  inteiro ataque = 0
  inteiro defesa = 0
  inteiro agilidade = 0

  inteiro escudoMax = defesa
  inteiro escudo = escudoMax

  inteiro pocaoEmPosse = 0  
  
  cadeia escudoAtivo = "NAO"
  
  inteiro pontosDeAcao = 10
  inteiro excedenteJogador = 0
  inteiro pontosDeAcaoInimigo = 10
  inteiro excedenteInimigo = 0

  inteiro continuar

  cadeia nomeDeBoss[8] ={"Goblin Motoqueiro, Grande Gabonga", "Tsumuha-Kutsunagi, O Senhor das Espadas", "Nenleria, a sonhadora", "Atomic, o Dragao de Restolhos", "Dama Prateada do Labirinto", "Rei Besta-Maquina, Regulus", "Rei do Pantano", "Eldlich, O Devastador"}
      
  cadeia nomeDoInimigo[25] = {"Goblin Motoqueiro, Troika", "Goblin Motoqueiro, Boom Mach", "Goblin Motoqueiro, Dougg Atropelador", "Goblin Motoqueiro, Clater Explosivo", "Goblin Motoqueira, Mean Impiedosa", "Goblin Motoqueiro, Griare", "Boneca Amaldicoada", "Soldado De Brinquedo", "Cadaver Rastejante", "Besta de Restolhos", "Goblin de Restolhos", "Quimera de Restolhos", "Ariane, Serva do Labirinto", "Arias, Serva do Labirito", "Arch, Estatua do Labirito", "Sargas, Campeao Possuido", "Golem de Engrenagens", "Arquidemonio de Sucata", "Lobo da Praga", "Zumbi Espalha-Prga", "Paladino do Dragao Amaldicoado", "Conqistador Caido da Terra Dourad", "General Caido da Terra Dourda", "Guardiao Caido da Terra Dourada", "Arruaceiro da Terra Dourada"}
  cadeia nomeDoInimigoAtual

  inteiro nivelDoInimigo
  inteiro vidaDoInimigo
  inteiro inimigoATK
  inteiro inimigoDEF
  inteiro inimigoAGI
  inteiro inimigoEscudoMax
  inteiro inimigoEscudo
  inteiro ganhoDeExperiencia

  cadeia escudoAtivoDoInimigo = "NAO"

  inteiro nivelDoBoss = 0
  inteiro fragmentoDaPedraDaLuz = 0

  inteiro custoAcao = 0
  inteiro custoAtacar = 3
  inteiro custoDefesa = 2
  inteiro custoHabilidade = 7

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
            escreva("Opcao invalida! Tente novamente.\n")
          pare
      }
    }
  }
    
funcao inteiro menuDeInicializacao() {
  inteiro opcao = 0
   
  escreva("\nBem vindo a Eldoria Saga\n")
  escreva("--1: Novo jogo--\n")
  escreva("--2: Creditos--\n")
  escreva("--3: Sair--\n")
  escreva("Escolha uma opcao: ")

  leia(opcao)
  enquanto(opcao < 1 ou opcao > 3) {
    escreva("Opcao invalida! Tente novamente: ")
    leia(opcao)
  }
        
  retorne opcao
}

funcao criarPersonagem() {

  escreva("\n--- Criacao de Personagem ---\n")
  escreva("Digite o nome do seu personagem: ")
  leia(nomeDoPersonagem)
  
  escreva("\nEscolha sua classe:\n")
  escreva("1 - GUERREIRO, Foco em vida e defesa. Ideal para resist?ncia prolongada.\n")
  escreva("2 - MAGO, Ataque poderoso, porem fragil. Especialista em dano rapido.\n")
  escreva("3 - ARQUEIRO, Equilibrado entre ataque e mobilidade. Versatil.\n")
  escreva("Opcao: ")
  
  leia(opcaoDeClase)
  enquanto(opcaoDeClase < 1 ou opcaoDeClase > 3) {
    escreva("Opcao invalida! Tente novamente: ")
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

  escreva("\nPersonagem criado com sucesso!\n")

  se(classe == "GUERREIRO"){
    vida = vida + 50
    ataque = 7
    defesa = 7
    agilidade = 1

    escudoMax = defesa
    escudo = escudoMax
    }
  se(classe == "MAGO"){
    vida = vida + 20
    ataque = 10
    defesa = 2
    agilidade = 3

    escudoMax = defesa
    escudo = escudoMax
  }
  se(classe == "ARQUEIRO"){
    vida = vida + 30
    ataque = 5
    defesa = 5
    agilidade = 5

    escudoMax = defesa
    escudo = escudoMax
  }
  escreva("Nome: ", nomeDoPersonagem, "\n")
  escreva("Classe: ", classe, "\n\n")
  escreva("Vida: ", vida, "\n")
  escreva("Nivel: ", nivel, "\n")
  escreva("Ataque: ", ataque, "\n")
  escreva("Defesa: ", defesa, "\n")
  escreva("Agilidade: ", agilidade, "\n\n")
  escreva("Escudo: ", escudo, "\n")
}
    
funcao mostrarCreditos() {
  escreva("\n--- Creditos ---\n")
  escreva("Desenvolvido por: Patrick-fed\n")
  escreva("Eldoria Saga v1.0\n\n")
}
    funcao subirDeNivel(){
      enquanto(experiencia >= (nivel+1)*10 e nivel < 15) {
      nivel = nivel + 1
      vida = vida + nivel * 10
      vidaMaxima = vida
      escreva("Seu heroi subiu para o nivel: ", nivel, "\n")

      atributoLivre()

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
        caso "CACADOR":
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
        caso "PALADINO DO DRAGAO GIGANTE":
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
        caso "CACADOR DE ESTRELAS":
          ataque += 4
          defesa += 3
          agilidade += 5

          afinidadeLUZ += 40
          afinidadeVENTO += 15
          afinidadeFOGO += 15
        pare
        caso "CACADOR SOMBRIO":
          ataque += 5
          defesa += 3
          agilidade += 4

          afinidadeESCURIDAO += 30
          afinidadeVENTO += 10
          afinidadeNEUTRO += 30
        pare
        caso "CACADOR ANCESTRAL":
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
        caso "GUARDIAO CELESTE":
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

      escudoMax = defesa
      escudo = escudoMax

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
  escreva("Escudo: ", escudo, "\n")
  escreva("Experiencia: ", experiencia, " / ", (nivel+1)*10, "\n")
}
funcao ganharExperiencia(inteiro ganhoDeExperiencia){
  experiencia = experiencia + ganhoDeExperiencia
  escreva(nomeDoPersonagem, ", ganhou: ", ganhoDeExperiencia, " de XP!\n")
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
    pare
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
      caso "CACADOR":
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

funcao avancoDeClasseGuerreiro() {
    inteiro opcaoDeAvanco
    
    escreva(nomeDoPersonagem, " alcancou o nivel maximo na sua classe inicial, agora escolha uma das opcoes de avanco de classe.\n")
    escreva("1 - CAVALEIRO\n")
    escreva("Classe que evolui diretamente do Guerreiro, o Cavaleiro mant?m um bom equilibrio entre ataque e defesa.\n")
    escreva("Uma escolha solida para quem quer enfrentar inimigos de forma direta, com forca e resistencia parecidas.\n")
    escreva("Nao se destaca em um ?nico ponto, mas e confiavel em qualquer situacao.\n\n")

    escreva("2 - SAMURAI\n")
    escreva("O Samurai foca na agilidade e no ataque. Ele causa mais dano e se move com mais rapidez,\n")
    escreva("mas tem uma defesa um pouco mais baixa.\n")
    escreva("Ideal para quem prefere atacar primeiro e rapido, mesmo que isso signifique receber mais dano se for atingido.\n\n")

    escreva("3 - PALADINO\n")
    escreva("Classe voltada para a defesa. O Paladino resiste bem aos ataques e consegue aguentar mais tempo em combate.\n")
    escreva("Em compensacao, seu ataque nao e tao forte.\n")
    escreva("Uma boa escolha para quem prefere jogar de forma segura e com mais protecao.\n")
    escreva("Digite o numero de seu avanco de classe escolhido: \n")
    leia(opcaoDeAvanco)
    
    enquanto(opcaoDeAvanco < 1 ou opcaoDeAvanco > 3) {
        escreva("Opcao invalida, tente novamente. As opcoes validas sao 1, 2 e 3.\n")
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
    
    escreva(nomeDoPersonagem, ", agora e um: ", classe, ".\n")
    mostrarAtributos()
}

funcao avancoDeClasseCavaleiro(){
  inteiro opcaoDeAvancoFinal

  escreva(nomeDoPersonagem, " alcancou o nivel maximo na sua classe atual, agora escolha uma das opcoes de avanco de classe. Este sera seu ultimo avanco de classe.\n")
  
  escreva("1 - CAVALEIRO DO SUBMUNDO\n")
  escreva("Um guerreiro que abracou as chamas e as sombras da batalha.\n")
  escreva("Focado em ataque, o Cavaleiro do Submundo utiliza fogo e escuridao para causar dano intenso aos inimigos.\n")
  escreva("Sua defesa e menor, mas compensa com habilidades ofensivas poderosas.\n")
  escreva("Ideal para quem busca dominar o campo com forca bruta e energia obscura.\n\n")

  escreva("2 - CAVALEIRO DA CENTELHA\n")
  escreva("Um cavaleiro que canaliza a Centelha da Alma como fonte de energia e determinacao.\n")
  escreva("Equilibra defesa e agilidade, utilizando eletricidade (representando o vento) para atacar e o poder da terra para se proteger.\n")
  escreva("Perfeito para quem procura versatilidade em combate, mantendo mobilidade sem abrir mao da protecao.\n\n")

  escreva("3 - CAVALEIRO RADIANTE\n")
  escreva("A personificacao da luz em forma de guerreiro. O Cavaleiro Radiante domina o equilibrio entre ataque, defesa e agilidade.\n")
  escreva("Usa habilidades baseadas em luz para combater inimigos se proteger, mantendo-se firme em qualquer situacao.\n")
  escreva("Uma escolha excelente para quem busca estabilidade e poder em igual medida.\n")
  escreva("Digite o numero de seu avanco de classe escolhido: \n")

  leia(opcaoDeAvancoFinal)
  
  enquanto(opcaoDeAvancoFinal < 1 ou opcaoDeAvancoFinal > 3){
    escreva("Opcao invalida, tente novamente. As opcoes validas sao 1, 2 e 3.\n")
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

  escreva(nomeDoPersonagem, ", agora e um: ", classe, ".\n")
  mostrarAtributos()

}
funcao avancoDeClasseSamurai(){
  inteiro opcaoDeAvancoFinal

  escreva(nomeDoPersonagem, " alcancou o nivel maximo na sua classe atual, agora escolha uma das opcoes de avanco de classe. Este sera seu ultimo avanco de classe.\n")
  
  escreva("1 - SHOGUN\n")
  escreva("Um lider de guerra que mantem o equilibrio entre forca e velocidade.\n")
  escreva("O Shogun e um mestre do combate fisico, utilizando a terra como base para manter-se firme\n")
  escreva("enquanto desfere ataques rapidos e precisos. Nao tao veloz quanto outros, mas mais resistente.\n")
  escreva("Ideal para quem quer potencia ofensiva sem abrir mao de alguma estabilidade.\n\n")

  escreva("2 - NITORYUU\n")
  escreva("O espadachim que domina duas laminas em perfeita harmonia com o vento.\n")
  escreva("O Nitoryuu ataca com velocidade extrema, sacrificando quase toda sua defesa em troca de dano.\n")
  escreva("Sua maestria permite realizar ataques duplos e se mover com uma leveza quase sobrenatural.\n")
  escreva("Excelente escolha para quem prefere ofensiva total e combate veloz.\n\n")

  escreva("3 - RONIN\n")
  escreva("Um guerreiro errante que domina o combate fisico com disciplina e foco.\n")
  escreva("O Ronnin e ofensivo, mas nao tao extremo quanto outras opcoes. Sua forca vem da constancia e precisao.\n")
  escreva("Mantem um leve equilibrio, mas sempre prioriza causar dano direto com suas habilidades com a espada.\n")
  escreva("Recomendado para quem quer um atacante puro, porem mais controlado.\n")
  escreva("Digite o numero de seu avanco de classe escolhido: \n")


  leia(opcaoDeAvancoFinal)
  
  enquanto(opcaoDeAvancoFinal < 1 ou opcaoDeAvancoFinal > 3){
    escreva("Opcao invalida, tente novamente. As opcoes validas sao 1, 2 e 3.\n")
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

  escreva(nomeDoPersonagem, ", agora e um: ", classe, ".\n")
  mostrarAtributos()
}
funcao avancoDeClassePaladino(){
  inteiro opcaoDeAvancoFinal

  escreva(nomeDoPersonagem, " alcancou o nivel maximo na sua classe atual, agora escolha uma das opcoes de avanco de classe. Este sera seu ultimo avanco de classe.\n")
  
  escreva("1 - PARAGON\n")
  escreva("A personificacao da perfeicao e do heroismo. O Paragon eh o paladino idealizado, simbolo de equilibrio.\n")
  escreva("Domina de forma moderada todos os elementos ? agua, fogo, vento, terra, luz, escuridao e o neutro ?,\n")
  escreva("e mantem um excelente balanco entre ataque, defesa e agilidade.\n")
  escreva("Recomendado para quem busca versatilidade total e quer ser um verdadeiro campeao da justica.\n\n")

  escreva("2 - PALADINO DO DRAGAO GIGANTE\n")
  escreva("Conhecidos como Paladinos de Fellgrand, sao cavaleiros sagrados que fizeram um juramento ao grande dragao ancestral.\n")
  escreva("Focados em defesa, podem invocar parte do poder de Fellgrand para feitos incriveis em combate.\n")
  escreva("Tem afinidade especial com os elementos fogo, vento e agua, canalizados atraves das bencaos draconicas.\n")
  escreva("Perfeitos para quem deseja ser um bastiao resistente, com o poder dos drag?es ao seu lado.\n\n")

  escreva("3 - PALADINO DE NEMESIS\n")
  escreva("Defensores absolutos da justica, acreditam que todo bem ou mal deve ser retribu?do na mesma medida.\n")
  escreva("Entre os paladinos, sao os que possuem a maior defesa, capazes de resistir a quase qualquer golpe.\n")
  escreva("Especializados em contra-ataques, devolvem o dano recebido com forca equivalente.\n")
  escreva("Tem dominio sobre os elementos agua e terra, simbolizando firmeza e equilibrio.\n")
  escreva("Indicados para quem prefere enfrentar o inimigo de forma impenetravel e implacavel.\n")
  escreva("Digite o numero de seu avanco de classe escolhido: \n")


  leia(opcaoDeAvancoFinal)
  
  enquanto(opcaoDeAvancoFinal < 1 ou opcaoDeAvancoFinal > 3){
    escreva("Opcao invalida, tente novamente. As opcoes validas sao 1, 2 e 3.\n")
    leia(opcaoDeAvancoFinal)
  }

  escolha(opcaoDeAvancoFinal){
    caso 1:
      classe = "PARAGON"
    pare
    caso 2:
      classe = "PALADINO DO DRAGAO GIGANTE"
    pare
    caso 3:
      classe = "PALADINO DE NEMESIS"
    pare
  }

  escreva(nomeDoPersonagem, ", agora eh um: ", classe, ".\n")
  mostrarAtributos()
}
funcao avancoDeClasseEvocador(){
  inteiro opcaoDeAvancoFinal

  escreva(nomeDoPersonagem, " alcancou o nivel maximo na sua classe atual, agora escolha uma das opcoes de avanco de classe. Este sera seu ultimo avanco de classe.\n")
  
  escreva("1 - ARQUIMAGO\n")
  escreva("O mestre absoluto da magia elemental. O Arquimago atinge niveis altissimos de poder ofensivo,\n")
  escreva("com dominio sobre os elementos agua, fogo, terra, vento e neutro.\n")
  escreva("Sua defesa eh baixa, mas seu ataque destrutivo compensa com facilidade.\n")
  escreva("Ideal para quem quer causar grandes danos com uma variedade de feiticos elementais.\n\n")

  escreva("2 - MAGO DO FOGO RAPIDO\n")
  escreva("Um especialista em conjuracao veloz e destruicao imediata. Seu corpo e fragil, ainda mais que o do Arquimago,\n")
  escreva("mas sua agilidade e dano explosivo o tornam mortal em combate.\n")
  escreva("Foca em magias de fogo, vento e luz, queimando tudo a sua frente antes mesmo de ser tocado.\n")
  escreva("Perfeito para quem prefere velocidade e impacto acima de tudo.\n\n")

  escreva("3 - SABIO\n")
  escreva("Guardiao do conhecimento profundo e do equil?brio entre forcas opostas.\n")
  escreva("Embora mais equilibrado que os outros magos, ainda possui a fragilidade comum a sua classe.\n")
  escreva("Controla com maestria os poderes da luz e da escuridso, usando-os para atacar, proteger e manipular o campo de batalha.\n")
  escreva("Uma boa escolha para quem busca versatilidade magica e sabedoria arcana.\n")
  escreva("Digite o numero de seu avanco de classe escolhido: \n")
  
  leia(opcaoDeAvancoFinal)
  
  enquanto(opcaoDeAvancoFinal < 1 ou opcaoDeAvancoFinal > 3){
  escreva("Opcao invalida, tente novamente. As opcoes validas sao 1, 2 e 3.\n")
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

  escreva(nomeDoPersonagem, ", agora e um: ", classe, ".\n")
  mostrarAtributos()
}
funcao avancoDeClasseOnmyoji(){
  inteiro opcaoDeAvancoFinal

  escreva(nomeDoPersonagem, " alcancou o nivel maximo na sua classe atual, agora escolha uma das opcoes de avanco de classe. Este sera seu ultimo avanco de classe.\n")
  
  escreva("1 - INVOCADOR\n")
  escreva("Um m?stico que transcendeu a invocacao de criaturas, passando a chamar fenomenos,\n")
  escreva("ecos do passado e milagres sobrenaturais. Sua magia e enigmatica e poderosa,\n")
  escreva("mas sua afinidade com os elementos e limitada, exceto pela escuridao e o neutro.\n")
  escreva("Escolha ideal para quem deseja dominar o campo com efeitos misteriosos e imprevis?veis.\n\n")

  escreva("2 - ESPIRITUALISTA\n")
  escreva("A continuacao natural do Onmyoji tradicional, o Espiritualista invoca esp?ritos elementais\n")
  escreva("para lutar ao seu lado e canalizar seus poderes. Possui grande afinidade com os elementos\n")
  escreva("agua, fogo, vento, terra e escuridao, tornando-se um mestre das forcas espirituais da natureza.\n")
  escreva("Uma escolha poderosa para quem valoriza o suporte e a versatilidade elemental.\n\n")

  escreva("3 - DRUIDA\n")
  escreva("Um guardiao da harmonia natural, o Druida usa sua comunhao com a natureza para se fortalecer e proteger.\n")
  escreva("Especializa-se nos elementos agua, terra e luz, canalizando suas energias para curar,\n")
  escreva("defender ou devastar com a forca do mundo natural.\n")
  escreva("Indicado para jogadores que buscam uma conexao profunda com a terra e o equilibrio magico.\n")
  escreva("Digite o numero de seu avanco de classe escolhido: \n")
  
  leia(opcaoDeAvancoFinal)
  
  enquanto(opcaoDeAvancoFinal < 1 ou opcaoDeAvancoFinal > 3){
    escreva("Opcao invalida, tente novamente. As opcoes validas sao 1, 2 e 3.\n")
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

  escreva(nomeDoPersonagem, ", agora e um: ", classe, ".\n")
  mostrarAtributos()
}
funcao avancoDeClasseBruxo(){
  inteiro opcaoDeAvancoFinal

  escreva(nomeDoPersonagem, " alcancou o nivel maximo na sua classe atual, agora escolha uma das opcoes de avanco de classe. Este sera seu ultimo avanco de classe.\n")
  
  escreva("1 - SHAMAN\n")
  escreva("Um mestre das maldicoes e da forca vital. O Shaman eh o oposto do Druida,\n")
  escreva("fortalecendo a si mesmo enquanto enfraquece seus inimigos com rituais antigos.\n")
  escreva("Manipula os elementos fogo, terra e escuridao, drenando energia e quebrando resistencias.\n")
  escreva("Ideal para quem deseja dominar o campo com maleficios e resistencia constante.\n\n")

  escreva("2 - BRUXO DO PESADELO\n")
  escreva("Um ilusionista sombrio que mergulha a mente de seus inimigos em pesadelos aterrorizantes.\n")
  escreva("Enquanto o inimigo esta indefeso, o Bruxo do Pesadelo o destroi lentamente, sem piedade.\n")
  escreva("Seu foco esta na escuridao, mas tambem possui certa maestria com o fogo para alimentar seus horrores.\n")
  escreva("Uma escolha excelente para quem prefere controle mental e dano psicol?gico.\n\n")

  escreva("3 - MAGO NEGRO\n")
  escreva("Diferente de todos os outros magos, o Mago Negro rompe com a fragilidade tradicional da classe.\n")
  escreva("Equilibra bem ataque e defesa, tornando-se uma ameaca solida e constante em campo.\n")
  escreva("Seu poder e concentrado inteiramente na escuridao, usando-a para causar destruicao direta e implacavel.\n")
  escreva("Recomendado para jogadores que desejam poder bruto, com um toque de resistencia rara para um mago.\n")
  escreva("Digite o numero de seu avanco de classe escolhido: \n")
  
  leia(opcaoDeAvancoFinal)
  
  enquanto(opcaoDeAvancoFinal < 1 ou opcaoDeAvancoFinal > 3){
    escreva("Opcao invalida, tente novamente. As opcoes validas sao 1, 2 e 3.\n")
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

  escreva(nomeDoPersonagem, ", agora e um: ", classe, ".\n")
  mostrarAtributos()
}
funcao avancoDeClasseCacador(){
  inteiro opcaoDeAvancoFinal

  escreva(nomeDoPersonagem, " alcancou o nivel maximo na sua classe atual, agora escolha uma das opcoes de avanco de classe. Este sera seu ultimo avanco de classe.\n")
  
  escreva("1 - CACADOR DE ESTRELAS\n")
  escreva("Um arqueiro lendario, veloz e mortal, cuja precisao e comparada ao poder de derrubar estrelas.\n")
  escreva("Combina alta agilidade e ataque com habilidades elementais de luz, vento e fogo.\n")
  escreva("Ideal para quem busca um estilo ofensivo agil e devastador, sempre em movimento.\n\n")

  escreva("2 - CACADOR SOMBRIO\n")
  escreva("Especialista em emboscadas e ataques nas sombras. O Cacador Sombrio domina a arte do ataque furtivo,\n")
  escreva("mantendo o equil?brio classico dos arqueiros, mas com foco tatico e preciso.\n")
  escreva("Utiliza os elementos escuridao, vento e neutro para surpreender seus inimigos de forma letal.\n")
  escreva("Excelente para quem prefere a ast?cia e o ataque sorrateiro ao confronto direto.\n\n")

  escreva("3 - CACADOR ANCESTRAL\n")
  escreva("Um guerreiro conectado as forcas primitivas da natureza. O Cacador Ancestral canaliza o poder da terra\n")
  escreva("em seus disparos, tornando suas flechas mais pesadas e impactantes.\n")
  escreva("Mais resistente que os outros cacadores, mas ligeiramente mais lento.\n")
  escreva("Possui afinidade com os elementos terra, luz e escuridao. Uma ?tima escolha para quem busca forca e estabilidade.\n")
  escreva("Digite o numero de seu avanco de classe escolhido: \n")
  
  leia(opcaoDeAvancoFinal)
  
  enquanto(opcaoDeAvancoFinal < 1 ou opcaoDeAvancoFinal > 3){
    escreva("Opcao invalida, tente novamente. As opcoes validas sao 1, 2 e 3.\n")
    leia(opcaoDeAvancoFinal)
  }

  escolha(opcaoDeAvancoFinal){
    caso 1:
      classe = "CACADOR DE ESTRELAS"
    pare
    caso 2:
      classe = "CACADOR SOMBRIO"
    pare
    caso 3:
      classe = "CACADOR ANCESTRAL"
    pare
  }

  escreva(nomeDoPersonagem, ", agora e um: ", classe, ".\n")
  mostrarAtributos()
}
funcao avancoDeClasseAtirador(){
  inteiro opcaoDeAvancoFinal

  escreva(nomeDoPersonagem, " alcancou o nivel maximo na sua classe atual, agora escolha uma das opcoes de avanco de classe. Este sera seu ultimo avanco de classe.\n")
  escreva("1 - ARTILHEIRO\n")
  escreva("Um mestre do armamento pesado, o Artilheiro leva o conceito de dano a um novo patamar.\n")
  escreva("Focado inteiramente no ataque, utiliza os elementos fogo e neutro para ampliar ainda mais seu poder destrutivo.\n")
  escreva("Ideal para quem prefere eliminar o inimigo antes mesmo de ser alcancado.\n\n")

  escreva("2 - ASSASSINO\n")
  escreva("Especialista em ataques fatais e silenciosos, o Assassino luta para encerrar a batalha com um ?nico golpe.\n")
  escreva("Seu estilo e rapido, letal e preciso, com afinidade com os elementos neutro, agua e escuridao.\n")
  escreva("Perfeito para quem busca dano extremo com mobilidade furtiva e finalizacoes velozes.\n\n")

  escreva("3 - EXECUTOR CARMESIM\n")
  escreva("Um atirador cruel e implacavel, que sacrificou toda defesa em prol de velocidade e letalidade.\n")
  escreva("Equilibra bem ataque e agilidade, mas qualquer golpe recebido pode ser fatal.\n")
  escreva("Canaliza os elementos fogo e neutro para executar seus inimigos com estilo e brutalidade.\n")
  escreva("Recomendado para quem vive no fio da navalha: mata rapido ou morre rapido.\n")
  escreva("Digite o numero de seu avanco de classe escolhido: \n")
  
  leia(opcaoDeAvancoFinal)
  
  enquanto(opcaoDeAvancoFinal < 1 ou opcaoDeAvancoFinal > 3){
    escreva("Opcao invalida, tente novamente. As opcoes validas sao 1, 2 e 3.\n")
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

  escreva(nomeDoPersonagem, ", agora e um: ", classe, ".\n")
  mostrarAtributos()
}
funcao avancoDeClasseVigia(){
  inteiro opcaoDeAvancoFinal

  escreva(nomeDoPersonagem, " alcancou o n?vel maximo na sua classe atual, agora escolha uma das opcoes de avanco de classe. Este sera seu ultimo avanco de classe.\n")
  escreva("1 - SENTINELA SOLAR\n")
  escreva("Um arqueiro equilibrado que canaliza a energia do sol para iluminar o campo de batalha.\n")
  escreva("Mantem os atributos balanceados do Vigia, combinando-os com os elementos fogo e luz.\n")
  escreva("Ideal para quem deseja manter versatilidade com um toque de brilho ofensivo e precisao sagrada.\n\n")

  escreva("2 - GUARDIAO CELESTIAL\n")
  escreva("Um arqueiro abencoado pelos ceus, que aprimora seus disparos com o poder dos fenomenos celestes.\n")
  escreva("Possui afinidade com os elementos agua, vento e luz, e eh levemente mais ofensivo que o Vigia tradicional.\n")
  escreva("Excelente para quem prefere uma abordagem ofensiva sem abrir mao da graciosidade celestial.\n\n")

  escreva("3 - OLHO DO ABISMO\n")
  escreva("Um arqueiro sombrio que extrai sua forca dos abismos profundos da terra e do oceano.\n")
  escreva("Mantem os atributos equilibrados do Vigia, mas canaliza os elementos agua e escuridao\n")
  escreva("para disparos misteriosos, silenciosos e muitas vezes fatais.\n")
  escreva("Recomendado para jogadores que gostam de manter o equilibrio enquanto exploram o lado mais sombrio da natureza.\n")
  escreva("Digite o numero de seu avanco de classe escolhido: \n")  
  
  leia(opcaoDeAvancoFinal)
  
  enquanto(opcaoDeAvancoFinal < 1 ou opcaoDeAvancoFinal > 3){
    escreva("Opcao invalida, tente novamente. As opcoes validas sao: 1, 2 e 3.\n")
    leia(opcaoDeAvancoFinal)
  }

  escolha(opcaoDeAvancoFinal){
    caso 1:
      classe = "SENTINELA SOLAR"
    pare
    caso 2:
      classe = "GUARDIAO CELESTE"
    pare
    caso 3:
      classe = "OLHO DO ABISMO"
    pare
  }

  escreva(nomeDoPersonagem, ", agora eh um: ", classe, ".\n")
  mostrarAtributos()
}

funcao avancoDeClasseMago() {
    inteiro opcaoDeAvanco
    
    escreva(nomeDoPersonagem, " alcancou o nivel maximo na sua classe atual, agora escolha uma das opcoes de avanco de classe. Este sera seu ultimo avanco de classe.\n")
    escreva("1 - EVOCADOR\n")
    escreva("Classe que continua o caminho do Mago, com foco total em ataques poderosos.\n")
    escreva("Mantem uma defesa fraca, mas eh capaz de causar grande dano de forma rapida e direta.\n")
    escreva("Ideal para quem quer continuar atacando com forca, mesmo sendo mais vulneravel.\n\n")

    escreva("2 - ONMYOJI\n")
    escreva("Classe que troca parte do poder direto por mais velocidade e controle.\n")
    escreva("Pode invocar pequenas criaturas para ajudar nos combates, alem de se mover com mais agilidade.\n")
    escreva("Boa escolha para quem gosta de estrategia e movimentacao.\n\n")

    escreva("3 - BRUXO\n")
    escreva("Foca em enfraquecer o inimigo e se fortalecer durante o combate.\n")
    escreva("Nao eh tao rapido quanto outras classes, mas consegue virar o jogo aos poucos.\n")
    escreva("Indicado para quem prefere um estilo mais calculado e resistente.\n")
    escreva("Digite o numero de seu avanco de classe escolhido: \n")
    leia(opcaoDeAvanco)
    
    enquanto(opcaoDeAvanco < 1 ou opcaoDeAvanco > 3) {
        escreva("Opcao invalida tente novamente. As opcoes validas sao 1, 2 e 3.\n")
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
    
    escreva(nomeDoPersonagem, ", agora eh um: ", classe, ".\n")
    mostrarAtributos()
}

funcao avancoDeClasseArqueiro() {
  inteiro opcaoDeAvanco
    
  escreva(nomeDoPersonagem, " alcancou o nivel maximo na sua classe inicial, agora escolha uma das opcoes de avanco de classe.\n")

  escreva("1 - CACADOR\n")
  escreva("Classe com foco total na agilidade. Se move rapidamente e ataca com velocidade.\n")
  escreva("Boa para quem quer estar sempre em movimento e evitar ser atingido.\n\n")

  escreva("2 - ATIRADOR\n")
  escreva("Especializado em causar o maximo de dano com seus ataques e distancia.\n")
  escreva("Tem menos mobilidade, mas acerta com mais forca.\n")
  escreva("Recomendado para quem prefere eliminar os inimigos rapidamente.\n\n")

  escreva("3 - VIGIA\n")
  escreva("Evolucao equilibrada do Arqueiro, mantendo o bom desempenho entre ataque e mobilidade.\n")
  escreva("Versatil e confiavel em qualquer situacao.\n\n")

  escreva("Digite o numero de seu avanco de classe escolhido: \n")
  leia(opcaoDeAvanco)

  enquanto(opcaoDeAvanco < 1 ou opcaoDeAvanco > 3) {
    escreva("Opcao invalida tente novamente. As opcoes validas sao 1, 2 e 3.\n")
    leia(opcaoDeAvanco)       
  }
    
  escolha (opcaoDeAvanco) {
    caso 1:
      classe = "CACADOR"
    pare
    caso 2:
      classe = "ATIRADOR"
    pare
    caso 3:
      classe = "VIGIA"
    pare
  }
    escreva(nomeDoPersonagem, ", agora eh um: ", classe, ".\n")
    mostrarAtributos()
  }
funcao turnoDeBatalha(){
  enquanto(vida > 0 e vidaDoInimigo > 0){
    se(pontosDeAcao < 10){
      pontosDeAcao = 10
    }senao se(excedenteInimigo > 0){
      pontosDeAcao += excedenteInimigo
      escreva(nomeDoPersonagem, " ganhou: ", excedenteInimigo, "pontos de extra.\n")
    }

    se(escudo <= 0){
      escudoAtivo = "NAO"
      escreva("Voce nao pode se defender por enquanto.\n")
    }
    se(escudoAtivo == "NAO" e escudo < escudoMax){
      escudo = escudo + nivel
      escreva("Voce reparou seu escudo por: ", defesa, ".\n")
    }
    escudoAtivo = "NAO"
    turnoDoJogador()

    se(pontosDeAcaoInimigo < 10){
      pontosDeAcaoInimigo = 10
    }senao se(excedenteJogador > 0){
      pontosDeAcaoInimigo += excedenteJogador
      escreva(nomeDoInimigoAtual, " ganhou: ", excedenteJogador, " pontos extras\n")
    }

    escudoAtivoDoInimigo = "NAO"
      
  }
  se(vidaDoInimigo <= 0){
    escreva("Parabens, ", nomeDoPersonagem, " derrotou o inimigo.\n")
    ganharExperiencia(ganhoDeExperiencia)
    recompensasOuAlgoAssim()
    adquirirPocao()
  }
  se(vida <= 0){
    escreva(nomeDoPersonagem, " foi derrotado.\n")
  }

}
funcao turnoDoJogador(){

  enquanto(vida > 0  e pontosDeAcao > 0){
    statusDeBatalha()
    mostrarOpcoes()

    inteiro acao
    leia(acao)

    escreva("Turno do jogador\n")
    enquanto(pontosDeAcao > 0){
      se(acao == 1){
        executarAcao(custoAtacar, "atacar")
      }senao se(acao == 2){
        executarAcao(custoDefesa, "defender")
      }senao se(acao == 3){
        executarAcao(custoHabilidade, "habilidade")
      }senao se(acao == 4){
        escreva("Voce encerrou seu turno.\n")
        pare
      }senao se(pontosDeAcao <=0 ){
        pare
        escreva(nomeDoPersonagem, " nao tem mais pontos de acao.\n")
        escreva("O turno e do inimgo agora:", nomeDoInimigoAtual)
      }senao{
        enquanto(acao < 1 e acao > 4){
          escreva("Opcao invalida tente novamente.\n")
          leia(acao)
        }
      }
    
      se(vidaDoInimigo <= 0){
        pare
      }

      se(pontosDeAcao > 0){
        continuar = 0
        escreva("Deseja continuar seu turno: 1 - Sim | 2 - Nao.\n")
        leia(continuar)

        se(continuar == 1){

        }
        senao se(continuar == 2){
          pare
        }      
      }
    }
  }
}
funcao turnoDoInimigo(){
  se(pontosDeAcaoInimigo < 1){
    pontosDeAcaoInimigo = 10
  }
    escreva("\n-----------Turno do inimigo-------------\n")
    enquanto(vidaDoInimigo > 0 e pontosDeAcaoInimigo > 0){
        inteiro acaoDoInimigo = u.sorteia(1,3)

        escolha(acaoDoInimigo){
            caso 1:
                executarAcaoInimigo(custoAtacar, "atacar")
            caso 2:
                executarAcaoInimigo(custoDefesa, "defender")
            caso 3:
                executarAcaoInimigo(custoHabilidade, "habilidade")
        }

        se(vidaDoInimigo < 1){
          escreva("Voce venceu.\n")
          pare
        }
        escreva(nomeDoInimigoAtual, "ainda tem: ", pontosDeAcaoInimigo, " PA.\n")
        u.aguarde(1000)
    }
    se(pontosDeAcaoInimigo <= 0){
      escreva(nomeDoInimigoAtual, " nao tem pontos para continuar com o turno.\n")
      turnoDoJogador()
    }
}

funcao executarAcao(inteiro custo, cadeia tipoAcao){

  se(pontosDeAcao < custo){
    excedenteJogador = custo - pontosDeAcao
    pontosDeAcao += excedenteInimigo
    escreva(nomeDoPersonagem, " nao tem pontos de acao o suficiente para esta acao o excedente de: ", excedenteJogador, " serao pontos de acao bonus do inimigo.\n")
    excedenteInimigo = 0
    retorne
  }senao{
    pontosDeAcao -= custo
  }
  
  se(tipoAcao == "atacar"){
    inteiro danoCausado = ataque - inimigoDEF



    se(inimigoEscudo <= 0){
      escudoAtivoDoInimigo ="NAO"
      escreva(nomeDoInimigoAtual," nao pode se defender por enquanto.\n")
    }
    se(danoCausado < 0){
      danoCausado = 1
    }
    se(escudoAtivoDoInimigo == "NAO" e inimigoEscudo < inimigoEscudoMax){
      inimigoEscudo += nivelDoInimigo
      escreva(nomeDoInimigoAtual, " reparou o escudo em: ", nivelDoInimigo, " pontos.\n")
    }



    se(escudoAtivoDoInimigo == "NAO"){
      vidaDoInimigo -= danoCausado
      escreva(nomeDoInimigoAtual, " sofreu dano de: ", danoCausado, ".\n")
    }senao se(escudoAtivoDoInimigo == "SIM"){
      se(danoCausado < inimigoEscudo){
        inimigoEscudo = inimigoEscudo - danoCausado * -1
        escreva(nomeDoPersonagem, " desgastou a defesa de ", nomeDoInimigoAtual, " em: ", danoCausado, " pontos.\n")
      }senao se(danoCausado > inimigoEscudo){
        inteiro quebraDeDefesa = danoCausado - inimigoEscudo
        danoCausado = quebraDeDefesa
        escudo = 0
        escreva(nomeDoPersonagem, " quebrou o escudo usado por ", nomeDoInimigoAtual, " causando dano de: ", danoCausado, " .\n")
      }
    }

  }senao se(tipoAcao == "defender"){

    escudoAtivo = "SIM"
    escreva(nomeDoPersonagem, " gerou um escudo que recebera os proximos ataques.\n")
    u.aguarde(3000)
    limpa()
    
  }senao se(tipoAcao == "habilidade"){
    inteiro danoCausado = (ataque*2) - inimigoDEF
    se(danoCausado < 0){
      danoCausado = 1
    }
    vidaDoInimigo -= danoCausado
    escreva(nomeDoPersonagem, " usou seu ataque mais forte causando: ", danoCausado, " de dano.\n" )
  }
  se(excedenteJogador > 0){
    escreva("O inimigo ganhou: ", excedenteJogador, " pontos extras.\n")
    retorne
  }
}
funcao executarAcaoInimigo(inteiro custo, cadeia tipoAcaoInimigo){
  se(pontosDeAcaoInimigo <= custo){
    pontosDeAcaoInimigo -= custo
  }
  
  escreva(nomeDoInimigoAtual, "usou de ", custo, " PA para usar de", tipoAcaoInimigo, "\n")
  escreva(nomeDoInimigoAtual, " PA: ", pontosDeAcaoInimigo, ".\n")
  
  se(pontosDeAcaoInimigo < custo){
    excedenteInimigo = custo - pontosDeAcaoInimigo
    pontosDeAcaoInimigo += excedenteJogador
    escreva("O inimigo realizou uma acao sem ter pontos o suficientes o excedente de: ", excedenteInimigo, "sera seu bonus para o proximo turno.\n")
    excedenteJogador = 0
    pontosDeAcaoInimigo = 0
    turnoDoJogador()
  }

  se(tipoAcaoInimigo == "atacar"){
    inteiro danoAoPersonagem = inimigoATK - defesa

    se(escudoAtivo == "NAO"){
      se(danoAoPersonagem < 1){
      danoAoPersonagem = 1
      vida -= danoAoPersonagem
      escreva(nomeDoInimigoAtual, "acertou um ataque de raspao causando dano de: ", danoAoPersonagem, ".\n")
      }senao se(danoAoPersonagem > 0){
        vida -= danoAoPersonagem
        escreva(nomeDoInimigoAtual, " te atacou causando dano de: ", danoAoPersonagem, "\n.")
      }
      
    }senao se(escudoAtivo == "SIM"){
      se(danoAoPersonagem < 0){
        danoAoPersonagem = 1
      }
      se(danoAoPersonagem < escudo){
        escudo = escudo - danoAoPersonagem * 1
        escreva(nomeDoInimigoAtual, " atacaou desgastando suas defesas em: ", danoAoPersonagem, ".\n")
        escreva("Escudo: ", escudo, "\n")
        
      }senao se(danoAoPersonagem > escudo){
        inteiro quebraDeDefesa = danoAoPersonagem - escudo
        escudo = 0
        danoAoPersonagem = quebraDeDefesa
        vida -= danoAoPersonagem
        escreva("O inimigo quebrou seu escudo, causando dano de: ", danoAoPersonagem, ".\n")
        escreva("Escudo: ", escudo, "\n")
      }
    }
    
  }senao se(tipoAcaoInimigo == "defender"){
    escreva(nomeDoInimigoAtual, " gerou um escudo que recebera os proximos ataques.\n")
    escudoAtivoDoInimigo = "SIM"
    escrva("EScudo: ",inimigoEscudo)
  }senao se(tipoAcaoInimigo == "habilidade"){
    inteiro danoAoPersonagem = (inimigoATK*2) - defesa
    se(danoAoPersonagem < 0){
      danoAoPersonagem = 0
    }
    vida -= danoAoPersonagem
    escreva(nomeDoPersonagem, " foi atingido por um ataque especial e sofreu: ", danoAoPersonagem, " de dano.\n")
  }
  se(excedenteInimigo > 0){
    escreva("Voce ganhou: ", excedenteInimigo, " pontos extras para o proximo turno.\n")
  }
  turnoDoJogador()
}
funcao statusDeBatalha(){
  escreva("\n-----situacao atual da batalha------\n")
  escreva(nomeDoPersonagem, ", Vida: ", vida, "  \n")
  se(escudoAtivo == "SIM"){
    escreva("Escudo: Ativo \t | \t Escudo: ", escudo, "\n")
  }senao{
    escreva("Escudo: Inativo\n")
  }
  escreva("Seus pontos de acao: ",pontosDeAcao, "\n")
  escreva("\n----------------------------------------\n")
  escreva(nomeDoInimigoAtual, ", Vida do inimigo: ", vidaDoInimigo, "\n")
  se(escudoAtivoDoInimigo == "SIM"){
    escreva("Escudo inimigo: Ativo \t | \t Escudo: ", inimigoEscudo, "\n")
  }
  escreva("Pontos de Acoes do inimigo: ", pontosDeAcaoInimigo, "\n")
  u.aguarde(5000)
  limpa()
}
funcao mostrarOpcoes(){
  escreva("\n--Acoes disponiveis--\n")
  escreva("Seus pontos de acao: ", pontosDeAcao, "\n")
  escreva("1 - Atacar. Custo:", custoAtacar, "PA\n")
  escreva("2 - Defender. Custo: ", custoDefesa, "PA\n")
  escreva("3 - Habilidade. Custo: ", custoHabilidade, "PA\n")
  escreva("4 - Passar turno\n")
  escreva("Escolha: ")
}
funcao gerarInimigo() {
  pocaoDisponivel()

  inteiro seletorDeInimigos
  se(regioes[0] == "VILA DOS COMECOS" e regiaoAtual == 0){
    seletorDeInimigos = u.sorteia(0,2)
  }senao se(regioes[1] == "FLORESTA DA NEVOA" e regiaoAtual == 1){
    seletorDeInimigos = u.sorteia(3,5)
  }senao se(regioes[2] == "VILA ABANDONADA" e regiaoAtual == 2){
    seletorDeInimigos = u.sorteia(6,8)
  }senao se(regioes[3] == "CAVERNA SOMBRIA" e regiaoAtual == 3){
    seletorDeInimigos = u.sorteia(9,11)
  }senao se(regioes[4] == "LABIRINTO ESCONDIDO" e regiaoAtual == 4){
    seletorDeInimigos = u.sorteia(12,14)
  }senao se(regioes[5] == "COLISEU DE SUCATAS" e regiaoAtual == 5){
    seletorDeInimigos = u.sorteia(15,17)
  }senao se(regioes[6] == "PANTANO DOS LAMENTOS" e regiaoAtual == 6){
    seletorDeInimigos = u.sorteia(18,20)
  }senao se(regioes[7] == "CASTELO DOURADO" e regiaoAtual == 7){
    inteiro batalhaDoCastelo = 0
    se(batalhaDoCastelo == 0){
      seletorDeInimigos = 21
      nomeDoInimigo[seletorDeInimigos]
      se(vidaDoInimigo < 1){
        batalhaDoCastelo++
      }
    }senao se(batalhaDoCastelo == 1){
      seletorDeInimigos = 22
      nomeDoInimigo[seletorDeInimigos]
      se(vidaDoInimigo < 1){
        batalhaDoCastelo++
      }
    }senao se(batalhaDoCastelo == 2){
      seletorDeInimigos = 23
      nomeDoInimigo[seletorDeInimigos]
      se(vidaDoInimigo < 1){
        batalhaDoCastelo++
      }
    }senao se(batalhaDoCastelo == 3){
      seletorDeInimigos = 24
      nomeDeBoss[seletorDeInimigos]
    }

  }
    escudoAtivoDoInimigo = "NAO"

    nomeDoInimigoAtual = nomeDoInimigo[seletorDeInimigos]
    nivelDoInimigo = nivel
    vidaDoInimigo = 20 + nivel * 5
    inimigoATK = 5 + nivel
    inimigoDEF = 2 + nivel
    inimigoAGI = 1 + nivel
    pontosDeAcaoInimigo = 10
    inimigoEscudoMax = inimigoDEF
    inimigoEscudo = inimigoEscudoMax
    ganhoDeExperiencia = nivelDoInimigo + 5

    turnoDeBatalhaSimples()
}
funcao gerarBossDaRegiao(){
  escudoAtivoDoInimigo = "NAO"
  pocaoDisponivel()
  se(regioes[regiaoAtual] == "VILA DOS COMECOS" e fragmentoDaPedraDaLuz == 0){

    nomeDoInimigoAtual = nomeDeBoss[0]
    nivelDoBoss = nivel + 1
    vidaDoInimigo = 20 + nivelDoBoss * 5
    inimigoATK = 4 + nivel
    inimigoDEF = 4 + nivel
    inimigoAGI = 4 + nivel
    pontosDeAcaoInimigo = 10
    inimigoEscudoMax = inimigoDEF
    inimigoEscudo = inimigoEscudoMax
    ganhoDeExperiencia = nivelDoBoss + 1
    turnoDeBatalhaSimples()
    se(vidaDoInimigo <= 0){
      fragmentoDaPedraDaLuz++
      escreva("Voce recuperou o fragmento da pedra da luz que estava com ", nomeDoInimigoAtual, ".\n")
      menuDeNavegacao()
    }

  }senao se(regioes[regiaoAtual] == "FLORESTA DA NEVOA" e fragmentoDaPedraDaLuz == 1){
    nomeDoInimigoAtual = nomeDeBoss[1]
    nivelDoBoss = nivel + 2
    vidaDoInimigo = 20 + nivelDoBoss * 5
    inimigoATK = 5 + nivel
    inimigoDEF = 5 + nivel
    inimigoAGI = 5 + nivel
    pontosDeAcaoInimigo = 10
    inimigoEscudoMax = inimigoDEF
    inimigoEscudo = inimigoEscudoMax
    ganhoDeExperiencia = nivelDoBoss + 2
    turnoDeBatalhaSimples()
    se(vidaDoInimigo < 1){
      fragmentoDaPedraDaLuz++
      escreva("Voce recuperou o fragmento da pedra da luz que estava com ", nomeDoInimigoAtual, ".\n")
      menuDeNavegacao()
    }
  }senao se(regioes[regiaoAtual] == "VILA ABANDONADA" e fragmentoDaPedraDaLuz == 2){
    nomeDoInimigoAtual = nomeDeBoss[2]
    nivelDoBoss = nivel + 2
    vidaDoInimigo = 20 + nivelDoBoss * 5
    inimigoATK = 5 + nivel
    inimigoDEF = 5 + nivel
    inimigoAGI = 5 + nivel
    pontosDeAcaoInimigo = 10
    inimigoEscudoMax = inimigoDEF
    inimigoEscudo = inimigoEscudoMax
    ganhoDeExperiencia = nivelDoBoss + 2

    turnoDeBatalhaSimples()
    se(vidaDoInimigo < 1){
      fragmentoDaPedraDaLuz++
      escreva("Voce recuperou o fragmento da pedra da luz que estava com ", nomeDoInimigoAtual, ".\n")
      menuDeNavegacao()
    }
  }senao se(regioes[regiaoAtual] == "CAVERNA SOMBRIA" e fragmentoDaPedraDaLuz == 3){
    nomeDoInimigoAtual = nomeDeBoss[3]
    nivelDoBoss = nivel + 3
    vidaDoInimigo = 20 + nivelDoBoss * 5
    inimigoATK = 5 + nivel
    inimigoDEF = 5 + nivel
    inimigoAGI = 5 + nivel
    pontosDeAcaoInimigo = 10
    inimigoEscudoMax = inimigoDEF
    inimigoEscudo = inimigoEscudoMax
    ganhoDeExperiencia = nivelDoBoss + 3

    turnoDeBatalhaSimples()
    se(vidaDoInimigo < 1){
      fragmentoDaPedraDaLuz++
      escreva("Voce recuperou o fragmento da pedra da luz que estava com ", nomeDoInimigoAtual, ".\n")
      menuDeNavegacao()
    }
  }senao se(regioes[regiaoAtual] == "LABIRINTO ESCONDIDO" e fragmentoDaPedraDaLuz == 4){
    nomeDoInimigoAtual = nomeDeBoss[4]
    nivelDoBoss = nivel + 4
    vidaDoInimigo = 20 + nivelDoBoss * 5
    inimigoATK = 5 + nivel
    inimigoDEF = 5 + nivel
    inimigoAGI = 5 + nivel
    pontosDeAcaoInimigo = 10
    inimigoEscudoMax = inimigoDEF
    inimigoEscudo = inimigoEscudoMax
    ganhoDeExperiencia = nivelDoBoss + 4

    turnoDeBatalhaSimples()
    se(vidaDoInimigo < 1){
      fragmentoDaPedraDaLuz++
      escreva("Voce recuperou o fragmento da pedra da luz que estava com ", nomeDoInimigoAtual, ".\n")
      menuDeNavegacao()
    }
  }senao se(regioes[regiaoAtual] == "COLISEU DE SUCATAS" e regiaoAtual == 5){
    nomeDoInimigoAtual = nomeDeBoss[5]
    nivelDoBoss = nivel + 5
    vidaDoInimigo = 20 + nivelDoBoss * 5
    inimigoATK = 5 + nivel
    inimigoDEF = 5 + nivel
    inimigoAGI = 5 + nivel
    pontosDeAcaoInimigo = 10
    inimigoEscudoMax = inimigoDEF
    inimigoEscudo = inimigoEscudoMax
    ganhoDeExperiencia = nivelDoBoss + 5

    turnoDeBatalhaSimples()
    se(vidaDoInimigo < 1){
      fragmentoDaPedraDaLuz++
      escreva("Voce recuperou o fragmento da pedra da luz que estava com ", nomeDoInimigoAtual, ".\n")
      menuDeNavegacao()
    }
  }senao se(regioes[regiaoAtual] == "PANTANO DOS LAMENTOS" e fragmentoDaPedraDaLuz == 6){
    nomeDoInimigoAtual = nomeDeBoss[6]
    nivelDoBoss = nivel + 6
    vidaDoInimigo = 20 + nivelDoBoss * 5
    inimigoATK = 5 + nivel
    inimigoDEF = 5 + nivel
    inimigoAGI = 5 + nivel
    pontosDeAcaoInimigo = 10
    inimigoEscudoMax = inimigoDEF
    inimigoEscudo = inimigoEscudoMax
    ganhoDeExperiencia = nivelDoBoss + 6

    turnoDeBatalhaSimples()
    se(vidaDoInimigo <= 0){
      fragmentoDaPedraDaLuz++
      escreva("Voce recuperou o fragmento da pedra da luz que estava com ", nomeDoInimigoAtual, ".\n")
      menuDeNavegacao()
    }
  }senao se(regioes[regiaoAtual] == "CASTELO DOURADO" e fragmentoDaPedraDaLuz == 7){
    nomeDoInimigoAtual = nomeDeBoss[7]
    nivelDoBoss = nivel + 7
    vidaDoInimigo = 20 + nivelDoBoss * 5
    inimigoATK = 5 + nivelDoBoss
    inimigoDEF = 5 + nivelDoBoss
    inimigoAGI = 5 + nivelDoBoss
    pontosDeAcaoInimigo = 10
    inimigoEscudoMax = inimigoDEF
    inimigoEscudo = inimigoEscudoMax
    ganhoDeExperiencia = nivelDoBoss + 7
    batalhaEldlichV2()
    menuDeNavegacao()
  }
}
funcao batalhaGrandeGabonga(){
  enquanto(vida > 0 e vidaDoInimigo > 0){
    se(pontosDeAcao < 10){
      pontosDeAcao = 10
    }senao se(excedenteInimigo > 0){
      pontosDeAcao += excedenteInimigo
      escreva(nomeDoPersonagem, " ganhou: ", excedenteInimigo, "pontos extras.\n")
    }

    se(escudo <= 0){
      escudoAtivo = "NAO"
      escreva("Voce nao pode se defender por enquanto.\n")
    }
    se(escudoAtivo == "NAO" e escudo < escudoMax){
      escudo = escudo + nivel
      escreva("Voce reparou seu escudo por: ", defesa, ".\n")
    }

    escudoAtivo = "NAO"
    turnoDoJogador()

    se(pontosDeAcaoInimigo < 10){
      pontosDeAcaoInimigo = 10
    }senao se(excedenteJogador > 0){
      pontosDeAcaoInimigo += excedenteJogador
    }

    escudoAtivoDoInimigo = "NAO"
    turnoDoInimigo()
    se(vidaDoInimigo <= 10 e nomeDoInimigoAtual == "Goblin Motoqueiro, Grande Gabonga"){
      escreva("Grande Gabonga esta desesperado soltou as amarras da besta que usa como montoria.\n")
      u.aguarde(4000)
      limpa()
      escreva("Agora voce enfrentara  a Besta Enlouquecida dos Goblins.\n")
      u.aguarde(4000)
      limpa()

      nomeDoInimigoAtual = "Besta Enlouquecida dos Goblins"
      vidaDoInimigo += 10
      pontosDeAcaoInimigo += 5
      inimigoATK += nivelDoBoss
      inimigoDEF += nivelDoBoss
      inimigoAGI += nivelDoBoss
    }
    se(vidaDoInimigo <=5 e nomeDoInimigoAtual == "Besta Enlouquecida dos Goblins"){
      escreva("Voce feriu gravamente a besta enloquecida.\n")
      u.aguarde(2000)
      escreva("Preocupado coma sua montaria Grande Gabonga voltou a batalha.\n")
      u.aguarde(3000)
      limpa()

      nomeDoInimigoAtual = "Goblin Motoqueiro, Grande Gabonga(Exausto)"
      vidaDoInimigo += 2
      pontosDeAcaoInimigo += 2
      inimigoATK = 5
      inimigoDEF = 5
      inimigoAGI = 5

    }  
    se(vidaDoInimigo <= 0){
      escreva("Parabens, ", nomeDoPersonagem, " derrotou o inimigo.\n")
      escreva("Voce recuperou o fragmento da pedra da luz que estava na posse dos Goblins Motoqueiros.\n")
      fragmentoDaPedraDaLuz += 1
      ganharExperiencia(ganhoDeExperiencia)
      regiaoAtual++
    }  
    se(vida <= 0){
      escreva(nomeDoPersonagem, " foi derrotado.\n")
    pare
    }

  }

}
funcao batalhaEldlich(){
  escreva("Voce entra na sala do trono, onde o Senhor Dourado reina.\n")
  u.aguarde(1000)
  escreva("Um monstro o qual o poder nega a morte e a vida e torna tudo em ouro com um toque.\n")
  u.aguarde(1000)
  escreva("-------------------------------Eldlich, o Devastador------------------------------\n")
  escreva("Outro aspirante a heroi?\n")
  u.aguarde(1000)
  escreva("Voce vai ser so mais uma estatua neste castelo.\n")
  u.aguarde(2000)
  limpa()

  enquanto(vida > 0 e vidaDoInimigo > 0){
    se(pontosDeAcao < 10){
      pontosDeAcao = 10
    }senao se(excedenteInimigo > 0){
      pontosDeAcao += excedenteInimigo
      escreva(nomeDoPersonagem, " ganhou: ", excedenteInimigo, "pontos extras.\n")
    }

    se(escudo <= 0){
      escudoAtivo = "NAO"
      escreva("Voce nao pode se defender por enquanto.\n")
    }
    se(escudoAtivo == "NAO" e escudo < escudoMax){
      escudo = escudo + nivel
      escreva("Voce reparou seu escudo por: ", defesa, ".\n")
    }

    escudoAtivo = "NAO"
    turnoDoJogador()

    se(pontosDeAcaoInimigo < 10){
      pontosDeAcaoInimigo = 10
    }senao se(excedenteJogador > 0){
      pontosDeAcaoInimigo += excedenteJogador
    }
    
    escudoAtivoDoInimigo = "NAO"
    se(vidaDoInimigo%fragmentoDaPedraDaLuz > 0){
      vidaDoInimigo-fragmentoDaPedraDaLuz
    }senao{
      vidaDoInimigo += 7
    }
    turnoDoInimigo()
    se(vidaDoInimigo <= 10 e nomeDoInimigoAtual == "Eldlich, O Devastador"){
      escreva("Voce acha que me ferir serve de alguam coisa?\n")
      u.aguarde(4000)
      limpa()
      escreva("Eldlich está em furia.\n")
      u.aguarde(4000)
      limpa()

      nomeDoInimigoAtual = "Eldlich, O Senhor Dourado Enlouqecido"
      vidaDoInimigo += 10
      pontosDeAcaoInimigo += 5
      inimigoATK += nivelDoBoss
      inimigoDEF += nivelDoBoss
      inimigoAGI += nivelDoBoss
    }
    se(vidaDoInimigo <=5 e nomeDoInimigoAtual == "Eldlich, O Senhor Dourado Enlouqecido"){
      escreva("Voce fez Eldlich se lembrar da dor da vida.\n")
      u.aguarde(1000)
      escreva("----------------Eldlich--------------------\n")
      escreva("Que sensacao desagradavel.\n")
      u.aguarde(2000)
      escreva("Voce vai pagar por isso ", nomeDoPersonagem, "!")
      u.aguarde(2000)
      limpa()
      escreva("Usando de sua magia nefasta Eldlich junta todo ouro em uma estatua viva colossal.\n")
      u.aguarde(3000)
      limpa()

      nomeDoInimigoAtual = "Anjo Caido da Terra Dourada"
      vidaDoInimigo += 2
      pontosDeAcaoInimigo += 2
      inimigoATK += 5
      inimigoDEF += 5
      inimigoAGI += 5

    }  
    se(vidaDoInimigo <= 0){
      escreva("Parabens, ", nomeDoPersonagem, " derrotou o inimigo.\n")
      fragmentoDaPedraDaLuz++
      escreva("Voce recuperou o fragmento da pedra da luz que estava na posse dos Goblins Motoqueiros.\n")
      ganharExperiencia(ganhoDeExperiencia)
    }  
    se(vida <= 0){
      escreva(nomeDoPersonagem, " foi derrotado.\n")
    pare
    }

  }
}
funcao proximaRegiao(){
  se(regiaoAtual >= 7){
    escreva("Voce ja esta na ultima regiao de Eldoria.\n")
    escreva("Nao ha mais o que explorar a frente.\n")
  }

  inteiro opcaoDeRegiao
  escreva("Voce chegou a borda da regiao atual deseja seguir em frente?\n")
  escreva("Se sim digite 1 \t | \t Senao digite 2.")
  leia(opcaoDeRegiao)

  enquanto(opcaoDeRegiao < 1 ou opcaoDeRegiao > 2){
    escreva("Opcao invalida, tente novamente. As opcoes validas sao 1 e 2.\n")
    leia(opcaoDeRegiao)
  }
  se(opcaoDeRegiao == 1){
    regiaoAtual++
    escreva(nomeDoPersonagem, " Avancou para a proxima regiao.\n")
    escreva(nomeDoPersonagem, "Agora esta na regiao da: ", regioes[regiaoAtual], "\n")
    escreva("Voce esta na regiao:", (regiaoAtual + 1), "de 8.\n")

  }senao{
    escreva("Voce decidiu permanecer na regiao atual.\n")
    escreva(nomeDoPersonagem, " continua na regiao: ", regioes[regiaoAtual], ".\n")
  }
}
funcao voltarRegiao(){
    se(regiaoAtual == 0){
      escreva("Voce ja esta na primeira regiao de Eldoria.\n")
      escreva("Nao ha mais para onde voltar depois daqui.\n")
    }
    inteiro opcaoDeRegiaoVoltar
    escreva("Voce ja viu o necessario dessa regiao, deseja voltar?\n")
    escreva("Se sim digite 1 \t | \t Senao digite 2.")
    leia(opcaoDeRegiaoVoltar)

    enquanto(opcaoDeRegiaoVoltar < 1 ou opcaoDeRegiaoVoltar > 2){
      escreva("Opcao invalida, tente novamente. As opcoes validas sao 1 e 2.\n")
      leia(opcaoDeRegiaoVoltar)
    }
    se(opcaoDeRegiaoVoltar == 1){
      regiaoAtual--
      escreva(nomeDoPersonagem, " Voltou a regiao anerior.\n")
      escreva(nomeDoPersonagem, "Agora esta na regiao da: ", regioes[regiaoAtual], "\n")
      escreva("Voce esta na regiao:", (regiaoAtual + 1), "de 8.\n")
    }senao{
      escreva("Voce decidiu permanecer na regiao atual.\n")
      escreva(nomeDoPersonagem, " continua na regiao: ", regioes[regiaoAtual], ".\n")
    }
}
funcao menuDeNavegacao(){
  inteiro opcaoDeMovimentacao
  escreva("\n-----------Zaruba----------\n")
  escreva(nomeDoPersonagem, " como quer continuar sua jornada?\n")
  escreva("Avancar ou retornar?\n")
  escreva("1 - Avancar\n")
  escreva("2 - Retornar\n")
  leia(opcaoDeMovimentacao)
  enquanto(opcaoDeMovimentacao < 1 e opcaoDeMovimentacao > 2){
    escreva("-------Zaruba-----\n")
    escreva("1 ou 2 onde que eu falei sobre algum outro numero?\n")
    leia(opcaoDeMovimentacao)
  }
  escolha(opcaoDeMovimentacao){
    caso 1:
      proximaRegiao()
      mostrarRegiaoAtual()
    pare
    caso 2:
      voltarRegiao()
      mostrarRegiaoAtual()
    pare
  }
}
funcao mostrarRegiaoAtual(){

  escreva("\n === REGIAO ATUAL ===\n")
  escreva("Regiao: ", regioes[regiaoAtual], "\n")
  escreva("Posicao no mapa: ", (regiaoAtual + 1), " de 8\n")
        
  escreva("\n Mapa das regioes:\n")
  para(inteiro i = 0; i < 8; i++) {
    se(i == regiaoAtual){
      escreva("== [", (i + 1), "] ", regioes[i], " == (VOCE ESTA AQUI)\n")
    }senao{
      escreva("  [", (i + 1), "] ", regioes[i], "\n")
    }
  }
        
  escreva("\n Informacoes de navegacao:\n")
  se(regiaoAtual == 0){
      escreva(" Voce esta na primeira regiao\n")
      escreva(" Proxima regiao disponivel: ", regioes[regiaoAtual + 1], "\n")
    }
    senao se(regiaoAtual == 7){
      escreva(" Voce esta na ultima regiao\n")
      escreva(" Regiao anterior disponivel: ", regioes[regiaoAtual - 1], "\n")
    }
    senao{
      escreva(" Regiao anterior: ", regioes[regiaoAtual - 1], "\n")
      escreva(" Proxima regiao: ", regioes[regiaoAtual + 1], "\n")
    }
}
funcao introducaoDaRegiao(){
  se(regioes[0] == "VILA DOS COMECOS" e regiaoAtual == 0){
    introducaoVilaDosComecos()
  }senao se(regioes[1] == "FLORESTA DA NEVOA" e regiaoAtual == 1){
    introducaoFlorestaDaNevoa()
  }senao se(regioes[2] == "VILA ABANDONADA" e regiaoAtual == 2){
    introducaoVilaAbandonada()
  }senao se(regioes[3] == "CAVERNA SOMBRIA" e regiaoAtual == 3){
    introducaoCavernaSombria()
  }senao se(regioes[4] == "LABIRINTO ESCONDIDO" e regiaoAtual == 4){
    introducaoLabirintoEscondido()
  }senao se(regioes[5] == "COLISEU DE SUCATAS" e regiaoAtual == 5){
    introducaoColiseuDeSucata()
  }senao se(regioes[6] == "PANTANO DOS LAMENTOS" e regiaoAtual == 6){
    introducaoPantanoDosLamentos()
  }senao se(regioes[7] == "CASTELO DOURADO" e regiaoAtual == 7){
    introducaoCasteloDourado()
  }
}
funcao introducaoVilaDosComecos(){
  escreva("\n----- Vila dos Comecos -----\n")
  escreva(" Lar da esperanca de Eldoria  \n")
  u.aguarde(2000)
  limpa()
  escreva("Uma vila pacata onde a esperanca ainda resiste.\n")
  u.aguarde(2000)
  escreva("Entre colinas verdejantes e riachos cristalinos, os moradores contam historias de herois antigos e monstros selados em outras eras.\n")
  u.aguarde(2000)
  escreva("No entanto em tempos recentes o vilarejo e assolado por pequenos, mas insistentes, monstros domadores de bestas,\n")
  u.aguarde(2000)
  escreva("que desejam ser motoqueiros e por isso enfeitam suas montarias de forma a parecerem veiculos.\n")
  u.aguarde(2000)
  escreva("Um velho cavaleiro de outros tempos, agora com a alma presa em um anel, sera seu  guia.\n")
  u.aguarde(5000)
  limpa()

  escreva(nomeDoPersonagem, " voce acorda na mesma casa de que sempre te abrigou,\n")
  escreva(" mas diferente das outras vezes voce nao acorda com o nascer do sol.\n")
  escreva("E sim com um calafrio, vendo uma chama esverdeada no canto do olho.\n")
  u.aguarde(3000)
  limpa()

  escreva("---------------------??????-----------------------------\n")
  escreva("Eles te acharam nao pode mais fugir do chamado, \"heroi\".")
  u.aguarde(3000)
  limpa()

  escreva("------------------", nomeDoPersonagem, "-------------------------\n")
  escreva("Nao sou heroi, quem tinha esse titulo abandonou Eldoria a tempos.\n")
  u.aguarde(3000)
  limpa()

  escreva("---------------------??????-----------------------------\n")
  escreva("Entao nao vai ouvir o meu chamado a batalha?\n")
  u.aguarde(3000)
  limpa()

  escreva("------------------", nomeDoPersonagem, "-------------------------\n")
  escreva("Vou atender a seu chamado Zaruba, diferente de herois nao pretendo abandonar o mundo.\n")
  u.aguarde(3500)
  limpa()

  escreva("---------------------Zarubar-----------------------------\n")
  escreva("Otimo porque os menores e mais barulhentos dos males estao vindo.\n")
  escreva("Goblins motoqueiros.\n")
  u.aguarde(3500)
  limpa()

  escreva("Eu sou Zaruaba, o espirito do anel dos mortos e seu guia nessa jornada.\n")
  escreva("Vamos comecar testando suas habilidades em uma batalha ", nomeDoPersonagem, ".\n")
  u.aguarde(3500)
  limpa()

  escreva("A batalha acontecera em turnos, estranhamente ordeanado para goblins, mas e assim que funciona.\n")
  u.aguarde(3500)
  escreva("Tanto voce quanto seu inimigo tem 10 pontos de acao(PA) cada.\n")
  u.aguarde(3500)
  escreva("Cada acao: atacar, defender ou usar uma habilidade tem um custo, quando seus PA chegarem a 0 seu turno acaba.\n")
  u.aguarde(3500)
  limpa()
  
  gerarInimigo()
  
  escreva("Agora que voce enfrentou os goblins motoqueiros seu chefe vira atras de voce,", nomeDoPersonagem, ".\n")
  u.aguarde(2000)
  escreva("Quanto mais batalhas voce sair vitorioso mais poderoso voce sera.\n")
  u.aguarde(3000)
  escreva("Mas tenha cuidado seus inimigos tambem irao crescer com voce.\n")
  u.aguarde(2500)
  limpa()
  gerarBossDaRegiao()
  menuDeNavegacao()
}
funcao introducaoFlorestaDaNevoa(){
  escreva("\n---- FLORESTA DA NEVOA ----\n")
  escreva("--------------------------------------------------\n")
  u.aguarde(2000)
  limpa()

  escreva("Uma floresta ancestral tomada por uma nevoa viva.\n")
  u.aguarde(1000)
  escreva("Dizem que ela sussurra palavras esquecidas aos ouvidos dos viajantes.\n")
  u.aguarde(1000)
  escreva("Criaturas corrompidas espreitam entre as arvores tortas,\n")
  u.aguarde(1000)
  escreva("movendo-se como se fossem parte da pr?pria neblina.\n")
  u.aguarde(1000)
  escreva("Alguns que entraram nunca mais voltaram.\n")
  u.aguarde(1000)
  escreva("Outros voltaram... diferentes.\n")
  u.aguarde(3000)
  escreva("--------------------------------------------------\n")
  u.aguarde(3000)
  limpa()
  escreva("--------------------Zaruba--------------------------")
  escreva(nomeDoPersonagem, " sua maior preocupacao e o espirito do espadachim que se recusa a morrer, O senhor Das Espadas.\n")
  u.aguarde(1000)
  escreva("E talves os poucos que restam dos Goblins Motoqueiros.\n")
  u.aguarde(3000)
  limpa()
  
  gerarInimigo()
  escreva("A comocao chamou a atencao do Senhor das Espadas.\n")
  escreva("E ele tem um fragmento da pedra da luz.\n")
  escreva("Voce vai precisar de cada fragmento que encontar.")
  u.aguarde(3000)
  limpa()
  gerarBossDaRegiao()
  menuDeNavegacao()
}
funcao introducaoVilaAbandonada(){
  escreva("\n-- VILA ABANDONADA --\n")
  escreva("--------------------------------------------------\n")
  u.aguarde(1000)
  escreva("Ru?nas de um vilarejo onde a vida cessou repentinamente.\n")
  u.aguarde(1000)
  escreva("As casas permanecem de pe, intocadas pelo tempo,\n")
  u.aguarde(1000)
  escreva("mas ha algo errado no ar...\n")
  u.aguarde(1000)
  escreva("Risos infantis ecoam sem fonte. Passos podem ser ouvidos nas sombras.\n")
  u.aguarde(1000)
  escreva("Almas perdidas e ladr?es amaldicoados vagam entre os escombros,\n")
  u.aguarde(1000)
  escreva("protegendo segredos que ninguem deveria descobrir.\n")
  u.aguarde(1000)
  escreva("\n--------------------------------------------------\n")
  u.aguarde(2000)
  limpa()
  escreva("------ Zaruba ------\n")
  escreva("Aqui vive uma garota a qual os sonhos escapam para a realidade.\n")
  u.aguarde(1000)
  escreva("Ela costumava sonhar com gigantes gentis os quais os corpos eram feitos de doce e ajudavam nas tarefas da vila.\n")
  u.aguarde(1000)
  escreva("Desde que Eldoria caiu nas maos do devastador ela so tem pesadelos, brinquedos quebrados ganhando vida,\n")
  escreva("Cadaveres que se movem como bonecos de dar corda.")
  u.aguarde(1000)
  escreva("Meu pedido e cruel mas necessario.\n")
  escreva(nomeDoPersonagem, "coloque-a para dormir. Eternamente.\n")
  u.aguarde(3000)
  limpa()
  gerarInimigo()

  escreva("E aqui vem a \"Sonhadora\".\n")
  u.aguarde(3000)
  limpa()
  gerarBossDaRegiao()
  menuDeNavegacao()

}
funcao introducaoCavernaSombria(){
  escreva("\n--------------- CAVERNA SOMBRIA ----------------\n")
  escreva("--------------------------------------------------\n")
  u.aguarde(2000)
  limpa()
  escreva("As paredes respiram. O ar e denso como fumaca esquecida.\n")
  u.aguarde(1000)
  escreva("Antigos rituais profanaram estas profundezas,\n")
  u.aguarde(1000)
  escreva("deixando para tras ecos que nao pertencem a este mundo.\n")
  u.aguarde(1000)
  escreva("Criaturas de metal quebrado e carne corro?da rastejam na escuridao,\n")
  u.aguarde(1000)
  escreva("protegendo segredos sussurrados por vozes sem corpo.\n")
  u.aguarde(1000)
  escreva("Aqui, ate o silncio tem peso e ele observa.\n")
  u.aguarde(3000)
  escreva("--------------------------------------------------\n")
  u.aguarde(1000)
  limpa()
  escreva("\n---------------------Zaruba---------------------\n")
  u.aguarde(1000)
  escreva("Aqui os poderes de Eldlich distorcem a vida em metal, alguns tentaram tirar vantagem desta situacao.\n")
  u.aguarde(1000)
  escreva("E adapataram seus corpos as mudancas, mas a dor das alteracoes os reduziu a bestas feitas de restos de metal e carne.\n")
  u.aguarde(3000)
  limpa()

  gerarInimigo()
  escreva("Aqui vem o que esta no topo da cadeia alimentar daqui.")
  u.aguarde(3000)
  limpa()
  gerarBossDaRegiao()

}
funcao introducaoLabirintoEscondido(){
  escreva("\n LABIRINTO ESCONDIDO \n")
  escreva("--------------------------------------------------\n")
  u.aguarde(1000)
  escreva("Este não é um labirinto comum.\n")
  u.aguarde(1000)
  escreva("Espaço e tempo se dobram a cada passo.\n")
  u.aguarde(1000)
  escreva("Corredores se multiplicam, portas se movem sozinhas,\n")
  u.aguarde(1000)
  escreva("e o chão sussurra memórias que não são suas.\n")
  u.aguarde(1000)
  escreva("Visões distorcidas do passado tentam desviar sua mente,\n")
  u.aguarde(1000)
  escreva("e às vezes? você jura ter se visto do outro lado do espelho.\n")
  u.aguarde(1000)
  escreva("--------------------------------------------------\n")
  u.aguarde(3000)
  limpa()

  escreva("---------------------Zaruaba----------------------\n")
  u.aguarde(1000)
  escreva("Cuidado com o machado da dama que comanda as paredes deste lugar.\n")
  u.aguarde(1000)
  escreva("Mas primeiro lide com os servos dela.\n")
  u.aguarde(2000)
  limpa()
  gerarInimigo()
  escreva("Raspando o machado pela parede a anfiatra chega.\n")
  gerarBossDaRegiao()
  menuDeNavegacao()
}
funcao introducaoColiseuDeSucata(){
  escreva("\n             COLISEU DE SUCATAS                 \n")
  escreva("--------------------------------------------------\n")
  u.aguarde(1000)
  escreva("Um campo de batalha construido com restos de guerras esquecidas.\n")
  u.aguarde(1000)
  escreva("Chao de metal retorcido, arquibancadas feitas de ossos soldados e engrenagens quebradas.\n")
  u.aguarde(1000)
  escreva("Aqui, guerreiros caidos lutam eternamente por entretenimento de vozes invisiveis.\n")
  u.aguarde(1000)
  escreva("Ecoam gritos, aplausos metalicos e correntes arrastadas? mas nao ha plateia.\n")
  u.aguarde(1000)
  escreva("Cada duelo e transmitido por olhos artificiais que pairam no ar,\n")
  u.aguarde(1000)
  escreva("e os perdedores... sao reciclados.\n")
  u.aguarde(1000)
  escreva("--------------------------------------------------\n")
  u.aguarde(3000)
  limpa()

  escreva("\n------------Zaruba---------\n")
  u.aguarde(1000)
  escreva("Estamos perto agora.\n")
  u.aguarde(1000)
  escreva("E um coliseu nao precisa que eu diga o que fazer nao e mesmo, ", nomeDoPersonagem, " ?\n")
  u.aguarde(2000)
  limpa()
  gerarInimigo()
  
  escreva("E o \"Rei\" do coliseu veio nos receber.\n")
  u.aguarde(2500)
  limpa()
  gerarBossDaRegiao()
  menuDeNavegacao()
}
funcao introducaoPantanoDosLamentos(){
  escreva("\n?? PANTANO DOS LAMENTOS ??\n")
  escreva("--------------------------------------------------\n")
  u.aguarde(1000)
  escreva("Nada cresce aqui, apenas afunda.\n")
  u.aguarde(1000)
  escreva("O solo encharcado devora passos e esperancas com a mesma voracidade.\n")
  u.aguarde(1000)
  escreva("Lamentos sussurram entre as brumas, cada um vindo de alguam que fracassou antes de voce.\n")
  u.aguarde(1000)
  escreva("Espiritos venenosos flutuam entre as arvores retorcidas,\n")
  u.aguarde(1000)
  escreva("e a própria agua parece grudar na alma.\n")
  u.aguarde(1000)
  escreva("Aqui, nao se morre com espadas, mas com arrependimentos.\n")
  u.aguarde(1000)
  escreva("--------------------------------------------------\n")
  u.aguarde(2500)
  limpa()
  escreva("--------------------Zaruba------------------------\n")
  u.aguarde(1000)
  escreva("Quando Eldlich destruiu a Pedra da Luz a ordem natural se perdeu.\n")
  u.aguarde(1000)
  escreva("A natureza se retorce em diferentes metais onde o poder dele toca.\n")
  u.aguarde(1000)
  escreva("E os mortos se levantam ou viram estatuas de ouro que o enaltecem.\n")
  u.aguarde(1000)
  escreva("Tudo aqui se corrompeu pelo toque do devastador, mesmo se detruir tudo ninguem irá te culpar.\n")
  u.aguarde(3000)
  limpa()
  gerarInimigo()
  escreva("Até a lama e se contorce e pensa em sim como realeza\n")
  u.aguarde(1000)
  escreva("Sobre influencia de Eldlich.\n")
  gerarBossDaRegiao()
  menuDeNavegacao()
}
funcao introducaoCasteloDourado(){
  escreva("\n                CASTELO DOURADO                \n")
  escreva("--------------------------------------------------\n")
  u.aguarde(1000)
  escreva("Erguido sobre as cinzas da antiga capital, o castelo brilha...\n")
  u.aguarde(1000)
  escreva("mas nao com luz mas com ambiçao fossilizada e poder corrompido.\n")
  u.aguarde(1000)
  escreva("Cada parede e cravejada de ossos banhados a ouro.\n")
  u.aguarde(1000)
  escreva("Cada salao ecoa com canticos distorcidos de um culto que perdeu a fe.\n")
  u.aguarde(1000)
  escreva("No trono, aguarda **Eldlich, o Senhor Dourado**,\n")
  u.aguarde(1000)
  escreva("um cadaver vivo adornado como rei dos condenados,\n")
  u.aguarde(1000)
  escreva("que se recusa a morrer... e a deixar que o mundo viva.\n")
  u.aguarde(1000)
  escreva("--------------------------------------------------\n")
  u.aguarde(2500)
  limpa()

  escreva("-------------------Zaruba-------------------------\n")
  escreva("Finalmente chegamos ", nomeDoPersonagem, ".\n")
  u.aguarde(1000)
  escreva("Com os fragmentos da pedra da luz temos uma chance.\n")
  u.aguarde(1000)
  escreva("Os servos nem vivos nem mortos, mas de carne e ouro vieram nos receber.")
  u.aguarde(2500)
  limpa()
  gerarInimigo()
  escreva("Hora de ir para a sala do trono.\n")
  gerarBossDaRegiao()

}
funcao recompensasOuAlgoAssim(){
  inteiro acharRecompensa = u.sorteia(0,1)
  se(acharRecompensa > 0){
    inteiro encontro
    escreva("Apos seusesforcos por Eldoria é hora de escolher uma recompensa: \n")
    escreva("Digite 1 para descansar(recuperar vida) \t|\t Digite 2 para ganhar experiencia.\n")
    leia(encontro)
    enquanto(encontro < 1 e encontro > 2){
      escreva("Opcao inválida tente noavemente, as opcoes valida sao: 1 e 2.\n")
    }
    escolha(encontro){
      caso 1:
        escreva("Voce encontrou vestigios de um acampamento, descanse um pouco.\n")
        vida+= nivel*20
      pare
      caso 2:
        escreva("Voce encontrou anotacoes sobre os poderes de Devastador, o sabio aprende com as experiencias do passado.\n")
        experiencia += 5
      pare
    }
  }
}
funcao atributoLivre(){
  

  inteiro atributoMelhorar
  escreva("Escolha um atributo a melhorar(+",nivel, ".\n")
  escreva("1 - Vida\n")
  escreva("2 - Ataque\n")
  escreva("3 - Defesa\n")
  escreva("4 - Agilidade\n")
  escreva("Digite o numero da opcao escolhida: ")
  leia(atributoMelhorar)
  enquanto(atributoMelhorar < 1 e atributoMelhorar > 4){
    escreva("Opcao invalida, digite um numero de 1 a 4.\n")
    leia(atributoMelhorar)
  }
  escolha(atributoMelhorar){
    caso 1:
      mostrarAtributos()
      escreva("Voce escolhou aumentar sua vida.\n")
      vida+=nivel
      escreva("Valor atualizado:\n")
      mostrarAtributos()
    pare
    caso 2:
      mostrarAtributos()
      escreva("Voce escolhou aumentar seu ataque\n.")
      ataque+=nivel
      escreva("Valor atualizado:\n")
      mostrarAtributos()
    pare
    caso 3:
      mostrarAtributos()
      escreva("Voce escolhou aumentar seu defesa\n.")
      defesa+=nivel
      escreva("Valor atualizado:\n")
      mostrarAtributos()
    pare
    caso 4:
      mostrarAtributos()
      escreva("Voce escolhou aumentar sua agilidade\n.")
      agilidade+=nivel
      escreva("Valor atualizado:\n")
      mostrarAtributos()
    pare
  }
}
funcao ganharPocao(){
  inteiro adquirirPocao = u.sorteia(0,1)

  se(adquirirPocao > 0){
    inteiro usarPocao = 0
    escreva("Voce encontrou uma pocao capaz de te curar por completo.\n")
    pocaoEmPosse += 1
    escreva(nomeDoPersonagem, " possui: ", pocaoEmPosse, "pocoes.\n")
    escreva("Digite 1 para usa-la, dois para guardar pocao para uso futuro.")
    leia(usarPocao)
    enquanto(usarPocao <1 e usarPocao > 2){
      escreva("Opcao invalida tente novamente.\n")
    }
    se(usarPocao == 1 e pocaoEmPosse > 0){
      pocaoEmPosse -= 1
      vida = vidaMaxima
      escreva("Vida de ", nomeDoPersonagem, ": ", vida, " HP.\n")
    }senao se(usarPocao == 2){
      escreva(nomeDoPersonagem, "guardou a pocao.\n")
    }
    
  }
}
funcao pocaoDisponivel(){
  inteiro usarPocao = 0
  se(pocaoEmPosse > 0){
    escreva("Deseja usar uma pocao antes de proseguir?\n")
    escreva("Digite 1 para usar uma pocao.\n")
    escreva("Digite 2 para manter a pocao.\n")
    leia(usarPocao)
    enquanto(usarPocao < 1 e usarPocao > 2){
      escreva("Opcao invalida. As opcoes validas são 1 e 2.\n")
    }
    se(usarPocao == 1){
      pocaoEmPosse -= 1
      escreva(nomeDoPersonagem, "usou uma pocao.\n")
      vida = vidaMaxima
      escreva(nomeDoPersonagem, " Vida: ", vida, ".\n")
    }senao se(usarPocao == 2){
      escreva(nomeDoPersonagem, " nao usa a pocao.\n")
    }
  }
}
funcao campanha(){

  escreva("\nHa muito tempo, no Reino de Eldoria, a paz era mantida pela mistica Pedra da Luz, protegida pelos Anciaos do Castelo Dourado.\n")
  u.aguarde(1000)

  escreva("\nUm dia, uma forca sombria conhecida como Eldlich, agora conhecido como o \"Devastador\" invadiu o reino,\n")
  u.aguarde(1000)

  escreva("\nroubando a reliquia sagrada e mergulhando as terras em trevas e caos.\n")
  u.aguarde(1000)

  escreva("\nVilas foram saqueadas, florestas corrompidas, e criaturas sombrias come?aram a vagar pelas regioes.\n")
  u.aguarde(1000)

  escreva("\nDiante da crise, uma antiga profecia se cumpriu: um heroi escolhido surgira das sombras para restaurar a luz.\n")
  u.aguarde(1000)

  escreva("\nVoce e esse heroi.\n")
  u.aguarde(1000)

  escreva("\nZaruba: Sendo mais honesto voce pode se tornar esse heroi por enquanto e so que voce e o unico tentando.\n")
  u.aguarde(3000)
  limpa()

  escreva("\nSua miss?o eh atravessar oito regioes dominadas pelo mal,\n")
  u.aguarde(1000)

  escreva("\nenfrentando inimigos, evoluindo suas habilidades e se preparando para confrontar O Devastador no Castelo Dourado.\n")
  u.aguarde(1000)

  escreva("\nA jornada sera repleta de perigos, escolhas e batalhas. Seu destino e o de Eldoria est?o entrela?ados.\n")
  u.aguarde(4000)
  limpa()

  introducaoDaRegiao()

}
funcao turnoDeBatalhaSimples(){
  inteiro defesaOriginal = defesa
  pocaoDisponivel()
    enquanto(vida > 0 e vidaDoInimigo > 0){
      statusDeBatalha()
        escreva("Turno do jogador\n")
        escreva("1 - Atacar\n2 - Defender\nEscolha: ")
        defesa = defesaOriginal
        inteiro acao
        leia(acao)
        enquanto(acao < 1 e acao > 2){
          escreva("Opcao invalida digite 1 ou 2.\n")
          leia(acao)
        }
        se (acao == 1) {
            inteiro danoCausado = ataque - inimigoDEF
            se (danoCausado < 0) {
                danoCausado = 0
            }
            vidaDoInimigo = vidaDoInimigo - danoCausado
            escreva("Você causou ", danoCausado, " de dano.\n")
        } senao se (acao == 2) {
            escreva("Você se defendeu e recebeu menos dano.\n")
            defesa += 5
        }

        se (vidaDoInimigo > 0) {
            escreva("Turno do inimigo\n")
            inteiro danoRecebido = inimigoATK - defesa
            se (danoRecebido < 0) {
                danoRecebido = 0
            }
            vida = vida - danoRecebido
            escreva("Você recebeu ", danoRecebido, " de dano.\n")
        }
    }
    se (vida <= 0) {
        escreva("Você foi derrotado...\n")
    } senao {
        escreva("Inimigo derrotado!\n")
        ganharExperiencia(ganhoDeExperiencia)
        recompensasOuAlgoAssim()
        adquirirPocao()
    }
    
  }
funcao batalhaGrandeGabongaV2(){
    pocaoDisponivel()
    inteiro defesaOriginal = defesa

    enquanto(vida > 0 ou vidaDoInimigo > 0){
      statusDeBatalha()
        escreva("Turno do jogador\n")
        escreva("1 - Atacar\n2 - Defender\nEscolha: ")
        defesa = defesaOriginal
        inteiro acao
        leia(acao) 
        se (acao == 1) {
            inteiro danoCausado = ataque - inimigoDEF
            se (danoCausado < 0) {
                danoCausado = 0
            }
            vidaDoInimigo = vidaDoInimigo - danoCausado
            escreva("Você causou ", danoCausado, " de dano.\n")
        } senao se (acao == 2) {
            escreva("Você se defendeu e recebeu menos dano.\n")
            defesa += 5
        }
      se(vidaDoInimigo <= 10 e nomeDoInimigoAtual == "Goblin Motoqueiro, Grande Gabonga"){
        escreva("Grande Gabonga esta desesperado soltou as amarras da besta que usa como montoria.\n")
        u.aguarde(4000)
        limpa()
        escreva("Agora voce enfrentara  a Besta Enlouquecida dos Goblins.\n")
        u.aguarde(4000)
        limpa()

        nomeDoInimigoAtual = "Besta Enlouquecida dos Goblins"
        vidaDoInimigo += 10
        pontosDeAcaoInimigo += 5
        inimigoATK += nivelDoBoss
        inimigoDEF += nivelDoBoss
        inimigoAGI += nivelDoBoss
      }
      se(vidaDoInimigo > 0) {
        escreva("Turno do inimigo\n")
        inteiro danoRecebido = inimigoATK - defesa
        se (danoRecebido < 0) {
            danoRecebido = 0
        }
          vida = vida - danoRecebido
          escreva("Você recebeu ", danoRecebido, " de dano.\n")
        }
    }
    }
}
funcao batalhaEldlichV2(){
  pocaoDisponivel()
  inteiro defesaOriginal = defesa

  escreva("Voce entra na sala do trono, onde o Senhor Dourado reina.\n")
  u.aguarde(1000)
  escreva("Um monstro o qual o poder nega a morte e a vida e torna tudo em ouro com um toque.\n")
  u.aguarde(1000)
  escreva("-------------------------------Eldlich, o Devastador------------------------------\n")
  escreva("Outro aspirante a heroi?\n")
  u.aguarde(1000)
  escreva("Voce vai ser so mais uma estatua neste castelo.\n")
  u.aguarde(2000)
  limpa()

    enquanto(vida > 0 e vidaDoInimigo > 0){
        statusDeBatalha()
        escreva("Turno do jogador\n")
        escreva("1 - Atacar\n2 - Defender\nEscolha: ")
        defesa = defesaOriginal
        inteiro acao
        leia(acao)
        enquanto(acao < 1 e acao > 2){
          escreva("Opacao inavalida, digite 1 ou 2.\n")
          leia()
        } 
        se (acao == 1) {
            inteiro danoCausado = ataque - inimigoDEF
            se (danoCausado < 0) {
                danoCausado = 0
            }
            vidaDoInimigo = vidaDoInimigo - danoCausado
            escreva("Você causou ", danoCausado, " de dano.\n")
        } senao se (acao == 2) {
            escreva("Você se defendeu e recebeu menos dano.\n")
            defesa += 5
        }

        se (vidaDoInimigo > 0) {
          vidaDoInimigo += 2
            escreva("Turno do inimigo\n")
            inteiro danoRecebido = inimigoATK - defesa
            se (danoRecebido < 0) {
                danoRecebido = 0
            }
            vida = vida - danoRecebido
            escreva("Você recebeu ", danoRecebido, " de dano.\n")
        }
      
    
    se(vidaDoInimigo <= 10 e nomeDoInimigoAtual == "Eldlich, O Devastador"){
      escreva("Voce acha que me ferir serve de alguam coisa?\n")
      u.aguarde(4000)
      limpa()
      escreva("Eldlich está em furia.\n")
      u.aguarde(4000)
      limpa()

      nomeDoInimigoAtual = "Eldlich, O Senhor Dourado Enlouqecido"
      vidaDoInimigo += 10
      pontosDeAcaoInimigo += 5
      inimigoATK += nivelDoBoss
      inimigoDEF += nivelDoBoss
      inimigoAGI += nivelDoBoss
    }
    se(vidaDoInimigo <=5 e nomeDoInimigoAtual == "Eldlich, O Senhor Dourado Enlouqecido"){
      escreva("Voce fez Eldlich se lembrar da dor da vida.\n")
      u.aguarde(1000)
      escreva("----------------Eldlich--------------------\n")
      escreva("Que sensacao desagradavel.\n")
      u.aguarde(2000)
      escreva("Voce vai pagar por isso ", nomeDoPersonagem, "!")
      u.aguarde(2000)
      limpa()
      escreva("Usando de sua magia nefasta Eldlich junta todo ouro em uma estatua viva colossal.\n")
      u.aguarde(3000)
      limpa()

      nomeDoInimigoAtual = "Anjo Caido da Terra Dourada"
      vidaDoInimigo += 2
      pontosDeAcaoInimigo += 2
      inimigoATK += 5
      inimigoDEF += 5
      inimigoAGI += 5

    }
    se (vida <= 0) {
        escreva("Você foi derrotado...\n")
    } senao {
        escreva("Inimigo derrotado!\n")
        ganharExperiencia(ganhoDeExperiencia)
        mostrarCreditos()
    }
  }
}
