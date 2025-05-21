programa {
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
    
    // Função principal
    funcao inicio() {
        inteiro opcao = 0
        
        enquanto (opcao != 3) {
            opcao = menuDeInicializacao()
            
            escolha(opcao) {
                caso 1:
                    criarPersonagem()
                pare
                caso 2:
                    mostrarCreditos()
                pare
                caso 3:
                    escreva("Saindo do jogo...\n")
                pare
                caso contrario:
                    escreva("Opção inválida! Tente novamente.\n")
                pare
            }
      }
    }
    
    // Função para exibir o menu inicial e retornar a opção escolhida
    funcao inteiro menuDeInicializacao() {
        inteiro opcao = 0
        
        escreva("\nBem vindo a Eldoria Saga\n")
        escreva("--1: Novo jogo--\n")
        escreva("--2: Créditos--\n")
        escreva("--3: Sair--\n")
        escreva("Escolha uma opção: ")
      
        
        // Garante que a leitura seja feita pelo menos uma vez
        leia(opcao)
        se(opcao < 1 ou opcao > 3) {
            escreva("Opção inválida! Tente novamente: ")
            leia(opcao)
        }
        
        retorne opcao
    }
    
    // Função para criar um novo personagem
    funcao criarPersonagem() {

        escreva("\n--- Criação de Personagem ---\n")
        escreva("Digite o nome do seu personagem: ")
        leia(nomeDoPersonagem)
        
        // Mostra menu de classes até receber uma opção válida
        escreva("\nEscolha sua classe:\n")
        escreva("1 - GUERREIRO, Foco em vida e defesa. Ideal para resistência prolongada.\n")
        escreva("2 - MAGO, Ataque poderoso, porém frágil. Especialista em dano rápido.\n")
        escreva("3 - ARQUEIRO, Equilibrado entre ataque e mobilidade. Versátil.\n")
        escreva("Opção: ")
        
        leia(opcaoDeClase)
        enquanto(opcaoDeClase < 1 ou opcaoDeClase > 3) {
            escreva("Opção inválida! Tente novamente: ")
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
        
        // Aqui você pode adicionar a inicialização dos atributos do personagem
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
        escreva("Nível: ", nivel, "\n")
        escreva("Ataque: ", ataque, "\n")
        escreva("Defesa: ", defesa, "\n")
        escreva("Agilidade: ", agilidade, "\n")
    }
    
    // Função para mostrar os créditos
    funcao mostrarCreditos() {
        escreva("\n--- Créditos ---\n")
        escreva("Desenvolvido por: Patrick-fed\n")
        escreva("Eldoria Saga v1.0\n\n")
    }
    funcao subirDeNivel(){
      enquanto(experiencia >= (nivel+1)*10 e nivel < 10) {
      nivel = nivel + 1
      vida = vida + nivel
      escreva("Seu herói subiu para o nível: ", nivel, "\n")

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
      escreva("Experiência: ", experiencia, " / ", (nivel+1)*10, "\n")
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
  // Função para avanço de classe do Guerreiro
funcao avancoDeClasseGuerreiro() {
    inteiro opcaoDeAvanco
    
    escreva(nomeDoPersonagem, " alcançou o nível maximo na sua classe inicial, agora escolha uma das opções de avanço de classe.\n")
    escreva("1 - CAVALEIRO\n")
    escreva("Classe que evolui diretamente do Guerreiro, o Cavaleiro mantém um bom equilíbrio entre ataque e defesa.\n")
    escreva("É uma escolha sólida para quem quer enfrentar inimigos de forma direta, com força e resistência parecidas.\n")
    escreva("Não se destaca em um único ponto, mas é confiável em qualquer situação.\n\n")

    escreva("2 - SAMURAI\n")
    escreva("O Samurai foca na agilidade e no ataque. Ele causa mais dano e se move com mais rapidez,\n")
    escreva("mas tem uma defesa um pouco mais baixa.\n")
    escreva("É ideal para quem prefere atacar primeiro e rápido, mesmo que isso signifique receber mais dano se for atingido.\n\n")

    escreva("3 - PALADINO\n")
    escreva("Classe voltada para a defesa. O Paladino resiste bem aos ataques e consegue aguentar mais tempo em combate.\n")
    escreva("Em compensação, seu ataque não é tão forte.\n")
    escreva("É uma boa escolha para quem prefere jogar de forma segura e com mais proteção.\n")
    escreva("Digite o número de seu avanço de classe escolhido: \n")
    leia(opcaoDeAvanco)
    
    enquanto(opcaoDeAvanco < 1 ou opcaoDeAvanco > 3) {
        escreva("Opção inválida, tente novamente. As opções válidas são 1, 2 e 3.\n")
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
    
    escreva(nomeDoPersonagem, ", agora é um: ", classe, ".\n")
}

// Função para avanço de classe do Mago
funcao avancoDeClasseMago() {
    inteiro opcaoDeAvanco
    
    escreva(nomeDoPersonagem, " alcançou o nível máximo na sua classe inicial, agora escolha uma das opções de avanço de classe.\n")
    escreva("1 - EVOCADOR\n")
    escreva("Classe que continua o caminho do Mago, com foco total em ataques poderosos.\n")
    escreva("Mantém uma defesa fraca, mas é capaz de causar grande dano de forma rápida e direta.\n")
    escreva("Ideal para quem quer continuar atacando com força, mesmo sendo mais vulnerável.\n\n")

    escreva("2 - ONMYOJI\n")
    escreva("Classe que troca parte do poder direto por mais velocidade e controle.\n")
    escreva("Pode invocar pequenas criaturas para ajudar nos combates, além de se mover com mais agilidade.\n")
    escreva("Boa escolha para quem gosta de estratégia e movimentação.\n\n")

    escreva("3 - BRUXO\n")
    escreva("Foca em enfraquecer o inimigo e se fortalecer durante o combate.\n")
    escreva("Não é tão rápido quanto outras classes, mas consegue virar o jogo aos poucos.\n")
    escreva("Indicado para quem prefere um estilo mais calculado e resistente.\n")
    escreva("Digite o número de seu avanço de classe escolhido: \n")
    leia(opcaoDeAvanco)
    
    enquanto(opcaoDeAvanco < 1 ou opcaoDeAvanco > 3) {
        escreva("Opção inválida tente novamente.")
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
    
    escreva(nomeDoPersonagem, ", agora é um: ", classe, ".\n")
}

// Função para avanço de classe do Arqueiro
funcao avancoDeClasseArqueiro() {
    inteiro opcaoDeAvanco
    
    escreva(nomeDoPersonagem, " alcançou o nível máximo na sua classe inicial, agora escolha uma das opções de avanço de classe.\n")

    escreva("1 - CAÇADOR\n")
    escreva("Classe com foco total na agilidade. Se move rapidamente e ataca com velocidade.\n")
    escreva("Boa para quem quer estar sempre em movimento e evitar ser atingido.\n\n")

    escreva("2 - ATIRADOR\n")
    escreva("Especializado em causar o máximo de dano com seus ataques à distância.\n")
    escreva("Tem menos mobilidade, mas acerta com mais força.\n")
    escreva("Recomendado para quem prefere eliminar os inimigos rapidamente.\n\n")

    escreva("3 - VIGIA\n")
    escreva("Evolução equilibrada do Arqueiro, mantendo o bom desempenho entre ataque e mobilidade.\n")
    escreva("Versátil e confiável em qualquer situação.\n\n")

    escreva("Digite o número de seu avanço de classe escolhido: \n")
    leia(opcaoDeAvanco)

    enquanto(opcaoDeAvanco < 1 ou opcaoDeAvanco > 3) {
        escreva("Opção inválida tente novamente. As opções válidas são 1, 2 e 3.\n")
        leia(opcaoDeAvanco)       
    }
    
    escolha (opcaoDeAvanco) {
        caso 1:
            classe = "CAÇADOR"
        caso 2:
            classe = "ATIRADOR"
        caso 3:
            classe = "VIGIA"
    }
  }
}