programa {
  inclua biblioteca Util --> u
                      //0                   1                    2                  3                  4                      5           6                      7
  cadeia regioes[8] = {"VILA DOS COMECOS", "FLORESTA DA NEVOA", "VILA ABANDONADA", "CAVERNA SOMBRIA", "LABIRINTO ESCONDIDO", "COLISEU", "PANTANO DOS LAMENTOS", "CASTELO DOURADO"}
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

  cadeia nomeDeBoss[8] ={"Goblin Motoqueiro, Grande Gabonga", "Boss 1", "Boss 2", "Boss 3", "Boss 4", "Boss 5", "Boss 6", "Eldlich, O Devastador"}
  cadeia nomeDoInimigo[3] = {"Goblin Motoqueiro, Troika", "Goblin motoqueiro, Boom Mach", "Goblin motoqueiro, Dougg Atropelador"}
  cadeia nomeDoInimigoAtual

  inteiro nivelDoInimigo
  inteiro vidaDoInimigo
  inteiro inimigoATK
  inteiro inimigoDEF
  inteiro inimigoAGI
  inteiro ganhoDeExperiencia

  // A??es de combate

  inteiro custoAcao = 0
  inteiro custoAtacar = 3
  inteiro custoDefesa = 2
  inteiro custoHabilidade = 7

    // Fun??o principal
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
    
  // Fun??o para exibir o menu inicial e retornar a op??o escolhida
funcao inteiro menuDeInicializacao() {
  inteiro opcao = 0
   
  escreva("\nBem vindo a Eldoria Saga\n")
  escreva("--1: Novo jogo--\n")
  escreva("--2: Creditos--\n")
  escreva("--3: Sair--\n")
  escreva("Escolha uma opcao: ")

  // Garante que a leitura seja feita pelo menos uma vez
  leia(opcao)
  se(opcao < 1 ou opcao > 3) {
    escreva("Opcao invalida! Tente novamente: ")
    leia(opcao)
  }
        
  retorne opcao
}
    
// Fun??o para criar um novo personagem
funcao criarPersonagem() {

  escreva("\n--- Criacao de Personagem ---\n")
  escreva("Digite o nome do seu personagem: ")
  leia(nomeDoPersonagem)
  
  // Mostra menu de classes at? receber uma op??o v?lida
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
        
// Aqui voc? pode adicionar a inicializa??o dos atributos do personagem
  escreva("\nPersonagem criado com sucesso!\n")

  se(classe == "GUERREIRO"){
    vida = vida + 50
    ataque = 7
    defesa = 7
    agilidade = 1
    }
  se(classe == "MAGO"){
    vida = vida + 20
    ataque = 10
    defesa = 2
    agilidade = 3
  }
  se(classe == "ARQUEIRO"){
    vida = vida + 30
    ataque = 5
    defesa = 5
    agilidade = 5
  }
  escreva("Nome: ", nomeDoPersonagem, "\n")
  escreva("Classe: ", classe, "\n\n")
  escreva("Vida: ", vida, "\n")
  escreva("Nivel: ", nivel, "\n")
  escreva("Ataque: ", ataque, "\n")
  escreva("Defesa: ", defesa, "\n")
  escreva("Agilidade: ", agilidade, "\n")
}
    
// Fun??o para mostrar os cr?ditos
funcao mostrarCreditos() {
  escreva("\n--- Creditos ---\n")
  escreva("Desenvolvido por: Patrick-fed\n")
  escreva("Eldoria Saga v1.0\n\n")
}
    funcao subirDeNivel(){
      enquanto(experiencia >= (nivel+1)*10 e nivel < 15) {
      nivel = nivel + 1
      vida = vida + nivel
      escreva("Seu heroi subiu para o nivel: ", nivel, "\n")

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
  // Fun??o para avan?o de classe do Guerreiro
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
// Fun??o para avan?o de classe do Mago
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

// Fun??o para avan?o de classe do Arqueiro
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
  enquanto(vida >= 0 e vidaDoInimigo >= 0){
    turnoDoJogador()

    se(vidaDoInimigo <= 0){
      escreva("Parabens, ", nomeDoPersonagem, " derrotou o inimigo.\n")
      ganharExperiencia(ganhoDeExperiencia)
    pare
    }

       //turno do inimigo
    turnoDoInimigo()
    se(vida <= 0){
      escreva(nomeDoPersonagem, " foi derrotado.\n")
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
    statusDeBatalha()
    mostrarOpcoes()

    inteiro acao
    leia(acao)

    escreva("Turno do jogador\n")
      se(acao == 1){
        executarAcao(custoAtacar, "atacar")
      }senao se(acao == 2){
        executarAcao(custoDefesa, "defender")
      }senao se(acao == 3){
        executarAcao(custoHabilidade, "habilidade")
      }senao se(acao == 4){
        escreva("Voce encerrou seu turno.\n")
        pare
      }senao{
        escreva("Opcao invalida tente novamente.\n")
        leia(acao)
      }

      se(vidaDoInimigo <= 0){
        pare
      }

      //Mecanica de custos
      se(pontosDeAcao > 0){
        escreva("Deseja continuar seu turno: 1 - Sim | 2 - Nao.\n")
        inteiro continuar
        leia(continuar)

        se(continuar == 2){
          pare
        }
      }senao{
        escreva("Voce nao tem pontos de acao o suficiente para continuar.\n")
      }
  }
}
funcao turnoDoInimigo(){
  escreva("\n------------------------\n")
  escreva("Turno do inimigo\n")
  enquanto(vidaDoInimigo > 0 e pontosDeAcaoInimigo > 0){
    inteiro acaoDoInimigo = u.sorteia(1,3)

    se(acaoDoInimigo == 1){
      custoAcao = custoAtacar
      executarAcaoInimigo(custoAcao, "atacar")
    }senao se(acaoDoInimigo == 2){
      custoAcao = custoDefesa
      executarAcaoInimigo(custoAcao, "denfender")
    }senao se(acaoDoInimigo == 3){
      custoAcao = custoHabilidade
      executarAcaoInimigo(custoAcao, "habilidade")
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
    escreva(nomeDoPersonagem, " nao tem pontos de acao o suficiente para esta acao o excedente de: ", excedente, " serao pontos de acao bonus do inimigo.\n")
  }senao{
    pontosDeAcao -= custo
  }
  se(tipoAcao == "atacar"){
    inteiro danoCausado = ataque - inimigoDEF
    se(danoCausado < 0){
      danoCausado = 0
    }
    vidaDoInimigo -= danoCausado
    escreva(nomeDoPersonagem, ", atacou causando: ", danoCausado, " de dano.\n")
  }senao se(tipoAcao == "defender"){
    //logica de defesa, s? bloquear o ataque talvez.
    //Um escudo que use a defesa como vida é mais simples.
  }senao se(tipoAcao == "habilidade"){
    inteiro danoCausado = (ataque*2) - inimigoDEF
    se(danoCausado < 0){
      danoCausado = 0
    }
    vidaDoInimigo -= danoCausado
    escreva(nomeDoPersonagem, " usou seu ataque mais forte causando: ", danoCausado, " de dano.\n" )
  }
  se(excedente > 0){
    escreva("O inimigo ganhou: ", excedente, " pontos extras.\n")
  }
}
funcao executarAcaoInimigo(inteiro custo, cadeia tipoAcao){
  inteiro excedente = 0

  se(pontosDeAcaoInimigo < custo){
    excedente = custo - pontosDeAcaoInimigo
    pontosDeAcaoInimigo = 0
    pontosDeAcao += excedente
    escreva("O inimigo realizou uma acao sem ter pontos o suficientes o excedente de: ", excedente, "sera seu bonus para o proximo turno.\n")
  }senao{
    pontosDeAcaoInimigo -= custo
  }

  se(tipoAcao == "atacar"){
    inteiro danoAoPersonagem = inimigoATK - defesa
    se(danoAoPersonagem < 0){
      danoAoPersonagem = 0
    }
    vida -= danoAoPersonagem
    escreva(nomeDoPersonagem, " sofreu: ", danoAoPersonagem, " de dano.\n")
  }senao se(tipoAcao == "defender"){
    escreva("O inimigo se defendeu.\n")
  }senao se(tipoAcao == "habilidade"){
    inteiro danoAoPersonagem = (inimigoATK*2) - defesa
    se(danoAoPersonagem < 0){
      danoAoPersonagem = 0
    }
    vida -= danoAoPersonagem
    escreva(nomeDoPersonagem, " foi atingido por um ataque especial e sofreu: ", danoAoPersonagem, " de dano.\n")
  }
  se(excedente > 0){
    escreva("Voce ganhou: ", excedente, " pontos extras para o proximo turno.\n")
  }
}
funcao statusDeBatalha(){
  escreva("\n-----situacao atual da batalha------\n")
  escreva(nomeDoPersonagem, ", Vida: ", vida, "  \n")
  escreva("Seus pontos de acao: ",pontosDeAcao, "\n")
  escreva("\n----------------------------------------\n")
  escreva(nomeDoInimigoAtual, ", Vida do inimigo: ", vidaDoInimigo, "\n")
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
    inteiro seletorDeInimigos = u.sorteia(0,2)
    nomeDoInimigoAtual = nomeDoInimigo[seletorDeInimigos]
    nivelDoInimigo = nivel
    vidaDoInimigo = 20 + nivel * 5
    inimigoATK = 5 + nivel
    inimigoDEF = 2 + nivel
    inimigoAGI = 1 + nivel
    ganhoDeExperiencia = nivelDoInimigo + 1

    turnoDeBatalha()
}
funcao gerarBossDaRegiao(){
  se(regiaoAtual == 0){
    nomeDeBoss[0]
    nivelDoInimigo = nivel + 2
    vidaDoInimigo = 20 + nivelDoInimigo * 5
    inimigoATK = 5
    inimigoDEF = 5
    inimigoAGI = 5

    se(vidaDoInimigo < 10 e nomeDeBoss[0]=="Goblin Motoqueiro, Grande Gabonga"){
      nomeDeBoss[0] = "Besta Enloquecida dos Goblins"
      vidaDoInimigo += 10
      inimigoATK += nivelDoInimigo
      inimigoDEF += nivelDoInimigo
      inimigoAGI += nivelDoInimigo
    }

    //um contador ou flag para controlar se o player ja derrotou esse boss, fragmentoDaPedraDaLuz talvez.
    //logica do 1? boss aqui Goblin Motoqueiro, Grande Gabonga
  }senao se(regiaoAtual == 1){
    //logica do 2? boss aqui sem nome ainda
  }senao se(regiaoAtual == 2){
    //mesma coisa
  }senao se(regiaoAtual == 3){

  }senao se(regiaoAtual == 4){

  }senao se(regiaoAtual == 5){

  }senao se(regiaoAtual == 6){

  }senao se(regiaoAtual == 7){
    //Boss final
    //Pensando melhor n?o aqui.
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
      // pensar na logica aqui.
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
    // pensar em como fazer aqui, escolha provavelmente.
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
        
  // Informa??es de navega??o
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
  

funcao campanha(){
  escreva("Ha muito tempo, no Reino de Eldoria, a paz era mantida pela m?stica Pedra da Luz, protegida pelos Anciaos do Castelo Dourado.\n")
  u.aguarde(3000)

  escreva("\nUm dia, uma forca sombria conhecida como O Devastador invadiu o reino, roubando a rel?quia sagrada e mergulhando as terras em trevas e caos.\n")
  u.aguarde(3000)

  escreva("\nVilas foram saqueadas, florestas corrompidas, e criaturas sombrias começaram a vagar pelas regioes.\n")
  u.aguarde(3000)

  escreva("\nDiante da crise, uma antiga profecia se cumpriu: um heroi escolhido surgira das sombras para restaurar a luz.\n")
  u.aguarde(3000)

  escreva("\nVoce e esse heroi.\n")
  u.aguarde(3000)

  escreva("\nZaruba: Sendo mais honesto voce pode se tornar esse heroi por enquanto e so que voce e o unico tentando.\n")
  u.aguarde(2500)
  limpa()

  escreva("\nSua missão eh atravessar oito regioes dominadas pelo mal,\n")
  u.aguarde(3000)

  escreva("\nenfrentando inimigos, evoluindo suas habilidades e se preparando para confrontar O Devastador no Castelo Dourado.\n")
  u.aguarde

  escreva("\nA jornada sera repleta de perigos, escolhas e batalhas. Seu destino e o de Eldoria estão entrelaçados.\n")
  u.aguarde(3000)
  limpa()

  escreva(nomeDoPersonagem, " voce acorda na mesma casa de que sempre te abrigou,\n")
  escreva(" mas diferente das outras vezes voce nao acorda com o nascer do sol.\n")
  escreva("E sim com um calafrio, vendo uma chama esverdeada no canto do olho.\n")
  u.aguarde(3000)
  limpa()

  //Colocar uma asci do zaruba aqui.
  escreva("Eles te acharam não pode mais fugir do chamado, \"heroi\".")
  u.aguarde(3000)
  limpa()

  escreva("Não sou heroi, quem tinha esse titulo abandonou Eldoria a tempos.\n")
  u.aguarde(3000)
  limpa()

  //zaruba
  escreva("Então não ouvir o meu chamado a batalha?\n")
  u.aguarde(3000)
  limpa()

  escreva("Vou atender a seu chamado Zaruba, diferente de herois nao pretendo abandonar o mundo.\n")
  u.aguarde(3500)
  limpa()

  //zaruba
  escreva("Otimo porque os menores e mais barulhentos dos males estão vindo.\n")
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
  u.aguarde(3.500)
  limpa()

  gerarInimigo()
  
  }
}