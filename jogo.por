programa {
  inclua biblioteca Util --> u

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
  cadeia nomeDoInimigo
  inteiro nivelDoInimigo
  inteiro vidaDoInimigo
  inteiro inimigoATK
  inteiro inimigoDEF
  inteiro inimigoAGI
    
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
          ataque += 7
          defesa += 7
          agilidade += 1
        }
        se(classe == "MAGO"){
          ataque += 10
          defesa += 2
          agilidade += 3
        }
        se(classe == "ARQUEIRO"){
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
      enquanto(experiencia >= (nivel+1)*10 e nivel < 10) {
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
      }
      mostrarAtributos()
      se(nivel == 5){
        avancoDeClasse()
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
        caso 2:
            classe = "SAMURAI"
        caso 3:
            classe = "PALADINO"
    }
    
    escreva(nomeDoPersonagem, ", agora � um: ", classe, ".\n")
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
        escreva("Op��o inv�lida tente novamente.")
        leia(opcaoDeAvanco)
    }
    
    escolha (opcaoDeAvanco) {
        caso 1:
            classe = "EVOCADOR"
        caso 2:
            classe = "ONMYOJI"
        caso 3:
            classe = "BRUXO"
    }
    
    escreva(nomeDoPersonagem, ", agora � um: ", classe, ".\n")
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
        caso 2:
            classe = "ATIRADOR"
        caso 3:
            classe = "VIGIA"
    }
    escreva(nomeDoPersonagem, ", agora � um: ", classe, ".\n")
  }
  funcao turnoDeBatalha(){
    enquanto(vida >= 0 ou vidaDoInimigo >= 0){
      enquanto(vida > 0 e vidaDoInimigo > 0) {
        escreva("Turno do jogador\n")
        escreva("1 - Atacar\n2 - Defender\nEscolha: ")
        inteiro acao
        leia(acao)

        se (acao == 1) {
            inteiro danoCausado = ataque - inimigoDEF
            se (danoCausado < 0) {
                danoCausado = 0
            }
            vidaDoInimigo = vidaDoInimigo - danoCausado
            escreva("Voc� causou ", danoCausado, " de dano.\n")
        } senao se (acao == 2) {
            escreva("Voc� se defendeu e recebeu menos dano.\n")
            // Pode implementar b�nus de defesa aqui
        }

        // Turno do inimigo
        se (vidaDoInimigo > 0) {
            escreva("Turno do inimigo\n")
            inteiro danoRecebido = inimigoATK - defesa
            se (danoRecebido < 0) {
                danoRecebido = 0
            }
            vida = vida - danoRecebido
            escreva("Voc� recebeu ", danoRecebido, " de dano.\n")
        }
    }

    se (vida <= 0) {
        escreva("Voc� foi derrotado...\n")
    } senao {
        escreva("Inimigo derrotado!\n")
        ganharExperiencia(10) // ou qualquer valor adequado
    }


    }

  }
  funcao gerarInimigo() {
    nomeDoInimigo
    nivelDoInimigo = nivel
    vidaDoInimigo = 20 + nivel * 5
    inimigoATK = 5 + nivel
    inimigoDEF = 2 + nivel
    inimigoAGI = 1 + nivel
}

  funcao campanha(){
    escreva("H� muito tempo, no Reino de Eldoria, a paz era mantida pela m�stica Pedra da Luz, protegida pelos Anci�os do Castelo Dourado.\n")
    u.aguarde(3)

    escreva("\nUm dia, uma for�a sombria conhecida como O Devastador invadiu o reino, roubando a rel�quia sagrada e mergulhando as terras em trevas e caos.\n")
    u.aguarde(3)

    escreva("\nVilas foram saqueadas, florestas corrompidas, e criaturas sombrias come�aram a vagar pelas regi�es.\n")
    u.aguarde(3)

    escreva("\nDiante da crise, uma antiga profecia se cumpriu: um her�i escolhido surgir� das sombras para restaurar a luz. Voc� � esse her�i.\n")
    u.aguarde(3)

    escreva("\nSua miss�o � atravessar cinco regi�es dominadas pelo mal, enfrentando inimigos, evoluindo suas habilidades e se preparando para confrontar O Devastador no Castelo Dourado.\n")
    u.aguarde(3)

    escreva("\nA jornada ser� repleta de perigos, escolhas e batalhas. Seu destino e o de Eldoria est�o entrela�ados.\n")
    u.aguarde(3)
  }
}