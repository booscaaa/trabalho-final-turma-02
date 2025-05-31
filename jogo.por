programa {
  inclua biblioteca Util --> u
                      //0                   1                    2                  3                  4                      5           6                      7
  cadeia regioes[8] = {"VILA DOS COMEÇOS", "FLORESTA DA NEVOA", "VILA ABANDONADA", "CAVERNA SOMBRIA", "LABIRINTO ESCONDIDO", "COLISEU", "PANTANO DOS LAMENTOS", "CASTELO DOURADO"}
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

  cadeia nomeDoInimigo[3] = {"Goblin Motoqueiro, Troika", "Goblin motoqueiro, Boom Mach", "Goblin motoqueiro, Dougg Atropelador"} // Criar boss da região Big Gabonga
  cadeia nomeDoInimigoAtual

  inteiro nivelDoInimigo
  inteiro vidaDoInimigo
  inteiro inimigoATK
  inteiro inimigoDEF
  inteiro inimigoAGI

  // Aушes de combate

  inteiro custoAcao = 0
  inteiro custoAtacar = 3
  inteiro custoDefesa = 2
  inteiro custoHabilidade = 6

    // Funусo principal
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
            escreva("Opусo invрlida! Tente novamente.\n")
          pare
      }
    }
  }
    
  // Funусo para exibir o menu inicial e retornar a opусo escolhida
funcao inteiro menuDeInicializacao() {
  inteiro opcao = 0
   
  escreva("\nBem vindo a Eldoria Saga\n")
  escreva("--1: Novo jogo--\n")
  escreva("--2: Crжditos--\n")
  escreva("--3: Sair--\n")
  escreva("Escolha uma opусo: ")

  // Garante que a leitura seja feita pelo menos uma vez
  leia(opcao)
  se(opcao < 1 ou opcao > 3) {
    escreva("Opусo invрlida! Tente novamente: ")
    leia(opcao)
  }
        
  retorne opcao
}
    
// Funусo para criar um novo personagem
funcao criarPersonagem() {

  escreva("\n--- Criação de Personagem ---\n")
  escreva("Digite o nome do seu personagem: ")
  leia(nomeDoPersonagem)
  
  // Mostra menu de classes atж receber uma opусo vрlida
  escreva("\nEscolha sua classe:\n")
  escreva("1 - GUERREIRO, Foco em vida e defesa. Ideal para resistЖncia prolongada.\n")
  escreva("2 - MAGO, Ataque poderoso, porem fragil. Especialista em dano rapido.\n")
  escreva("3 - ARQUEIRO, Equilibrado entre ataque e mobilidade. Versatil.\n")
  escreva("Opção: ")
  
  leia(opcaoDeClase)
  enquanto(opcaoDeClase < 1 ou opcaoDeClase > 3) {
    escreva("Opção invalida! Tente novamente: ")
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
        
// Aqui vocЖ pode adicionar a inicializaусo dos atributos do personagem
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
  escreva("Nível: ", nivel, "\n")
  escreva("Ataque: ", ataque, "\n")
  escreva("Defesa: ", defesa, "\n")
  escreva("Agilidade: ", agilidade, "\n")
}
    
// Funусo para mostrar os crжditos
funcao mostrarCreditos() {
  escreva("\n--- Créditos ---\n")
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
        caso "CAÇADOR":
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
        caso "PALADINO DO DRAGÃO GIGANTE":
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
        caso "CAÇADOR DE ESTRELAS":
          ataque += 4
          defesa += 3
          agilidade += 5

          afinidadeLUZ += 40
          afinidadeVENTO += 15
          afinidadeFOGO += 15
        pare
        caso "CAÇADOR SOMBRIO":
          ataque += 5
          defesa += 3
          agilidade += 4

          afinidadeESCURIDAO += 30
          afinidadeVENTO += 10
          afinidadeNEUTRO += 30
        pare
        caso "CAÇADOR ANCESTRAL":
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
        caso "GUARDIÃO CELESTE":
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
  escreva("ExperiЖncia: ", experiencia, " / ", (nivel+1)*10, "\n")
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
      caso "CAÇADOR":
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
  // Funусo para avanуo de classe do Guerreiro
funcao avancoDeClasseGuerreiro() {
    inteiro opcaoDeAvanco
    
    escreva(nomeDoPersonagem, " alcançou o nьvel maximo na sua classe inicial, agora escolha uma das opções de avanço de classe.\n")
    escreva("1 - CAVALEIRO\n")
    escreva("Classe que evolui diretamente do Guerreiro, o Cavaleiro mantжm um bom equilьbrio entre ataque e defesa.\n")
    escreva("╔ uma escolha solida para quem quer enfrentar inimigos de forma direta, com força e resistЖncia parecidas.\n")
    escreva("Não se destaca em um Щnico ponto, mas e confiavel em qualquer situação.\n\n")

    escreva("2 - SAMURAI\n")
    escreva("O Samurai foca na agilidade e no ataque. Ele causa mais dano e se move com mais rapidez,\n")
    escreva("mas tem uma defesa um pouco mais baixa.\n")
    escreva("╔ ideal para quem prefere atacar primeiro e rapido, mesmo que isso signifique receber mais dano se for atingido.\n\n")

    escreva("3 - PALADINO\n")
    escreva("Classe voltada para a defesa. O Paladino resiste bem aos ataques e consegue aguentar mais tempo em combate.\n")
    escreva("Em compensação, seu ataque não e tão forte.\n")
    escreva("╔ uma boa escolha para quem prefere jogar de forma segura e com mais proteção.\n")
    escreva("Digite o nЩmero de seu avanço de classe escolhido: \n")
    leia(opcaoDeAvanco)
    
    enquanto(opcaoDeAvanco < 1 ou opcaoDeAvanco > 3) {
        escreva("Opção invalida, tente novamente. As opções validas são 1, 2 e 3.\n")
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
    
    escreva(nomeDoPersonagem, ", agora é um: ", classe, ".\n")
    mostrarAtributos()
}

funcao avancoDeClasseCavaleiro(){
  inteiro opcaoDeAvancoFinal

  escreva(nomeDoPersonagem, " alcançou o nível maximo na sua classe atual, agora escolha uma das opções de avanço de classe. Este será seu ultimo avanço de classe.\n")
  
  escreva("1 - CAVALEIRO DO SUBMUNDO\n")
  escreva("Um guerreiro que abraçou as chamas e as sombras da batalha.\n")
  escreva("Focado em ataque, o Cavaleiro do Submundo utiliza fogo e escuridão para causar dano intenso aos inimigos.\n")
  escreva("Sua defesa é menor, mas compensa com habilidades ofensivas poderosas.\n")
  escreva("Ideal para quem busca dominar o campo com força bruta e energia obscura.\n\n")

  escreva("2 - CAVALEIRO DA CENTELHA\n")
  escreva("Um cavaleiro que canaliza a Centelha da Alma como fonte de energia e determinação.\n")
  escreva("Equilibra defesa e agilidade, utilizando eletricidade (representando o vento) para atacar e o poder da terra para se proteger.\n")
  escreva("Perfeito para quem procura versatilidade em combate, mantendo mobilidade sem abrir mão da proteção.\n\n")

  escreva("3 - CAVALEIRO RADIANTE\n")
  escreva("A personificação da luz em forma de guerreiro. O Cavaleiro Radiante domina o equilьbrio entre ataque, defesa e agilidade.\n")
  escreva("Usa habilidades baseadas em luz para combater inimigos se proteger, mantendo-se firme em qualquer situação.\n")
  escreva("Uma escolha excelente para quem busca estabilidade e poder em igual medida.\n")
  escreva("Digite o nЩmero de seu avanço de classe escolhido: \n")

  leia(opcaoDeAvancoFinal)
  
  enquanto(opcaoDeAvancoFinal < 1 ou opcaoDeAvancoFinal > 3){
    escreva("Opção inválida, tente novamente. As opções validas sao 1, 2 e 3.\n")
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

  escreva(nomeDoPersonagem, ", agora é um: ", classe, ".\n")
  mostrarAtributos()

}
funcao avancoDeClasseSamurai(){
  inteiro opcaoDeAvancoFinal

  escreva(nomeDoPersonagem, " alcançou o nivel maximo na sua classe atual, agora escolha uma das opções de avanço de classe. Este será seu ultimo avanço de classe.\n")
  
  escreva("1 - SHOGUN\n")
  escreva("Um lider de guerra que mantem o equilibrio entre força e velocidade.\n")
  escreva("O Shogun e um mestre do combate fisico, utilizando a terra como base para manter-se firme\n")
  escreva("enquanto desfere ataques rápidos e precisos. Não tão veloz quanto outros, mas mais resistente.\n")
  escreva("Ideal para quem quer potência ofensiva sem abrir mão de alguma estabilidade.\n\n")

  escreva("2 - NITORYUU\n")
  escreva("O espadachim que domina duas laminas em perfeita harmonia com o vento.\n")
  escreva("O Nitoryuu ataca com velocidade extrema, sacrificando quase toda sua defesa em troca de dano.\n")
  escreva("Sua maestria permite realizar ataques duplos e se mover com uma leveza quase sobrenatural.\n")
  escreva("Excelente escolha para quem prefere ofensiva total e combate veloz.\n\n")

  escreva("3 - RONNIN\n")  
  escreva("Um guerreiro errante que domina o combate fьsico com disciplina e foco.\n")
  escreva("O Ronnin e ofensivo, mas não tão extremo quanto outras opções. Sua força vem da constancia e precisão.\n")
  escreva("Mantem um leve equilibrio, mas sempre prioriza causar dano direto com suas habilidades com a espada.\n")
  escreva("Recomendado para quem quer um atacante puro, porem mais controlado.\n")
  escreva("Digite o numero de seu avanço de classe escolhido: \n")


  leia(opcaoDeAvancoFinal)
  
  enquanto(opcaoDeAvancoFinal < 1 ou opcaoDeAvancoFinal > 3){
    escreva("Opção invalida, tente novamente. As opções validas são 1, 2 e 3.\n")
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

  escreva(nomeDoPersonagem, " alcançou o nivel maximo na sua classe atual, agora escolha uma das opções de avanço de classe. Este sera seu ultimo avanço de classe.\n")
  
  escreva("1 - PARAGON\n")
  escreva("A personificação da perfeição e do heroismo. O Paragon eh o paladino idealizado, simbolo de equilibrio.\n")
  escreva("Domina de forma moderada todos os elementos ? agua, fogo, vento, terra, luz, escuridão e o neutro ?,\n")
  escreva("e mantem um excelente balanço entre ataque, defesa e agilidade.\n")
  escreva("Recomendado para quem busca versatilidade total e quer ser um verdadeiro campeão da justiça.\n\n")

  escreva("2 - PALADINO DO DRAG├O GIGANTE\n")
  escreva("Conhecidos como Paladinos de Fellgrand, são cavaleiros sagrados que fizeram um juramento ao grande dragão ancestral.\n")
  escreva("Focados em defesa, podem invocar parte do poder de Fellgrand para feitos incrьveis em combate.\n")
  escreva("Tem afinidade especial com os elementos fogo, vento e agua, canalizados atravжs das bençãos draconicas.\n")
  escreva("Perfeitos para quem deseja ser um bastião resistente, com o poder dos dragшes ao seu lado.\n\n")

  escreva("3 - PALADINO DE NEMESIS\n")
  escreva("Defensores absolutos da justiça, acreditam que todo bem ou mal deve ser retribuьdo na mesma medida.\n")
  escreva("Entre os paladinos, são os que possuem a maior defesa, capazes de resistir a quase qualquer golpe.\n")
  escreva("Especializados em contra-ataques, devolvem o dano recebido com força equivalente.\n")
  escreva("TЖm domьnio sobre os elementos agua e terra, simbolizando firmeza e equilьbrio.\n")
  escreva("Indicados para quem prefere enfrentar o inimigo de forma impenetravel e implacavel.\n")
  escreva("Digite o nЩmero de seu avanço de classe escolhido: \n")


  leia(opcaoDeAvancoFinal)
  
  enquanto(opcaoDeAvancoFinal < 1 ou opcaoDeAvancoFinal > 3){
    escreva("Opção inválida, tente novamente. As opções válidas são 1, 2 e 3.\n")
    leia(opcaoDeAvancoFinal)
  }

  escolha(opcaoDeAvancoFinal){
    caso 1:
      classe = "PARAGON"
    pare
    caso 2:
      classe = "PALADINO DO DRAGÃO GIGANTE"
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

  escreva(nomeDoPersonagem, " alcançou o nьvel maximo na sua classe atual, agora escolha uma das opções de avanço de classe. Este sera seu ultimo avanço de classe.\n")
  
  escreva("1 - ARQUIMAGO\n")
  escreva("O mestre absoluto da magia elemental. O Arquimago atinge nьveis altьssimos de poder ofensivo,\n")
  escreva("com domьnio sobre os elementos agua, fogo, terra, vento e neutro.\n")
  escreva("Sua defesa eh baixa, mas seu ataque destrutivo compensa com facilidade.\n")
  escreva("Ideal para quem quer causar grandes danos com uma variedade de feitiços elementais.\n\n")

  escreva("2 - MAGO DO FOGO RAPIDO\n")
  escreva("Um especialista em conjuração veloz e destruição imediata. Seu corpo e fragil, ainda mais que o do Arquimago,\n")
  escreva("mas sua agilidade e dano explosivo o tornam mortal em combate.\n")
  escreva("Foca em magias de fogo, vento e luz, queimando tudo Я sua frente antes mesmo de ser tocado.\n")
  escreva("Perfeito para quem prefere velocidade e impacto acima de tudo.\n\n")

  escreva("3 - SABIO\n")
  escreva("Guardião do conhecimento profundo e do equilьbrio entre forças opostas.\n")
  escreva("Embora mais equilibrado que os outros magos, ainda possui a fragilidade comum a sua classe.\n")
  escreva("Controla com maestria os poderes da luz e da escuridão, usando-os para atacar, proteger e manipular o campo de batalha.\n")
  escreva("Uma boa escolha para quem busca versatilidade magica e sabedoria arcana.\n")
  escreva("Digite o numero de seu avanço de classe escolhido: \n")
  
  leia(opcaoDeAvancoFinal)
  
  enquanto(opcaoDeAvancoFinal < 1 ou opcaoDeAvancoFinal > 3){
  escreva("Opção invalida, tente novamente. As opções validas são 1, 2 e 3.\n")
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

  escreva(nomeDoPersonagem, ", agora ж um: ", classe, ".\n")
  mostrarAtributos()
}
funcao avancoDeClasseOnmyoji(){
  inteiro opcaoDeAvancoFinal

  escreva(nomeDoPersonagem, " alcançou o nьvel maximo na sua classe atual, agora escolha uma das opções de avanço de classe. Este sera seu ultimo avanço de classe.\n")
  
  escreva("1 - INVOCADOR\n")
  escreva("Um mьstico que transcendeu a invocação de criaturas, passando a chamar fenomenos,\n")
  escreva("ecos do passado e milagres sobrenaturais. Sua magia e enigmatica e poderosa,\n")
  escreva("mas sua afinidade com os elementos e limitada, exceto pela escuridão e o neutro.\n")
  escreva("Escolha ideal para quem deseja dominar o campo com efeitos misteriosos e imprevisьveis.\n\n")

  escreva("2 - ESPIRITUALISTA\n")
  escreva("A continuação natural do Onmyoji tradicional, o Espiritualista invoca espьritos elementais\n")
  escreva("para lutar ao seu lado e canalizar seus poderes. Possui grande afinidade com os elementos\n")
  escreva("agua, fogo, vento, terra e escuridão, tornando-se um mestre das forças espirituais da natureza.\n")
  escreva("Uma escolha poderosa para quem valoriza o suporte e a versatilidade elemental.\n\n")

  escreva("3 - DRUIDA\n")
  escreva("Um guardião da harmonia natural, o Druida usa sua comunhão com a natureza para se fortalecer e proteger.\n")
  escreva("Especializa-se nos elementos agua, terra e luz, canalizando suas energias para curar,\n")
  escreva("defender ou devastar com a força do mundo natural.\n")
  escreva("Indicado para jogadores que buscam uma conexão profunda com a terra e o equilьbrio magico.\n")
  escreva("Digite o numero de seu avanço de classe escolhido: \n")
  
  leia(opcaoDeAvancoFinal)
  
  enquanto(opcaoDeAvancoFinal < 1 ou opcaoDeAvancoFinal > 3){
    escreva("Opçõo invalida, tente novamente. As opções validas são 1, 2 e 3.\n")
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

  escreva(nomeDoPersonagem, " alcançou o nivel maximo na sua classe atual, agora escolha uma das opções de avanço de classe. Este sera seu ultimo avanço de classe.\n")
  
  escreva("1 - SHAMAN\n")
  escreva("Um mestre das maldições e da força vital. O Shaman eh o oposto do Druida,\n")
  escreva("fortalecendo a si mesmo enquanto enfraquece seus inimigos com rituais antigos.\n")
  escreva("Manipula os elementos fogo, terra e escuridão, drenando energia e quebrando resistencias.\n")
  escreva("Ideal para quem deseja dominar o campo com maleficios e resistencia constante.\n\n")

  escreva("2 - BRUXO DO PESADELO\n")
  escreva("Um ilusionista sombrio que mergulha a mente de seus inimigos em pesadelos aterrorizantes.\n")
  escreva("Enquanto o inimigo esta indefeso, o Bruxo do Pesadelo o destrзi lentamente, sem piedade.\n")
  escreva("Seu foco esta na escuridão, mas tambжm possui certa maestria com o fogo para alimentar seus horrores.\n")
  escreva("Uma escolha excelente para quem prefere controle mental e dano psicolзgico.\n\n")

  escreva("3 - MAGO NEGRO\n")
  escreva("Diferente de todos os outros magos, o Mago Negro rompe com a fragilidade tradicional da classe.\n")
  escreva("Equilibra bem ataque e defesa, tornando-se uma ameaça sзlida e constante em campo.\n")
  escreva("Seu poder e concentrado inteiramente na escuridão, usando-a para causar destruição direta e implacavel.\n")
  escreva("Recomendado para jogadores que desejam poder bruto, com um toque de resistЖncia rara para um mago.\n")
  escreva("Digite o numero de seu avanço de classe escolhido: \n")
  
  leia(opcaoDeAvancoFinal)
  
  enquanto(opcaoDeAvancoFinal < 1 ou opcaoDeAvancoFinal > 3){
    escreva("Opçõo invalida, tente novamente. As opções validas são 1, 2 e 3.\n")
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

  escreva(nomeDoPersonagem, " alcançou o nьvel maximo na sua classe atual, agora escolha uma das opções de avançoo de classe. Este sera seu ultimo avanço de classe.\n")
  
  escreva("1 - CAÇADOR DE ESTRELAS\n")
  escreva("Um arqueiro lendario, veloz e mortal, cuja precisão e comparada ao poder de derrubar estrelas.\n")
  escreva("Combina alta agilidade e ataque com habilidades elementais de luz, vento e fogo.\n")
  escreva("Ideal para quem busca um estilo ofensivo agil e devastador, sempre em movimento.\n\n")

  escreva("2 - CAÇADOR SOMBRIO\n")
  escreva("Especialista em emboscadas e ataques nas sombras. O Caçador Sombrio domina a arte do ataque furtivo,\n")
  escreva("mantendo o equilьbrio classico dos arqueiros, mas com foco tatico e preciso.\n")
  escreva("Utiliza os elementos escuridão, vento e neutro para surpreender seus inimigos de forma letal.\n")
  escreva("Excelente para quem prefere a astЩcia e o ataque sorrateiro ao confronto direto.\n\n")

  escreva("3 - CAÇADOR ANCESTRAL\n")
  escreva("Um guerreiro conectado as forças primitivas da natureza. O Caçador Ancestral canaliza o poder da terra\n")
  escreva("em seus disparos, tornando suas flechas mais pesadas e impactantes.\n")
  escreva("Mais resistente que os outros caçadores, mas ligeiramente mais lento.\n")
  escreva("Possui afinidade com os elementos terra, luz e escuridão. Uma зtima escolha para quem busca força e estabilidade.\n")
  escreva("Digite o nЩmero de seu avanço de classe escolhido: \n")
  
  leia(opcaoDeAvancoFinal)
  
  enquanto(opcaoDeAvancoFinal < 1 ou opcaoDeAvancoFinal > 3){
    escreva("Opção inválida, tente novamente. As opções validas são 1, 2 e 3.\n")
    leia(opcaoDeAvancoFinal)
  }

  escolha(opcaoDeAvancoFinal){
    caso 1:
      classe = "CAÇADOR DE ESTRELAS"
    pare
    caso 2:
      classe = "CAÇADOR SOMBRIO"
    pare
    caso 3:
      classe = "CAÇADOR ANCESTRAL"
    pare
  }

  escreva(nomeDoPersonagem, ", agora é um: ", classe, ".\n")
  mostrarAtributos()
}
funcao avancoDeClasseAtirador(){
  inteiro opcaoDeAvancoFinal

  escreva(nomeDoPersonagem, " alcançou o nьvel maximo na sua classe atual, agora escolha uma das opçôes de avanço de classe. Este sera seu ultimo avanço de classe.\n")
  escreva("1 - ARTILHEIRO\n")
  escreva("Um mestre do armamento pesado, o Artilheiro leva o conceito de dano a um novo patamar.\n")
  escreva("Focado inteiramente no ataque, utiliza os elementos fogo e neutro para ampliar ainda mais seu poder destrutivo.\n")
  escreva("Ideal para quem prefere eliminar o inimigo antes mesmo de ser alcançado.\n\n")

  escreva("2 - ASSASSINO\n")
  escreva("Especialista em ataques fatais e silenciosos, o Assassino luta para encerrar a batalha com um Щnico golpe.\n")
  escreva("Seu estilo e rápido, letal e preciso, com afinidade com os elementos neutro, água e escuridão.\n")
  escreva("Perfeito para quem busca dano extremo com mobilidade furtiva e finalizações velozes.\n\n")

  escreva("3 - EXECUTOR CARMESIM\n")
  escreva("Um atirador cruel e implacavel, que sacrificou toda defesa em prol de velocidade e letalidade.\n")
  escreva("Equilibra bem ataque e agilidade, mas qualquer golpe recebido pode ser fatal.\n")
  escreva("Canaliza os elementos fogo e neutro para executar seus inimigos com estilo e brutalidade.\n")
  escreva("Recomendado para quem vive no fio da navalha: mata rapido ou morre rapido.\n")
  escreva("Digite o nЩmero de seu avanço de classe escolhido: \n")
  
  leia(opcaoDeAvancoFinal)
  
  enquanto(opcaoDeAvancoFinal < 1 ou opcaoDeAvancoFinal > 3){
    escreva("Opção invalida, tente novamente. As opções validas são 1, 2 e 3.\n")
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

  escreva(nomeDoPersonagem, " alcançou o nьvel maximo na sua classe atual, agora escolha uma das opçôes de avanço de classe. Este sera seu ultimo avanço de classe.\n")
  escreva("1 - SENTINELA SOLAR\n")
  escreva("Um arqueiro equilibrado que canaliza a energia do sol para iluminar o campo de batalha.\n")
  escreva("Mantжm os atributos balanceados do Vigia, combinando-os com os elementos fogo e luz.\n")
  escreva("Ideal para quem deseja manter versatilidade com um toque de brilho ofensivo e precisão sagrada.\n\n")

  escreva("2 - GUARDIÃO CELESTIAL\n")
  escreva("Um arqueiro abençoado pelos céus, que aprimora seus disparos com o poder dos fenomenos celestes.\n")
  escreva("Possui afinidade com os elementos agua, vento e luz, e eh levemente mais ofensivo que o Vigia tradicional.\n")
  escreva("Excelente para quem prefere uma abordagem ofensiva sem abrir mão da graciosidade celestial.\n\n")

  escreva("3 - VIGIA DO ABISMO\n")
  escreva("Um arqueiro sombrio que extrai sua força dos abismos profundos da terra e do oceano.\n")
  escreva("Mantém os atributos equilibrados do Vigia, mas canaliza os elementos água e escuridão\n")
  escreva("para disparos misteriosos, silenciosos e muitas vezes fatais.\n")
  escreva("Recomendado para jogadores que gostam de manter o equilьbrio enquanto exploram o lado mais sombrio da natureza.\n")
  escreva("Digite o número de seu avançoo de classe escolhido: \n")  
  
  leia(opcaoDeAvancoFinal)
  
  enquanto(opcaoDeAvancoFinal < 1 ou opcaoDeAvancoFinal > 3){
    escreva("Opção invalida, tente novamente. As opções validas são: 1, 2 e 3.\n")
    leia(opcaoDeAvancoFinal)
  }

  escolha(opcaoDeAvancoFinal){
    caso 1:
      classe = "SENTINELA SOLAR"
    pare
    caso 2:
      classe = "GUARDI├O CELESTE"
    pare
    caso 3:
      classe = "OLHO DO ABISMO"
    pare
  }

  escreva(nomeDoPersonagem, ", agora eh um: ", classe, ".\n")
  mostrarAtributos()
}
// Funусo para avanуo de classe do Mago
funcao avancoDeClasseMago() {
    inteiro opcaoDeAvanco
    
    escreva(nomeDoPersonagem, " alcançou o nьvel maximo na sua classe atual, agora escolha uma das opçôes de avanço de classe. Este sera seu ultimo avanço de classe.\n")
    escreva("1 - EVOCADOR\n")
    escreva("Classe que continua o caminho do Mago, com foco total em ataques poderosos.\n")
    escreva("Mantжm uma defesa fraca, mas eh capaz de causar grande dano de forma rapida e direta.\n")
    escreva("Ideal para quem quer continuar atacando com força, mesmo sendo mais vulnerável.\n\n")

    escreva("2 - ONMYOJI\n")
    escreva("Classe que troca parte do poder direto por mais velocidade e controle.\n")
    escreva("Pode invocar pequenas criaturas para ajudar nos combates, alжm de se mover com mais agilidade.\n")
    escreva("Boa escolha para quem gosta de estratжgia e movimentação.\n\n")

    escreva("3 - BRUXO\n")
    escreva("Foca em enfraquecer o inimigo e se fortalecer durante o combate.\n")
    escreva("Não eh tão rapido quanto outras classes, mas consegue virar o jogo aos poucos.\n")
    escreva("Indicado para quem prefere um estilo mais calculado e resistente.\n")
    escreva("Digite o nЩmero de seu avanço de classe escolhido: \n")
    leia(opcaoDeAvanco)
    
    enquanto(opcaoDeAvanco < 1 ou opcaoDeAvanco > 3) {
        escreva("Opçõo inválida tente novamente. As opções validas são 1, 2 e 3.\n")
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

// Funусo para avanуo de classe do Arqueiro
funcao avancoDeClasseArqueiro() {
  inteiro opcaoDeAvanco
    
  escreva(nomeDoPersonagem, " alcançou o nivel maximo na sua classe inicial, agora escolha uma das opçôes de avanço de classe.\n")

  escreva("1 - CAÇADOR\n")
  escreva("Classe com foco total na agilidade. Se move rapidamente e ataca com velocidade.\n")
  escreva("Boa para quem quer estar sempre em movimento e evitar ser atingido.\n\n")

  escreva("2 - ATIRADOR\n")
  escreva("Especializado em causar o maximo de dano com seus ataques e distancia.\n")
  escreva("Tem menos mobilidade, mas acerta com mais força.\n")
  escreva("Recomendado para quem prefere eliminar os inimigos rapidamente.\n\n")

  escreva("3 - VIGIA\n")
  escreva("Evolução equilibrada do Arqueiro, mantendo o bom desempenho entre ataque e mobilidade.\n")
  escreva("Versatil e confiavel em qualquer situação.\n\n")

  escreva("Digite o número de seu avanço de classe escolhido: \n")
  leia(opcaoDeAvanco)

  enquanto(opcaoDeAvanco < 1 ou opcaoDeAvanco > 3) {
    escreva("Opção invalida tente novamente. As opções validas são 1, 2 e 3.\n")
    leia(opcaoDeAvanco)       
  }
    
  escolha (opcaoDeAvanco) {
    caso 1:
      classe = "CAÇADOR"
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
      escreva("Parabens, ", nomeDoPersonagem, " derrotou o inimigo.")
      ganharExperiencia(nivelDoInimigo)
    pare
    }

       //turno do inimigo
    turnoDoInimigo()
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
        escreva("Voce encerrou seu turno.")
        pare
      }senao{
        escreva("Opção invalida tente novamente.\n")
        leia(acao)
      }

      se(vidaDoInimigo <= 0){
        pare
      }

      //Mecanica de custos
      se(pontosDeAcao > 0){
        escreva("Deseja continuar seu turno: 1 - Sim | 2 - Não.\n")
        inteiro continuar
        leia(continuar)

        se(continuar == 2){
          pare
        }
      }senao{
        escreva("Voce não tem pontos de ação o suficiente para continuar.\n")
      }
  }
}
funcao turnoDoInimigo(){
  escreva("Turno do inimigo")
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
    escreva(nomeDoPersonagem, " não tem pontos de ação o suficiente para esta ação o excedente de: ", excedente, " serão pontos de ação bonus do inimigo.\n")
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
    //logica de defesa, sз bloquear o ataque talvez.
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
funcao executarAcaoInimigo(inteiro custo, cadeia tipoAcao){
  inteiro excedente = 0

  se(pontosDeAcaoInimigo < custo){
    excedente = custo - pontosDeAcaoInimigo
    pontosDeAcaoInimigo = 0
    pontosDeAcao += excedente
    escreva("O inimigo realizou uma ação sem ter pontos o suficientes o excedente de: ", excedente, "sera seu bonus para o proximo turno.\n")
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
    escreva("Voce ganho: ", excedente, " pontos extras para o proximo turno.\n")
  }
}
funcao statusDeBatalha(){
  escreva("\n-----situação atual da batalha------\n")
  escreva(nomeDoPersonagem, ", Vida: ", vida, "  \n")
  escreva("Seus pontos de ação: ",pontosDeAcao, "\n")
  escreva("\n----------------------------------------\n")
  escreva(nomeDoInimigoAtual, ", Vida do inimigo: ", vidaDoInimigo, "\n")
  escreva("Pontos de Ação do inimigo: ", pontosDeAcaoInimigo, "\n")
}
funcao mostrarOpcoes(){
  escreva("\n--Ações disponiveis--\n")
  escreva("Seus pontos de ação: ", pontosDeAcao, "\n")
  escreva("1 - Atacar. Custo:", custoAtacar, "PA\n")
  escreva("2 - Defender. Custo: ", custoDefesa, "PA\n")
  escreva("3 - Habilidade. Custo: ", custoHabilidade, "PA\n")
  escreva("4 - Passar turno\n")
  escreva("Pontos de ação restantes: ", pontosDeAcao, "\n")
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
}
funcao proximaRegiao(){
  se(regiaoAtual >= 7){
    escreva("Você já está na ultima região de Eldoria.\n")
    escreva("Não há mais o que explorar a frente.\n")
  }

  inteiro opcaoDeRegiao
  escreva("Você chegou a borda da região atual deseja seguir em frente?")
  escreva("Se sim digite 1 \t | \t Senão digite 2.")
  leia(opcaoDeRegiao)

  enquanto(opcaoDeRegiao < 1 ou opcaoDeRegiao > 2){
    escreva("Opção inválida, tente novamente. As opções válidas são 1 e 2.")
    leia(opcaoDeRegiao)
  }
  se(opcaoDeRegiao == 1){
    regiaoAtual++
    escreva(nomeDoPersonagem, " Avançou para a proxima região.\n")
    escreva(nomeDoPersonagem, "Agora está na regiã da: ", regioes[regiaoAtual], "\n")
    escreva("Voce esta na região:", (regiaoAtual + 1), "de 8.\n")
      // pensar nр logica aqui.
  }senao{
    escreva("Você decidiu permanecer na região atual.\n")
    escreva(nomeDoPersonagem, " continua na região: ", regioes[regiaoAtual], ".\n")
  }
}
funcao voltarRegiao(){
    se(regiaoAtual == 0){
      escreva("Você ja está na primeira região de Eldoria.\n")
      escreva("Não há mais para onde voltar depois daqui.\n")
    }
    inteiro opcaoDeRegiaoVoltar
    escreva("Você já viu o necessário dessa região, deseja voltar?\n")
    escreva("Se sim digite 1 \t | \t Senão digite 2.")
    leia(opcaoDeRegiaoVoltar)

    enquanto(opcaoDeRegiaoVoltar < 1 ou opcaoDeRegiaoVoltar > 2){
      escreva("Opção inválida, tente novamente. As opções válidas são 1 e 2.")
      leia(opcaoDeRegiaoVoltar)
    }
    se(opcaoDeRegiaoVoltar == 1){
      regiaoAtual--
      escreva(nomeDoPersonagem, " Voltou a região anerior.\n")
      escreva(nomeDoPersonagem, "Agora esta na região da: ", regioes[regiaoAtual], "\n")
      escreva("Você esta na região:", (regiaoAtual + 1), "de 8.\n")
    }senao{
      escreva("Você decidiu permanecer na região atual.\n")
      escreva(nomeDoPersonagem, " continua na região: ", regioes[regiaoAtual], ".\n")
    }
}
funcao menuDeNavegacao(){
    // pensar em como fazer aqui, escolha provavelmente.
}
funcao mostrarRegiaoAtual(){

  escreva("\n === REGI├O ATUAL ===\n")
  escreva("Região: ", regioes[regiaoAtual], "\n")
  escreva("Posição no mapa: ", (regiaoAtual + 1), " de 8\n")
        
  escreva("\n Mapa das regiшes:\n")
  para(inteiro i = 0; i < 8; i++) {
    se(i == regiaoAtual){
      escreva("== [", (i + 1), "] ", regioes[i], " == (VOCÊ ESTÁ AQUI)\n")
    }senao{
      escreva("  [", (i + 1), "] ", regioes[i], "\n")
    }
  }
        
  // Informaушes de navegaусo
  escreva("\n Informações de navegação:\n")
  se(regiaoAtual == 0){
      escreva(" Você está na primeira região\n")
      escreva(" Próxima região disponivel: ", regioes[regiaoAtual + 1], "\n")
    }
    senao se(regiaoAtual == 7){
      escreva(" Você está na ultima região\n")
      escreva(" Região anterior disponьvel: ", regioes[regiaoAtual - 1], "\n")
    }
    senao{
      escreva(" Regiâo anterior: ", regioes[regiaoAtual - 1], "\n")
      escreva(" Prзxima região: ", regioes[regiaoAtual + 1], "\n")
    }
}
  

funcao campanha(){
  escreva("Há muito tempo, no Reino de Eldoria, a paz era mantida pela mьstica Pedra da Luz, protegida pelos Anciõos do Castelo Dourado.\n")
  u.aguarde(3000)

  escreva("\nUm dia, uma força sombria conhecida como O Devastador invadiu o reino, roubando a relьquia sagrada e mergulhando as terras em trevas e caos.\n")
  u.aguarde(3000)

  escreva("\nVilas foram saqueadas, florestas corrompidas, e criaturas sombrias começaram a vagar pelas regiшes.\n")
  u.aguarde(3000)

  escreva("\nDiante da crise, uma antiga profecia se cumpriu: um heroi escolhido surgira das sombras para restaurar a luz. Voce é esse herói.\n")
  u.aguarde(3000)

  escreva("\nZaruba: Sendo mais honesto você pode se tornar esse herói por enquanto é só que você é o unico tentando.\n")
  u.aguarde(2000)
  limpa()

  escreva("\nSua missão é atravessar oito regiões dominadas pelo mal, enfrentando inimigos, evoluindo suas habilidades e se preparando para confrontar O Devastador no Castelo Dourado.\n")
  u.aguarde(3000)

  escreva("\nA jornada será repleta de perigos, escolhas e batalhas. Seu destino e o de Eldoria estão entrelaçados.\n")
  u.aguarde(3000)
  limpa()

  escreva("Eu sou Zaruaba, o espirito do anel dos mortos e seu guia nessa jornada.\n")
  escreva("Vamos comeÇar testando suas habilidades em uma batalha ", nomeDoPersonagem, ".\n")
  gerarInimigo()
  turnoDeBatalha()
  }
}