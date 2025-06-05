programa {

  inclua biblioteca Util --> u

   cadeia nomeClasse[3], nomeHeroi, regioes[5]
   inteiro vidaMaxima[3], xp = 0, nivel = 1, vidaAtual[3], ataque[3], defesa[3], classe, contadorRegiao

  funcao inicio() {

    
    contadorRegiao = 0

    regioes[0] = "Floresta da Névoa"
    regioes[1] = "Vila Abandonada"
    regioes[2] = "Caverna Sombria"
    regioes[3] = "Pântano dos Lamentos"
    regioes[4] = "Castelo Dourado"

    nivel = 1
    xp = 0

    nomeClasse[0] = "Guerreiro"
    vidaMaxima[0] = 90
    ataque[0] = 30
    defesa[0] = 25

    nomeClasse[1] = "Mago"
    vidaMaxima[1] = 50
    ataque[1] = 55
    defesa[1] = 20

    nomeClasse[2] = "Arqueiro"
    vidaMaxima[2] = 60
    ataque[2] = 40
    defesa[2] = 25

    classe = 1
    nomeHeroi = "a"

    para (inteiro i = 0; i<3; i++) {
      vidaAtual[i] = vidaMaxima[i]
    }
    
    menu ()

  }

  funcao menu () {
    cadeia opcao
    faca {
      limpa()
      escreva("┌────────────────────────────┐\n")
      escreva("│     SHADOWS OF ELDORIA     │\n")
      escreva("├────────────────────────────┤\n")
      escreva("│   I. Novo Jogo             │\n")
      escreva("│   II. Créditos             │\n")
      escreva("│   III. Sair                │\n")
      escreva("└────────────────────────────┘\n")
      escreva("\n")
      leia(opcao)

      se (opcao==1) {
        novoJogo()
      }

      se (opcao==2) {
        cadeia opcao
        faca {
          creditos ()
          escreva("\n\n1. Voltar\n\n")
          leia(opcao)
        } enquanto (opcao!=1)

        se (opcao==1) {
          menu()
        }

      }

      se (opcao==3) {
        pare
      }
    } enquanto (opcao!=1 e opcao!=2 e opcao!=3)


  }

  funcao creditos () {
      limpa()
      escreva("==============================\n")
      escreva("         CRÉDITOS\n")
      escreva("==============================\n")
      escreva("\n")
      escreva("Roteiro:                Bruno \n")
      escreva("Programação:            Bruno \n")
      escreva("Design de Personagens:  Bruno \n")
      escreva("Criação de Mapas:       Bruno \n")
      escreva("Sistema de Batalha:     Bruno \n")
      escreva("Interface e Menus:      Bruno \n")
      escreva("Efeitos Sonoros:        Bruno \n")
      escreva("Música:                 Bruno \n")
      escreva("Testes:                 Bruno \n")
      escreva("Direção Criativa:       Bruno \n")
      escreva("Produção Executiva:     Bruno \n")
    }

  funcao novoJogo () {

    cadeia opcao
    faca{
      limpa()
      escreva("Deseja iniciar um novo jogo?\n\n1. Sim\n2. Cancelar\n\n")
      leia(opcao)

      se (opcao==1) {
        carregamentoJogo()
        classe = criacaoDoHeroi() - 1
        florestadaNevoa()
        vilaAbandonada ()
        cavernaSombria ()
        pantanoDosLamentos ()
      }

      se (opcao==2) {
        menu()
      }
    } enquanto (opcao!=1 e opcao!=2)

  }

  funcao carregamentoJogo () {
    limpa()
    escreva("Iniciando novo jogo.")
    u.aguarde(800)
    limpa()
    escreva("Iniciando novo jogo..")
    u.aguarde(800)
    limpa()
    escreva("Iniciando novo jogo...")
    u.aguarde(800)
    limpa()
    escreva("Iniciando novo jogo.")
    u.aguarde(800)
    limpa()
    escreva("Iniciando novo jogo..")
    u.aguarde(800)
    limpa()
    escreva("Iniciando novo jogo...")
    u.aguarde(1000)
  }

  funcao inteiro criacaoDoHeroi() {

    limpa()
    escreva("Digite o nome do seu herói: ")
    leia(nomeHeroi)

    faca {
      limpa()
      escreva("\n\nSelecione a sua classe, ", nomeHeroi,"!\n\n\n|        1. Guerreiro: Foco em vida e defesa.              2. Mago: Ataque poderoso, porém frágil.           3. Arqueiro: Equilibrado entre ataque e mobilidade.\n")
      escreva("|                                                                                                                                           \n")
      escreva("|                        -+++++++++++++-                               -+++++=                                                 =++++++++++++-              \n")
      escreva("|                     =@@#*************#@@=                           %%*****#@@+                                          .%%%=------------*%%+           \n")
      escreva("|                  ..@#+++++++++=====+++++%@..                      .@#*********%%-.                                      =@=-----::::::::::::-*@          \n")
      escreva("|                  =@******++++++++++++++++*@-                     =%#****++++++++#%=                                  ..%#-------::::::::::::--=@+..      \n")
      escreva("|                 #%*########################%#                   .+@*****+++++++++*%@@..........                  -=-.-@+=-------------::::-----+#@.      \n")
      escreva("|                 %%*########################@%                   %@%%@%**++++++++++***####*****#:                 %#=#%@*+=----*%%%%%#+---%%%%#++#@.      \n")
      escreva("|                 %%*####**=-----:::::--:-===%#..                 ....%%**++++++++*****++++%%%%**%#                %%+-=@*++==-@#++*@+=--+@++++#@+#@.      \n")
      escreva("|                 %%*####+=-++++#%++++++*%#*#++@.                     %%**+++++********%%%%******%#                %#++=-%#++#@++++++@@@@%+++++#@+#@.      \n")
      escreva("|                 %%*####+=-=+++#@+++++++@*+#++@.                     %%**+*****++%%%%%%+*%#****@=.                 =@+++-=+@%+==++==========++#@+#@.      \n")
      escreva("|                 %%*####+=-------========---=+%.                  .-@@%********#%%##*+++++%####.                   .-%%+=++@%+----:::::::::---+@+#@.      \n")
      escreva("|                 %%*####*******+-:=+++=-=--*%%                   #%#*#****+*#++++++===---=%@+:                      .@@@@%+@%+--=-:::::::::-=-+@+#@.      \n")
      escreva("|                 %%*####*+++++*+-:------=--+%%                 .@#******++%#==%*==-::::#*-*@=                       .@%+#*+@%+----------------+@+#@.      \n")
      escreva("|              ..@@%***###*++++*+--------=--*%#                -##***++*#%%%*=-=-:::::::=--*@=                       .@%+#%@#*+++++++++++++++++==@+        \n")
      escreva("|            .:#@**************+++++++++++**@-                 =@*+++%%%%%%%*=::::::::::::-*@=                       .@%+#%@@#===++++=========-+%:.        \n")
      escreva("|            .@#**###*********************##@-                  .++++@%%%######**++====*+*#%+:                      =@+*#@%*+*@@#--=+++++=--*@@%#@+        \n")
      escreva("|            .@#**#%@@%*########*++*###*++%@..                      .@%%%%%%%#**********#%%@.                       =@+*@#****++#@@#-----*@@#==++*%@.      \n")
      escreva("|           .-@#**#%@@%*##*+++++++++++++++%@                       :-@%##%#########%%%%###%@.                       =@+*@@@@##+++==*%@@@%#==++***###.      \n")
      escreva("|           +@##**#%@@%*##***********#****%@                      #%%%#**********+%%%%@@**#@.                       =@+*#@@%@@%*+===-%%%-==+*%@@@          \n")
      escreva("|        :@@%#***##%@.+@@@@@@@@@@@@@@@@@@@=.                      #@@@@###*+++++#%%%%%%@@#*@.                      %%+###@@%%%%@#+==-%%%==+@@%%@@          \n")
      escreva("|       %@*****###@*    @@@@..       .%@@@=                            -==@@@@@@@@@@@@@@@#-                        %%+###@@@@@@@@@++-@@@==+@@@@@@          \n")
      escreva("|       +*********:     **+.          +**.                               .@@@%       :@@@+                         %@@@@@: .@@@@+.@@@. .@@@@@@.            \n")
      escreva("|       +*********:     **+           **+                                .**=        :**:                                  .***.         -**-              \n\n\n")
      leia(classe)

    } enquanto (classe!=3 e classe!=2 e classe!=1)

    se (classe==1) {
      cadeia opcao
      faca {
        limpa()
        escreva("Muito bem! Esse é o seu herói:\n\n")
        escreva("|                                                        \n")     
        escreva("|                        -+++++++++++++-                      \n")
        escreva("|                     =@@#*************#@@=                   NOME: ", nomeHeroi, "\n")
        escreva("|                  ..@#+++++++++=====+++++%@..                \n")
        escreva("|                  =@******++++++++++++++++*@-                CLASSE: ", nomeClasse[classe-1], "\n")
        escreva("|                 #%*########################%#               \n")
        escreva("|                 %%*########################@%               NÍVEL: ", nivel, "\n")
        escreva("|                 %%*####**=-----:::::--:-===%#..             \n")
        escreva("|                 %%*####+=-++++#%++++++*%#*#++@.             ATAQUE: ", ataque[classe-1], "\n")
        escreva("|                 %%*####+=-=+++#@+++++++@*+#++@.             \n")
        escreva("|                 %%*####+=-------========---=+%.             DEFESA: ", defesa[classe-1], "\n")
        escreva("|                 %%*####*******+-:=+++=-=--*%%               \n")
        escreva("|                 %%*####*+++++*+-:------=--+%%               VIDA: ", vidaMaxima[classe-1], "\n")
        escreva("|              ..@@%***###*++++*+--------=--*%#               \n")
        escreva("|            .:#@**************+++++++++++**@-                \n")
        escreva("|            .@#**###*********************##@-                \n")
        escreva("|            .@#**#%@@%*########*++*###*++%@..                \n")
        escreva("|           .-@#**#%@@%*##*+++++++++++++++%@                  \n")
        escreva("|           +@##**#%@@%*##***********#****%@                  \n")
        escreva("|        :@@%#***##%@.+@@@@@@@@@@@@@@@@@@@=.                  \n")
        escreva("|       %@*****###@*    @@@@..        .%@@@=                  \n")
        escreva("|       +*********:     **+.          +**.                    \n")
        escreva("|       +*********:     **+           **+                     \n")
        escreva("\n1. Prosseguir | 2. Voltar\n\n")
        leia(opcao)
      } enquanto (opcao!=1 e opcao!=2)

      se (opcao==2) {
        criacaoDoHeroi ()
      }

    }

    se (classe==2) {
      cadeia opcao
      faca {
        limpa()
        escreva("Muito bem! Esse é o seu herói:\n\n")
        escreva("|                                                          \n")    
        escreva("|                   -+++++=                                \n")
        escreva("|                  %%*****#@@+                             NOME: ", nomeHeroi, "\n")
        escreva("|                .@#*********%%-.                          \n")
        escreva("|               =%#****++++++++#%=                         CLASSE: ", nomeClasse[classe-1], "\n")
        escreva("|              .+@*****+++++++++*%@@..........             \n")
        escreva("|              %@%%@%**++++++++++***####*****#:            NÍVEL: ", nivel, "\n")
        escreva("|              ....%%**++++++++*****++++%%%%**%#           \n")
        escreva("|                  %%**+++++********%%%%******%#           ATAQUE: ", ataque[classe-1], "\n")
        escreva("|                  %%**+*****++%%%%%%+*%#****@=.           \n")
        escreva("|               .-@@%********#%%##*+++++%####.             DEFESA: ", defesa[classe-1], "\n")
        escreva("|              #%#*#****+*#++++++===---=%@+:               \n")
        escreva("|            .@#******++%#==%*==-::::#*-*@=                VIDA: ", vidaMaxima[classe-1], "\n")
        escreva("|           -##***++*#%%%*=-=-:::::::=--*@=                \n")
        escreva("|           =@*+++%%%%%%%*=::::::::::::-*@=                \n")
        escreva("|            .++++@%%%######**++====*+*#%+:                \n")
        escreva("|                .@%%%%%%%#**********#%%@.                 \n")
        escreva("|               :-@%##%#########%%%%###%@.                 \n")
        escreva("|              #%%%#**********+%%%%@@**#@.                 \n")
        escreva("|              #@@@@###*+++++#%%%%%%@@#*@.                 \n")
        escreva("|                   -==@@@@@@@@@@@@@@@#-                   \n")
        escreva("|                     .@@@%       :@@@+                    \n")
        escreva("|                     .**=        :**:                     \n")
        escreva("\n1. Prosseguir | 2. Voltar\n\n")
        leia(opcao)
      } enquanto (opcao!=1 e opcao!=2)

      se (opcao==2) {
        criacaoDoHeroi ()
      }

    }

    se (classe==3) {
      cadeia opcao
      faca {
        limpa()
        escreva("Muito bem! Esse é o seu herói:\n\n")
        escreva("|                                                         \n") 
        escreva("|                          =++++++++++++-                 \n")        
        escreva("|                      .%%%=------------*%%+              NOME: ", nomeHeroi, "\n")
        escreva("|                     =@=-----::::::::::::-*@             \n")
        escreva("|                  ..%#-------::::::::::::--=@+..         CLASSE: ", nomeClasse[classe-1], "\n")
        escreva("|              -=-.-@+=-------------::::-----+#@.         \n")
        escreva("|              %#=#%@*+=----*%%%%%#+---%%%%#++#@.         NÍVEL: ", nivel, "\n")
        escreva("|              %%+-=@*++==-@#++*@+=--+@++++#@+#@.         \n")
        escreva("|              %#++=-%#++#@++++++@@@@%+++++#@+#@.         ATAQUE: ", ataque[classe-1], "\n")
        escreva("|               =@+++-=+@%+==++==========++#@+#@.         \n")
        escreva("|               .-%%+=++@%+----:::::::::---+@+#@.         DEFESA: ", defesa[classe-1], "\n")
        escreva("|                .@@@@%+@%+--=-:::::::::-=-+@+#@.         \n")
        escreva("|                .@%+#*+@%+----------------+@+#@.         VIDA: ", vidaMaxima[classe-1], "\n")
        escreva("|                .@%+#%@#*+++++++++++++++++==@+           \n")
        escreva("|                .@%+#%@@#===++++=========-+%:.           \n")
        escreva("|               =@+*#@%*+*@@#--=+++++=--*@@%#@+           \n")
        escreva("|               =@+*@#****++#@@#-----*@@#==++*%@.         \n")
        escreva("|               =@+*@@@@##+++==*%@@@%#==++***###.         \n")
        escreva("|               =@+*#@@%@@%*+===-%%%-==+*%@@@             \n")
        escreva("|              %%+###@@%%%%@#+==-%%%==+@@%%@@             \n")
        escreva("|              %%+###@@@@@@@@@++-@@@==+@@@@@@             \n")
        escreva("|              %@@@@@: .@@@@+.@@@. .@@@@@@.               \n")
        escreva("|                      .***.         -**-                 \n")
        escreva("\n1. Prosseguir | 2. Voltar\n\n")
        leia(opcao)
      } enquanto (opcao!=1 e opcao!=2)

      se (opcao==2) {
        criacaoDoHeroi ()
      }

    }

    retorne classe


  }

  funcao statusHeroi() {
    escreva("====================================\n")
escreva("Nome: ", nomeHeroi, "\n")
escreva("Classe: ", nomeClasse[classe], "\n")
escreva("Nível: ", nivel, " | XP: ", xp , "/100\n")
escreva("Vida: ", vidaAtual[classe], "/", vidaMaxima[classe], "\n")
escreva("Ataque: ", ataque[classe], " | Defesa: ", defesa[classe], "\n")
escreva("Região: ", regioes[contadorRegiao], "\n")
escreva("====================================\n\n")


  }

  funcao subirDeNivel() {
    cadeia opcao
    nivel++
    xp -= 100
    inteiro melhoriaAtaque = ataque[classe] * 0.10
    inteiro melhoriaDefesa = defesa[classe] * 0.10
    inteiro melhoriaVida = vidaMaxima[classe] * 0.10
    ataque[classe] += melhoriaAtaque
    defesa[classe] += melhoriaDefesa
    vidaMaxima[classe] += melhoriaVida
    vidaAtual[classe] = vidaMaxima[classe]
    faca {
      limpa()
      escreva(">>VOCÊ SUBIU DE NÍVEL!<<\n\n")
      escreva("Nível ", nivel-1, " --> ", nivel)
      escreva("\nMelhorias:\n")
      escreva("+ ", melhoriaAtaque, " de ataque\n" )
      escreva("+ ", melhoriaDefesa, " de defesa\n" )
      escreva("+ ", melhoriaVida, " de vida máxima\n" )
      escreva("\n1. Continuar: ")
      leia(opcao)
    } enquanto (opcao!=1)
    
  }

  funcao ganharXp (inteiro xpGanho) {
    cadeia opcao
    xp += xpGanho
    faca {
      limpa()
      escreva("\nXP GANHO: ", xpGanho)
      escreva("\n\n1. Prosseguir: ")
      leia(opcao)
    } enquanto (opcao!=1)

    se (xp>=100) {
      subirDeNivel ()
    }
  }


  funcao florestadaNevoa () {

      prologo()
      historiaFloresta()
      chegadaFloresta()
      batalhaFeraSombria ()
      ganharXp(50)
      serpenteVenenosa ()
      ganharXp(60)
      posSerpente ()
      introGuardiao()
      batalhaGuardiao()
      eyla()

  }

  funcao prologo () {
    cadeia opcao
    faca {
      limpa()
    escreva("Prólogo: A Pedra da Luz\n")
    escreva("Durante eras, a Pedra da Luz manteve Eldoria em equilíbrio, selando as forças das trevas e concedendo prosperidade às terras. \nGuardada pelos Anciãos no imponente Castelo Dourado, era símbolo de esperança. \nMas essa paz foi quebrada quando O Devastador, uma entidade de pura escuridão, invadiu o castelo e roubou a Pedra, mergulhando o reino em sombras.")
    escreva("\n\nDizem as profecias: “Quando a luz for roubada, um escolhido surgirá do nada, seu destino ligado à ruína ou à salvação de Eldoria.”")
    escreva("\n\nVocê é esse escolhido.\n\n1. Continuar\n\n")
    leia(opcao)
    } enquanto (opcao!=1)

  }

  funcao historiaFloresta () {
    cadeia opcao

      limpa()
      faca {
      limpa()
      statusHeroi()
      escreva("Capítulo 1: Floresta da Névoa – O Despertar do Herói\n\nSua jornada começa na sombria Floresta da Névoa, onde a névoa esconde feras mutantes, \nsombras que sussurram, e ilusões traiçoeiras. Antigamente um santuário dos druidas, a floresta agora devora os incautos. \n\n")

      escreva("\n\n1. Explorar: ")
      leia(opcao)
    } enquanto (opcao!=1)

  }

  funcao chegadaFloresta () {
    cadeia opcao
    faca {
      limpa()
      statusHeroi()
      escreva("Você adentra a temida Floresta da Névoa, onde criaturas ocultas espreitam a cada passo.\n")
      escreva("O ar é denso, a luz do sol mal atravessa as copas das árvores.\n")
      escreva("Enquanto caminha com cautela, ouve um rosnado vindo de um arbusto próximo...\n\n")
      escreva("1. Verificar o barulho: ")
      leia(opcao)
    } enquanto (opcao!=1)

    limpa()
    u.aguarde(1000)
    faca {
      limpa()
      statusHeroi()
      escreva("Uma Fera Sombria salta em sua direção! Prepare-se para lutar!\n")
      escreva("1. Lutar: ")
      leia(opcao)
    } enquanto (opcao!=1)

  }

  funcao batalhaFeraSombria () {

      logico contraAtaque = falso

      inteiro vidaFeraSombria = 110, ataqueFeraSombria = 30, defesaFeraSombria = 10

      inteiro turno = 1, danoCausado, danoRecebido, danoContrAtaque, numSort
      logico opcaoDefesa = falso
      cadeia opcao

      danoContrAtaque = ataque[classe]/2


      faca {
        faca {
          contraAtaque = falso
          opcaoDefesa = falso
          limpa()
          escreva("|-----BATALHA-----|\n\n")
          escreva(nomeHeroi ," x Fera Sombria\n\n" )
          escreva("SUA VIDA: ", vidaAtual[classe], " | VIDA DO INIMIGO: ", vidaFeraSombria)
          escreva("\nTURNO: ", turno)
          escreva("\n\nSUA VEZ: O QUE DESEJA FAZER?\n1. Atacar | 2. Defender (Chance de contra-ataque: 33%)\n\nDigite a opção escolhida: ")
          leia(opcao)
        } enquanto (opcao!=1 e opcao!=2)

        se (opcao==1) {
          danoCausado = ataque[classe] - defesaFeraSombria
          se (danoCausado<0) {
            danoCausado = 0
          } 
          vidaFeraSombria -= danoCausado

          escreva("\nVocê causou ", danoCausado, " de dano!")
          u.aguarde(2000)
          se (vidaFeraSombria<=0) {
            faca {
              limpa()
              escreva("Você derrotou a fera!\n\n")
              escreva("1. Prosseguir: ")
              leia(opcao)
            } enquanto (opcao!=1)
            pare
          }
        }    

        se (opcao==2) {
          numSort = u.sorteia(1,3)
          opcaoDefesa = verdadeiro
          escreva("\nVocê escolheu se defender, o próximo ataque do seu inimigo causará metade do dano!")

          se (numSort==2) {
            contraAtaque = verdadeiro
          }
        }

        escreva("\n\nVEZ DO INIMIGO\n\n")
        u.aguarde(1000)

        danoRecebido = ataqueFeraSombria - defesa[classe]
        se (opcaoDefesa==verdadeiro) {
          vidaAtual[classe] -= danoRecebido/2
          escreva("A fera lhe atacou e causou ", danoRecebido/2, " de dano!")
          se (contraAtaque==verdadeiro) {
            u.aguarde(1000)
            escreva("\nVocê conseguiu contra-atacar e causou ", danoContrAtaque, " de dano!")
            vidaFeraSombria -= danoContrAtaque - defesaFeraSombria
          }
          se (vidaAtual[classe]<=0) {
            cadeia opcao
            faca {
              escreva("Você perdeu. \n")
              escreva("\n1. Recomeçar | 2. Sair: ")
              leia (opcao)
            } enquanto (opcao!=1 e opcao!=2)

            se (opcao==1) {
              menu()
            } 

            se (opcao==2) {
              pare
              pare
            }
            pare
          } 
        } senao {
          vidaAtual[classe] -= danoRecebido
          escreva("A fera lhe atacou e causou ", danoRecebido, " de dano!")
          se (vidaAtual[classe]<=0) {
            cadeia opcao
            faca {
              escreva("Você perdeu. \n")
              escreva("\n1. Recomeçar | 2. Sair: ")
              leia (opcao)
            } enquanto (opcao!=1 e opcao!=2)

            se (opcao==1) {
              menu()
            } 

            se (opcao==2) {
              pare
              pare
            }
            pare
          }
        }

        u.aguarde(2000)
        turno++
      } enquanto (vidaAtual[classe]>0 e vidaFeraSombria>0)
  }

  funcao serpenteVenenosa () {
    cadeia opcao
    faca {
      limpa()
      vidaAtual[classe] = vidaMaxima[classe]
      statusHeroi()
      escreva("Após isso, você segue explorando em busca de um local para descansar...\n")
      escreva("Enquanto explora a clareira, uma Serpente Venenosa surge das sombras e se enrola em sua perna!\n")
      escreva("Prepare-se para mais um combate!\n")
      escreva("\n1. Lutar: ")
      leia(opcao)
    } enquanto (opcao!=1)

    batalhaSerpenteVenenosa ()

  }

  funcao batalhaSerpenteVenenosa () {
    
      logico contraAtaque = falso

      inteiro vidaSerpenteVenenosa = 150, ataqueSerpenteVenenosa = 35, defesaSerpenteVenenosa = 10

      inteiro turno = 1, danoCausado, danoRecebido, danoContrAtaque, numSort
      logico opcaoDefesa = falso
      cadeia opcao

      danoContrAtaque = ataque[classe]/2


      faca {
        faca {
          contraAtaque = falso
          opcaoDefesa = falso
          limpa()
          escreva("|-----BATALHA-----|\n\n")
          escreva(nomeHeroi ," x Serpente Venenosa\n\n" )
          escreva("SUA VIDA: ", vidaAtual[classe], " | VIDA DO INIMIGO: ", vidaSerpenteVenenosa)
          escreva("\nTURNO: ", turno)
          escreva("\n\nSUA VEZ: O QUE DESEJA FAZER?\n1. Atacar | 2. Defender (Chance de contra-ataque: 33%)\n\nDigite a opção escolhida: ")
          leia(opcao)
        } enquanto (opcao!=1 e opcao!=2)


        se (opcao==1) {
          danoCausado = ataque[classe] - defesaSerpenteVenenosa
          se (danoCausado<0) {
            danoCausado = 0
          } 
          vidaSerpenteVenenosa -= danoCausado

          escreva("\nVocê causou ", danoCausado, " de dano!")
          u.aguarde(2000)
          se (vidaSerpenteVenenosa<=0) {
            faca {
              limpa()
              escreva("Você derrotou a Serpente!\n\n")
              escreva("1. Prosseguir: ")
              leia(opcao)
            } enquanto (opcao!=1)
            pare
          }
        }    

        se (opcao==2) {
          numSort = u.sorteia(1,3)
          opcaoDefesa = verdadeiro
          escreva("\nVocê escolheu se defender, o próximo ataque do seu inimigo causará metade do dano!")

          se (numSort==2) {
            contraAtaque = verdadeiro
          }
        }

        escreva("\n\nVEZ DO INIMIGO\n\n")
        u.aguarde(1000)

        danoRecebido = ataqueSerpenteVenenosa - defesa[classe]
        se (opcaoDefesa==verdadeiro) {
          vidaAtual[classe] -= danoRecebido/2
          escreva("A fera lhe atacou e causou ", danoRecebido/2, " de dano!")
          se (contraAtaque==verdadeiro) {
            u.aguarde(1000)
            escreva("\nVocê conseguiu contra-atacar e causou ", danoContrAtaque, " de dano!")
            vidaSerpenteVenenosa -= danoContrAtaque - defesaSerpenteVenenosa
          }
          se (vidaAtual[classe]<=0) {
            cadeia opcao
            faca {
              escreva("Você perdeu. \n")
              escreva("\n1. Recomeçar | 2. Sair: ")
              leia (opcao)
            } enquanto (opcao!=1 e opcao!=2)

            se (opcao==1) {
              menu()
            } 

            se (opcao==2) {
              pare
              pare
            }
            pare
          } 
        } senao {
          vidaAtual[classe] -= danoRecebido
          escreva("A fera lhe atacou e causou ", danoRecebido, " de dano!")
          se (vidaAtual[classe]<=0) {
            cadeia opcao
            faca {
              escreva("Você perdeu. \n")
              escreva("\n1. Recomeçar | 2. Sair: ")
              leia (opcao)
            } enquanto (opcao!=1 e opcao!=2)

            se (opcao==1) {
              menu()
            } 

            se (opcao==2) {
              pare
              pare
            }
            pare
          }
        }

        u.aguarde(2000)
        turno++
      } enquanto (vidaAtual[classe]>0 e vidaSerpenteVenenosa>0)
  }

  funcao posSerpente () {
    cadeia opcao
    faca {
      limpa()
      vidaAtual[classe] = vidaMaxima[classe]
      statusHeroi()
      escreva("Você respira aliviado após a batalha, mas percebe que cada passo adentra ainda mais na escuridão.\n")
      escreva("Galhos secos estalam sob seus pés e sons estranhos ecoam à distância.\n")
      escreva("A trilha leva você a uma antiga ponte de madeira que atravessa um rio enevoado.\n")
      escreva("Ao atravessar a ponte, sente um calafrio... algo maior está por vir.\n")
      escreva("1. Seguir o caminho: ")
      leia(opcao)
    } enquanto (opcao!=1)

    limpa()
    statusHeroi()
    u.aguarde(1000)

    escreva("De repente, um estrondo! Algo gigantesco quebra as árvores à sua frente!\n")
    u.aguarde(1000)
    escreva("Sem tempo para reagir, um braço colossal surge das sombras...\n")
    u.aguarde(1000)
    escreva("*POW!* \n")
    u.aguarde(1000)
    escreva("O Guardião da Floresta desfere um soco brutal contra você!\n")
    u.aguarde(2500)

    inteiro danoInicial = 10
    vidaAtual[classe] -= danoInicial

    escreva("Você é arremessado contra o tronco de uma árvore, sentindo uma dor lancinante. Vida restante: ", vidaAtual[classe], "\n")
    u.aguarde(2500)

    faca {
      limpa()
      escreva("O Guardião ruge furiosamente, seus olhos vermelhos brilhando na penumbra. Não há escapatória\n")
      escreva("1. Tentar sobreviver: ")
      leia(opcao)
    } enquanto (opcao!=1)

  }

  funcao introGuardiao () {
      inteiro vidaGuardiao = 140, ataqueGuardiao = 35, defesaGuardiao = 20
      cadeia opcao

      faca {
        escreva("|                                                          @%@        @%#@                                       \n")
        escreva("|                                                         %*@           @##@                                     \n")
        escreva("|                                                        %##@            @%*%@                                   \n")
        escreva("|                                                       @%*%              @#*#@                                  \n")
        escreva("|                                                       @#*%              @%#*%                                  \n")
        escreva("|                                                      @%#*%               @##+@                                 \n")
        escreva("|                                                      @%##*@              @###+@                                \n")
        escreva("|                                                      @%##**@            @####+@                                \n")
        escreva("|                                                       @####*%          @%####+@                                \n")
        escreva("|                                                       @#####**#@@   @@#######+@                                \n")
        escreva("|                                                @@%@@   @#########**###########@%%@                             \n")
        escreva("|        @@@@@@@@@@%@                        @#*#******%#*%############%#######@##***@@                          GUARDIÃO DA FLORESTA\n")
        escreva("|        @@%%%%@%%%%%%@                    @@*###%#####*%##%############%######*#####*@@                         \n")
        escreva("|      @@%%%%%%#%%%%%%%%%%@               @#*#####%######%#%############%#############%#@                        \n")
        escreva("|     @@%%%%%%%%%%%%%##%%%@            @@@#*#######%#####%%###########%%#%@###%%######%*#*@                      \n")
        escreva("|    @@%%@%%%%%%%%%%%%%%%%@@@    @@%#@#*##%########%#####%#**######%@@%##%%@@#**%####%#*##*#%#@                  VIDA: ", vidaGuardiao ,"\n")
        escreva("|    @%%%%@%%%%%%%%%@@%%%%%@%  @%*####%###%%############%*++++++####@@@%#%%%%*+++*@####%####****#@               \n")
        escreva("|    @%%@%%%%%%%%%%%%%%%%@%@@@%%*@%#%%#%@#%##%%########*++++++===+#%#####%#%+++++++%#%%%#%#######*@              ATAQUE: ", ataqueGuardiao ,"\n")
        escreva("|    @@@%%%%%%#%%%%%%%%%%%%%%#*****#####@###############***##**+++++++**#*+++***=++*%@@@@%###***###@             \n")
        escreva("|    @@%%%%%%%%%%%%%%%#%%%%@   @##%%%%##@@@@@%%%%###****+++++++++++++**###%%%####%+**@@ @@%%#**+#%#@             DEFESA: ", defesaGuardiao ,"\n")
        escreva("|     @%%%##%%%%%%%%%%%%%%%@    %%%%%%%@@   %*++++***+++++=+++++************####**********%#####*######@@        \n")
        escreva("|     @%@%%%%%%%%##%%%%#@@                  %+=#*+++++++======================+++++++*@  @@##%@@@@@%###@@        \n")
        escreva("|      @@@@%%%%%%%%%%%@@                    %#+++++++++=================+++====+++++++@     @@@@                 \n")
        escreva("|          @@%@@@@@%%@                      %++++++++++======--=##*+++=====+*#=-=+++++@                          \n")
        escreva("|                                           %*++++++++=====##==================*#==++*@                          \n")
        escreva("|                                           @#+++++=-+#++=======================++**=@                           \n")
        escreva("|                                            #*+==##+++++======================+++++#                            \n")
        escreva("|                                             %#*++++++++++==================++++++%@                            \n")
        escreva("|                                              @#++++++++++++==---+#%%###%#==++++##%@                            \n")
        escreva("|                                             @%###*++++==+**###*******##***##*#####%                            \n")
        escreva("|                                             @%###%@@%%####**********##***#%@%#####%@                           \n")
        escreva("|                                            @%#%@@      @@@%%#####%%%%%@@@     @@%%##@                          \n")
        escreva("|                                             @%%@                                 %#%@                          \n")
        escreva("|                                              @@                                   @@                           \n\n")
        escreva("1. Continuar: ")
        leia(opcao)
      } enquanto (opcao!=1)      

    }

    funcao batalhaGuardiao () {

      inteiro vidaGuardiao = 140, ataqueGuardiao = 35, defesaGuardiao = 20

      logico contraAtaque = falso

      inteiro turno = 1, opcao, danoCausado, danoRecebido, danoContrAtaque, numSort
      logico opcaoDefesa = falso

      danoContrAtaque = ataque[classe]*0.30


      faca {
        faca {
          contraAtaque = falso
          opcaoDefesa = falso
          limpa()
          escreva("|-----BATALHA-----|\n\n")
          escreva(nomeHeroi ," x Guardião da Floresta\n\n" )
          escreva("SUA VIDA: ", vidaAtual[classe], " | VIDA DO INIMIGO: ", vidaGuardiao)
          escreva("\nTURNO: ", turno)
          escreva("\n\nSUA VEZ: O QUE DESEJA FAZER?\n1. Atacar | 2. Defender (Chance de contra-ataque: 33%)\n\nDigite a opção escolhida: ")
          leia(opcao)
        } enquanto (opcao>2 ou opcao<1)

        se (opcao==1) {
          danoCausado = ataque[classe] - defesaGuardiao
          se (danoCausado<0) {
            danoCausado = 0
          } 
          vidaGuardiao -= danoCausado

          escreva("\nVocê causou ", danoCausado, " de dano!")
          u.aguarde(2000)
          se (vidaGuardiao<=0) {
             faca {
              limpa()
              escreva("Você derrotou o Guardião!\n\n")
              escreva("1. Prosseguir: ")
              leia(opcao)
            } enquanto (opcao!=1)
            pare
            ganharXp(100)
          }
        }    

        se (opcao==2) {
          numSort = u.sorteia(1,3)
          opcaoDefesa = verdadeiro
          escreva("\nVocê escolheu se defender, o próximo ataque do seu inimigo causará metade do dano!")

          se (numSort==2) {
            contraAtaque = verdadeiro
          }
        }

        escreva("\n\nVEZ DO INIMIGO\n\n")
        u.aguarde(1000)

        danoRecebido = ataqueGuardiao - defesa[classe]
        se (opcaoDefesa==verdadeiro) {
          vidaAtual[classe] -= danoRecebido/2
          escreva("O guardião lhe atacou e causou ", danoRecebido/2, " de dano!")
          se (contraAtaque==verdadeiro) {
            u.aguarde(1000)
            escreva("\nVocê conseguiu contra-atacar e causou ", danoContrAtaque, " de dano!")
            vidaGuardiao -= danoContrAtaque
          }
          se (vidaAtual[classe]<=5) {
            escreva("\nVocê está prestes a desmaiar...\n")
            u.aguarde(1000)
            escreva("??? (gritando): Abaixaaaaaaa!!!\n")
            u.aguarde(1000)
            escreva("* Uma flecha silva no ar e atinge o Guardião! *\n")
            u.aguarde(2000)
            escreva("Eyla: 'Você está bem? Eu ouvi barulhos vindos da floresta... Não se preocupe, estou com você agora.'\n")
            u.aguarde(3000)
            escreva("* O Guardião da Floresta recua para as sombras... *\n")
            u.aguarde(1000)
            escreva("Você desmaia devido aos ferimentos, mas sente que está seguro.\n")
            u.aguarde(5000)
            faca {
              escreva("\n1. Continuar: ")
              leia (opcao)
            } enquanto (opcao!=1)
            pare
          } 
        } senao {
          vidaAtual[classe] -= danoRecebido
          escreva("O guardião lhe atacou e causou ", danoRecebido, " de dano!")
          se (vidaAtual[classe]<=5) {
            inteiro opcao
            escreva("\nVocê está prestes a desmaiar...\n")
            u.aguarde(1000)
            escreva("??? (gritando): Abaixaaaaaaa!!!\n")
            u.aguarde(1000)
            escreva("* Uma flecha silva no ar e atinge o Guardião! *\n")
            u.aguarde(2000)
            escreva("Eyla: 'Você está bem? Eu ouvi barulhos vindos da floresta... Não se preocupe, estou com você agora.'\n")
            u.aguarde(3000)
            escreva("* O Guardião da Floresta recua para as sombras... *\n")
            u.aguarde(1000)
            escreva("Você desmaia devido aos ferimentos, mas sente que está seguro.\n")
            u.aguarde(5000)
            faca {
              escreva("\n1. Perguntar: 'Quem é você?': ")
              leia (opcao)
            } enquanto (opcao!=1)
            pare
          }
        }

        u.aguarde(2000)
        turno++
      } enquanto (vidaAtual[classe]>0 e vidaGuardiao>0)

    }

    funcao eyla () {
      cadeia opcao 
      faca {
        limpa()
        escreva("|                              @@@@@@           @@@@              \n")      
        escreva("|                      @@%%++@@           @@++@@@@                \n")
        escreva("|          @@@@@     @@%%++@@               @@%%+#@@ @@@@         \n")
        escreva("|          @@@+@@@ @@%%++@@                   @@%#+@@@%@@         \n")
        escreva("|          @@@+@@@ @@%%++@@@@@@@@@@@@@@@@@@@   @@@+@@@%@@         \n")
        escreva("|          @@@+++@@@%%%++@@::      :::      @@@@@@+*%%%@@         EYLA\n")
        escreva("|          @@@%*+++++++++++@@@@       .:        @@+++#%@@         \n")
        escreva("|     @@@@ @@@%%%%%%%%%+++++++#@@@=     ::  @@@@+++*%%%@@         VIDA: ???\n")
        escreva("|     @@++@@ @@@%%%%%%%%%%%%%+++++%@@@@@@@@@+++++*%%%@@@ @@@@     \n")
        escreva("|     @@%%+*@@@@+++#%%%%%%%%%%%%#+%@-...  @@++++%%%%%@@@@%%@@     ATAQUE: ???\n")
        escreva("|       @@%#+++*%%%%%@@@@@@@@%%%@@.   :===  @@%%%%@@@@%%%@@       \n")
        escreva("|       @@@@###@@@@@@++++++++@@@@@:     ==::@@@@@@=#@@@@@@@       DEFESA: ???\n")
        escreva("|         @@@@@@@%***--    ::+++++*#      @@++++*+-#@@@@@         \n")
        escreva("|          @@@===.       ..::.... -***++++::  .::. *@@@@          \n")
        escreva("|          @@@+++:       ::......  .-=====    .... +@@@@@         \n")
        escreva("|          @@@%*+:...    ::    ..             ..   :%%%@@         \n")
        escreva("|          @@@+:   =+    ::   ...             ..    :=+@@         \n")
        escreva("|          @@@@#===@@    ::....:..............::.. .=@@@          \n")
        escreva("|          @@@:#@@@@%****:::::::::::::::::::::::::*@@@            \n")
        escreva("|          @@@  -@@@%******:::::::::::::::::::::::*@@@            \n")
        escreva("|          @@@---@@@%*************-:::::::::::*****@@@            \n")
        escreva("|         @@  ---@@@%%%*******+:.   .:    ::    ***@@@            \n")
        escreva("|         @@  ---@@#***%%%%%%%%+++. :+++  ++++  %@@@              \n")
        escreva("|         @@  -%@%*********:::=@*.  :*..  **..  :=@@              \n")
        escreva("|         @@---%@%*******:::::=@@%. .:+*  ::%%  :=@@              \n")
        escreva("|          @@@@#:=*****::::::@@%%%%%-:+***::%%%#:=@@              \n")
        escreva("|          @@@***::::::....::@@%%%=:=***::%%%%%*.:@@              \n")
        escreva("|          @@@*******::::@@@@@@@@@*:=***::@@@@@@:=@@              \n")
        escreva("|            @@@@@@@@@@@@@@       @@@@@@@@@@@@@@@@@@              \n")
        escreva("|                    @@@@                 @@@@                    \n\n")
        escreva("1. Continuar: ")
        leia(opcao)
      } enquanto (opcao!=1)

      limpa()
      vidaAtual[classe] = vidaMaxima[classe]
      statusHeroi()
      escreva("Eyla:\n")
      escreva("\n- Você está a salvo… por enquanto. As trevas de Eldoria são impiedosas, mas não deixarei que o consumam tão cedo.")
      u.aguarde(1000)
      escreva("\n- Meu nome... é Eyla. Quem eu sou de verdade não importa agora. O que importa… é que você continue em frente.")
      u.aguarde(1000)
      escreva("\n- Venha. O caminho é longo, e você não deve trilhá-lo sozinho.")
      u.aguarde(5000)
      faca {
        escreva("\n\n1. Seguir Eyla: ")
        leia(opcao)
      } enquanto (opcao!=1)

      faca {
        limpa()
        statusHeroi()
        escreva("Antes que prossigamos... há algo que preciso lhe ensinar.\n")
        escreva("Em Eldoria, a força bruta nem sempre vence… é a disciplina que molda o verdadeiro guerreiro.\n")
        escreva("Concentre sua energia, respire fundo… e acumule sua Força Interior.\n")
        escreva("Quando fizer isso, seu próximo golpe será devastador, esmagando seu inimigo com poder muito além do normal.\n")
        escreva("Mas cuidado... esse esforço tem um preço. Seu corpo se desgastará, e só poderá usar essa técnica poucas vezes em cada batalha.\n")
        escreva("Aprenda a equilibrar poder e prudência. Isso pode ser a diferença entre a vitória… e a sua ruína.\n")
        escreva("\n1. Concentrar energia: ")
        leia(opcao)
      } enquanto (opcao!=1)

      faca {
        limpa()
        escreva(">>> NOVA HABILIDADE DESBLOQUEADA: FORÇA INTERIOR <<<\n")
        escreva("Você aprendeu a concentrar sua energia para potencializar seu próximo ataque!\n")
        escreva("Efeito: Ao usar 'Força Interior', seu próximo ataque causará 120% de dano adicional.\n")
        escreva("Cuidado: Essa técnica desgasta seu corpo e só pode ser usada um número limitado de vezes por batalha.\n")
        escreva("Agora você pode usar o comando especial durante as lutas:\n")
        escreva("Digite '3' em combate para ativar 'Força Interior' e preparar um ataque devastador!\n")
        escreva("\n1. Continuar: ")
        leia(opcao)
      } enquanto (opcao!=1)

    }

    funcao vilaAbandonada () {
      prologoVila()
      ganharXp(90)
      contadorRegiao++
      historiaVila()
      chegadaVila()
      batalhaCeifadorErrante()
      ganharXp(70)
      pocaoDeCura()
      posCeifadorErrante()
      batalhaLadraoDeAlmas()
      ganharXp(100)
      historiaAposLadraoAlmas()
      cavaleiroEspectral()
      batalhaCavaleiroEspectral()
      ganharXp(200)
    }

  funcao prologoVila () {
      cadeia opcao
      faca {
        limpa()
        statusHeroi ()
        escreva("Você deixa para trás a densa Floresta da Névoa, com cicatrizes que jamais se apagarão.\n")
        escreva("O caminho à frente é silencioso, exceto pelo assovio do vento entre as árvores mortas.\n")
        escreva("Logo, ruínas antigas surgem no horizonte... é a Vila Abandonada, o próximo desafio.\n")
        escreva("O ar fica mais pesado, como se a própria terra lamentasse o destino daquele lugar.\n\n")
        escreva("1. Entrar na Vila Abandonada: ")
        leia(opcao) 
      } enquanto (opcao!=1)
  }


  funcao historiaVila () {
      cadeia opcao
      faca {
        limpa()
        statusHeroi ()
        escreva("\n")
        escreva("Você adentra a Vila Abandonada...\n")
        escreva("As ruas estão cobertas por uma névoa densa.\n")
        escreva("Portas quebradas rangem ao vento e o silêncio é perturbador.\n")
        escreva("Há sinais de uma antiga vida... mas nenhuma alma à vista.\n")
        escreva("Enquanto explora uma casa em ruínas, você encontra uma carta envelhecida sobre uma mesa.\n\n")
        escreva("1. Ler carta | 2. Ignorar e seguir o caminho: ")
        leia(opcao) 
      } enquanto (opcao!=1 e opcao!=2)

      se (opcao==1) {
        cartaVila()
      }
  }

  funcao cartaVila() {
    cadeia opcao
    faca {
      limpa()
      statusHeroi ()
      escreva("O papel está rasgado, mas ainda é possível ler alguns trechos:\n\n")
      escreva("\"...eles vieram ao cair da noite... não houve tempo para escapar...\"\n")
      escreva("\"...quem encontrar esta carta, não confie naquilo que parece humano...\"\n")
      escreva("\"...o sino da igreja toca sozinho, e com ele, a perdição...\"\n\n")
      escreva("1. Guardar a carta: ")
      leia(opcao)
    } enquanto (opcao!=1)

    ganharXp(40)

    faca {
      limpa()
      statusHeroi ()
      escreva("Você guarda a carta e sente um calafrio percorrer sua espinha.\n")
      escreva("Algo nesta vila permanece... aguardando...\n")
      escreva("Melhor seguir em frente, mas com extrema cautela.\n\n")
      escreva("1. Seguir pela Vila Abandonada: ")
      leia(opcao)
    } enquanto (opcao!=1)
  }

  funcao chegadaVila() {
    cadeia opcao
    faca {
      limpa()
      statusHeroi()
      escreva("A névoa cobre cada rua, tornando difícil distinguir amigos de inimigos.\n")
      escreva("O chão range sob seus pés, e o som de algo — ou alguém — se aproximando, ecoa pelas vielas.\n")
      escreva("De repente, uma sombra salta de trás de uma carroça quebrada!\n")
      escreva("Prepare-se... o primeiro inimigo da Vila Abandonada está à sua frente!\n\n")
      escreva("1. Lutar: ")
      leia(opcao)
    } enquanto (opcao!=1)
  }

  funcao batalhaCeifadorErrante () {
        
      logico contraAtaque = falso

      inteiro vidaCeifadorErrante = 150, ataqueCeifadorErrante = 35, defesaCeifadorErrante = 20

      inteiro turno = 1, danoCausado, danoRecebido, danoContrAtaque, numSort, recargaHabilidade = 0
      logico opcaoDefesa = falso, voltar = falso, ataqueCarregado = falso
      cadeia opcao

      danoContrAtaque = ataque[classe]/2


      faca {
        faca {
          voltar = falso
          contraAtaque = falso
          opcaoDefesa = falso
          limpa()
          escreva("|-----BATALHA-----|\n\n")
          escreva(nomeHeroi ," x Ceifador Errante\n\n" )
          escreva("SUA VIDA: ", vidaAtual[classe], " | VIDA DO INIMIGO: ", vidaCeifadorErrante)
          escreva("\nTURNO: ", turno)
          escreva("\n\nSUA VEZ: O QUE DESEJA FAZER?\n1. Atacar | 2. Defender (Chance de contra-ataque: 33%) | 3. Carregar ataque (Tempo de recarga: ", recargaHabilidade," Turnos)\n\nDigite a opção escolhida: ")
          leia(opcao)
        } enquanto (opcao!=1 e opcao!=2 e opcao!=3 ou voltar==verdadeiro)


        se (opcao==1) {
          danoCausado = ataque[classe] - defesaCeifadorErrante
          se (ataqueCarregado==verdadeiro) {
            danoCausado += danoCausado*1.20
            ataqueCarregado = falso
          }
          se (danoCausado<0) {
            danoCausado = 0
          } 
          vidaCeifadorErrante -= danoCausado

          escreva("\nVocê causou ", danoCausado, " de dano!")
          u.aguarde(2000)
          se (vidaCeifadorErrante<=0) {
            faca {
              limpa()
              escreva("Você derrotou o Ceifador!\n\n")
              escreva("1. Prosseguir: ")
              leia(opcao)
            } enquanto (opcao!=1)
            pare
          }
        }    

        se (opcao==2) {
          numSort = u.sorteia(1,3)
          opcaoDefesa = verdadeiro
          escreva("\nVocê escolheu se defender, o próximo ataque do seu inimigo causará metade do dano!")

          se (numSort==2) {
            contraAtaque = verdadeiro
          }
        }

        se (opcao==3) {
          se (recargaHabilidade==0) {
            escreva("\nSeu próximo ataque causará 120% de dano a mais!")
            ataqueCarregado = verdadeiro
            recargaHabilidade += 4
            u.aguarde(2000)
          } senao {
            escreva("\nA habilidade ainda não está pronta. Tempo restante: ", recargaHabilidade, " turnos!")
            u.aguarde(2000)
            voltar = verdadeiro
          }
        }

        se (voltar==falso) {
          escreva("\n\nVEZ DO INIMIGO\n\n")
          u.aguarde(1000)

          danoRecebido = ataqueCeifadorErrante - defesa[classe]
          se (opcaoDefesa==verdadeiro) {
            vidaAtual[classe] -= danoRecebido/2
            escreva("O Ceifador lhe atacou e causou ", danoRecebido/2, " de dano!")
            se (contraAtaque==verdadeiro) {
              u.aguarde(1000)
              escreva("\nVocê conseguiu contra-atacar e causou ", danoContrAtaque, " de dano!")
              vidaCeifadorErrante -= danoContrAtaque - defesaCeifadorErrante
            }
            se (vidaAtual[classe]<=0) {
              cadeia opcao
              faca {
                escreva("Você perdeu. \n")
                escreva("\n1. Recomeçar | 2. Sair: ")
                leia (opcao)
              } enquanto (opcao!=1 e opcao!=2)

              se (opcao==1) {
                menu()
              } 

              se (opcao==2) {
                pare
                pare
              }
              pare
            } 
          } senao {
            vidaAtual[classe] -= danoRecebido
            escreva("O Ceifador lhe atacou e causou ", danoRecebido, " de dano!")
            se (vidaAtual[classe]<=0) {
              cadeia opcao
              faca {
                escreva("\nVocê perdeu. \n")
                escreva("\n1. Recomeçar | 2. Sair: ")
                leia (opcao)
              } enquanto (opcao!=1 e opcao!=2)

              se (opcao==1) {
                menu()
              } 

              se (opcao==2) {
                pare
                pare
              }
              pare
            }
          }

          u.aguarde(2000)
          turno++
          se (recargaHabilidade>0) {
            recargaHabilidade--
          }
        }
      } enquanto (vidaAtual[classe]>0 e vidaCeifadorErrante>0)
  }

  funcao pocaoDeCura() {
    cadeia opcao

    faca {
      limpa()
      statusHeroi()
      escreva("Após derrotar o Ceifador Errante, você observa os escombros ao redor.\n")
      escreva("Entre as tábuas quebradas e pedras antigas, algo brilha discretamente.\n")
      escreva("Você se aproxima e encontra uma pequena poção misteriosa, ainda intacta.\n")
      escreva("O que você deseja fazer? 1. Beber a poção | 2. Ignorar: ")
      leia(opcao)
    } enquanto (opcao!=1 e opcao!=2)

    se (opcao==1)
    cadeia opcao
    faca {
      limpa()
      vidaAtual[classe] = vidaMaxima[classe]
      statusHeroi()
      escreva("Ao bebê-la, sente suas forças sendo parcialmente restauradas.\n")
      escreva("\n")
      escreva(">>> Sua vida foi totalmente recuperada! <<<\n")
      escreva("1. Continuar: ")
      leia(opcao)
    } enquanto (opcao!=1)
    
  }

  funcao posCeifadorErrante() {
    cadeia opcao
    faca {
      limpa()
      statusHeroi()
      escreva("Você respira aliviado após a batalha, mas não por muito tempo.\n")
      escreva("Enquanto limpa o suor do rosto, ouve passos pesados ecoando entre as casas destruídas.\n")
      escreva("Do meio da névoa, surge uma silhueta robusta, arrastando uma corrente enferrujada.\n")
      escreva("Os olhos da criatura brilham com um vermelho ameaçador, e seu rugido quebra o silêncio mortal da vila.\n")
      escreva("Não há tempo para pensar... outro inimigo se aproxima!\n")
      escreva("\n")
      escreva("Prepare-se: O Ladrão de Almas está vindo em sua direção!\n")
      escreva("1. Lutar: ")
      leia(opcao)
    } enquanto (opcao!=1)

  }

    funcao batalhaLadraoDeAlmas () {
        
      logico contraAtaque = falso

      inteiro vidaLadraoDeAlmas = 200, ataqueLadraoDeAlmas = 40, defesaLadraoDeAlmas = 25

      inteiro turno = 1, danoCausado, danoRecebido, danoContrAtaque, numSort, recargaHabilidade = 0
      logico opcaoDefesa = falso, voltar = falso, ataqueCarregado = falso
      cadeia opcao

      danoContrAtaque = ataque[classe]/2


      faca {
        faca {
          voltar = falso
          contraAtaque = falso
          opcaoDefesa = falso
          limpa()
          escreva("|-----BATALHA-----|\n\n")
          escreva(nomeHeroi ," x Ladrão de Almas\n\n" )
          escreva("SUA VIDA: ", vidaAtual[classe], " | VIDA DO INIMIGO: ", vidaLadraoDeAlmas)
          escreva("\nTURNO: ", turno)
          escreva("\n\nSUA VEZ: O QUE DESEJA FAZER?\n1. Atacar | 2. Defender (Chance de contra-ataque: 33%) | 3. Carregar ataque (Tempo de recarga: ", recargaHabilidade," Turnos)\n\nDigite a opção escolhida: ")
          leia(opcao)
        } enquanto (opcao!=1 e opcao!=2 e opcao!=3 ou voltar==verdadeiro)


        se (opcao==1) {
          danoCausado = ataque[classe] - defesaLadraoDeAlmas
          se (ataqueCarregado==verdadeiro) {
            danoCausado += danoCausado*1.20
            ataqueCarregado = falso
          }
          se (danoCausado<0) {
            danoCausado = 0
          } 
          vidaLadraoDeAlmas -= danoCausado

          escreva("\nVocê causou ", danoCausado, " de dano!")
          u.aguarde(2000)
          se (vidaLadraoDeAlmas<=0) {
            faca {
              limpa()
              escreva("Você derrotou o Ladrão de Almas!\n\n")
              escreva("1. Prosseguir: ")
              leia(opcao)
            } enquanto (opcao!=1)
            pare
          }
        }    

        se (opcao==2) {
          numSort = u.sorteia(1,3)
          opcaoDefesa = verdadeiro
          escreva("\nVocê escolheu se defender, o próximo ataque do seu inimigo causará metade do dano!")

          se (numSort==2) {
            contraAtaque = verdadeiro
          }
        }

        se (opcao==3) {
          se (recargaHabilidade==0) {
            escreva("\nSeu próximo ataque causará 120% de dano a mais!")
            ataqueCarregado = verdadeiro
            recargaHabilidade += 4
            u.aguarde(2000)
          } senao {
            escreva("\nA habilidade ainda não está pronta. Tempo restante: ", recargaHabilidade, " turnos!")
            u.aguarde(2000)
            voltar = verdadeiro
          }
        }

        se (voltar==falso) {
          escreva("\n\nVEZ DO INIMIGO\n\n")
          u.aguarde(1000)

          danoRecebido = ataqueLadraoDeAlmas - defesa[classe]
          se (opcaoDefesa==verdadeiro) {
            vidaAtual[classe] -= danoRecebido/2
            escreva("O Ladrão de Almas lhe atacou e causou ", danoRecebido/2, " de dano!")
            se (contraAtaque==verdadeiro) {
              u.aguarde(1000)
              escreva("\nVocê conseguiu contra-atacar e causou ", danoContrAtaque, " de dano!")
              vidaLadraoDeAlmas -= danoContrAtaque - defesaLadraoDeAlmas
            }
            se (vidaAtual[classe]<=0) {
              cadeia opcao
              faca {
                escreva("Você perdeu. \n")
                escreva("\n1. Recomeçar | 2. Sair: ")
                leia (opcao)
              } enquanto (opcao!=1 e opcao!=2)

              se (opcao==1) {
                menu()
              } 

              se (opcao==2) {
                pare
                pare
              }
              pare
            } 
          } senao {
            vidaAtual[classe] -= danoRecebido
            escreva("O Ladrão de Almas lhe atacou e causou ", danoRecebido, " de dano!")
            se (vidaAtual[classe]<=0) {
              cadeia opcao
              faca {
                escreva("\nVocê perdeu. \n")
                escreva("\n1. Recomeçar | 2. Sair: ")
                leia (opcao)
              } enquanto (opcao!=1 e opcao!=2)

              se (opcao==1) {
                menu()
              } 

              se (opcao==2) {
                pare
                pare
              }
              pare
            }
          }

          u.aguarde(2000)
          turno++
          se (recargaHabilidade>0) {
            recargaHabilidade--
          }
        }
      } enquanto (vidaAtual[classe]>0 e vidaLadraoDeAlmas>0)
  }

  funcao historiaAposLadraoAlmas() {
    cadeia opcao
    faca {
      limpa()
      statusHeroi()
      escreva("O Ladrão de Almas cai ao chão, sua essência se dissipando como fumaça na penumbra da Vila Abandonada.\n")
      escreva("Enquanto você recupera o fôlego, sente o ar tornar-se ainda mais gélido, como se a própria morte rondasse os becos escuros.\n")
      escreva("Você caminha lentamente pela rua deserta, quando percebe marcas profundas no chão, como arranhões causados por uma lâmina.\n")
      escreva("Seguindo as trilhas, chega até o que resta da antiga capela da vila.\n")
      escreva("As portas estão entreabertas e um sussurro espectral ecoa, chamando por sua alma.\n\n")
      escreva("De repente, o chão treme levemente e uma figura surge em meio à névoa: um Cavaleiro Espectral, envolto em armadura corroída pelo tempo.\n")
      escreva("Ele ergue sua espada maldita, pronto para proteger os segredos enterrados naquele lugar.\n\n")
      escreva(">>> O Cavaleiro Espectral se aproxima em alta velocidade! <<<\n")
      escreva("1. Ir pra cima com tudo | 2. Desviar: ")
      leia(opcao)
    } enquanto (opcao!=1 e opcao!=2)

    se (opcao==1) {
      faca {
        limpa()
        statusHeroi()
        escreva(">>> HABILIDADE DO INIMIGO <<<\n")
        escreva("Investida Espectral: sempre que você tenta desviar ou defender, o ataque do Cavaleiro causará 120% de dano a mais\n")
        escreva("Você e o Cavaleiro colidem entre si\n")
        escreva("O inimigo está muito enfurecido, a única opção é: \n")
        escreva("1. LUTAR: ")
        leia(opcao)
      } enquanto (opcao!=1) 
    }

    se (opcao==2) {
      faca {
        limpa()
        vidaAtual[classe] -= 20
        statusHeroi()
        escreva(">>> HABILIDADE DO INIMIGO <<<\n")
        escreva("Investida Espectral: sempre que você tenta desviar ou defender, o ataque do Cavaleiro causará 50% de dano a mais\n")
        escreva("Vida restante: ", vidaAtual[classe])
        escreva("\n1. LUTAR: ")
        leia(opcao)
      } enquanto (opcao!=1) 
    }
  }

  funcao cavaleiroEspectral() {
    cadeia opcao
    faca {
      limpa()
      escreva("                                                                                                                   \n")               
      escreva("                                                                      :-*          :::                             \n")
      escreva("                                                        %*           .--%*      ::::                               \n")
      escreva("                                                        %%*=          #@@@@@:-----                                 \n")
      escreva("                                                        %%@+=         :*%%@+:--                                    \n")
      escreva("                                                        %%%--*+      .:::=%+=-                                     \n")
      escreva("                                                        ##%@#::+-:..:-%*+---*%                                     \n")
      escreva("                                                        %#%@@%%=::=+##@*+#@%%           #                          \n")
      escreva("                                                         *%@@@@+#*#:-=##-*:::@+**  %%%#**                          CAVALEIRO ESPECTRAL\n")
      escreva("                                                        *#=::+@@%%%%%%%=::::-:+#:=****++                           \n")
      escreva("                                                       *#+=+#*##@@#%@%*:%%%-+*@@:+::-+                             \n")
      escreva("                                                      ::#%%@@@@@@@=-:*%@%:%#+%@#%@@@##                             \n")
      escreva("                                                    %*-*@@@@@#@@@@@@@%-##-%**@**%@@@                               VIDA: 300\n")
      escreva("                                                 ::::=*%@@@%#   @@%%+#%%-:#%#@+#@@%@   :::                         \n")
      escreva("                                                =-#%*=@          @@@@=:::::##:+%@%%%    %#:-::   :                 \n")
      escreva("                                               **=#====            @@%#:::::::+%%%%#**++*%%-=   ::::               ATAQUE: 40\n")
      escreva("                                           ::+#%#                   @#-::==:-*-@##***+###@%%::::::--               \n")
      escreva("                                ##@    **=#*#%@                    @@%#+####**%%@**#@%%@@%%@*:::::                 \n")
      escreva("                                ##@%##+:::*@@                    @@@%**@@%=+*##%#@%%##@@@%=-##:::                  DEFESA: 20\n")
      escreva("                                  @@**%@%#*##%                  @%*+-:%%%%:***#%%%#%%%%%##+:+*                     \n")
      escreva("                                 @*+#%@@                       @%#*%=::###*++*#++###%%%%@%=-*##                    \n")
      escreva("                    *%%@@@      @%+###*#%@%@                   @##%++==+*#--*+=*:-*####%%%%*=+#                    \n")
      escreva("                 *+=-=***%%%%####**%#=-+***#                  @%%@*==--:::**-=+#::+*###   %#+=+*                   \n")
      escreva("               *#*+=::===*%*++:*%%*=-+::::::                  @%@%#*###*+#+#+:=#-::+*#     #+=-+*                  \n")
      escreva("             *+=*=::::::-=+*:::::-#*:--:::                    %#@%@@@@@%*#%*#%@%*::+=      *#+:=-*                 \n")
      escreva("            =:::::::::::::::::::::-::::::                     %%@%@@@@@@#@@@%##%-=++=       #+::++                 \n")
      escreva("          ::::::::::::::::::::=::::::::                       @%@%%@@@@@@@%=+*+@=++++      -:-::-+                 \n")
      escreva("         ::::-          :::::::: :::                           @%#++++=-:##%==*%%++++  :::::::::::                 \n")
      escreva("       :::                                                    %#**--=+::::@#++*%% ++ ::  :::::::::                 \n")
      escreva("                                                          :::#*#+-::--::::=@#-=#+          :::::::                 \n")
      escreva("                                                 :     :::::+*##+-::::::==:@%*=*=+           ::::-                 \n")
      escreva("                                              :::::   ::::::#%#*++=---=++=-%%*=+:+                                 \n")
      escreva("                                             :::    :::::::#%#******+**++=#%#-=+-=+                                \n")
      escreva("                                            :::       ::::#+####****#**=-=%#*:-++:==                               \n")
      escreva("                                           ::::      :::::==%#**#%**##*::-#*-:=++-+=                               \n")
      escreva("                                          ::::::::::::::::==##*#--*-:+:---::::=+*=+                                \n")
      escreva("                                          ::::::::::::::--==#%####*###--::::-:%*==                                 \n")
      escreva("                                          ::::::::::::--= #+####*+##   ::-::::-==+                                 \n")
      escreva("                                             ::::::::    **===##%+%     =::=-=-==                                  \n")
      escreva("                                                         #*::-=##%      *+==== ==                                  \n")
      escreva("                                                         #**+*#%        *++===                                     \n")
      escreva("                                                         #*#*%#          ++====                                    \n")
      escreva("                                                         #***%#           +=====                                   \n")
      escreva("                                                        +****%##          +===-==                                  \n")
      escreva("                                                        *+=+*#*#           ---=--                                  \n")
      escreva("                                                        *++*+###          :::::::-                                 \n")
      escreva("                                                        =++++##*           ::::::-                                 \n")
      escreva("                                                       :--:++#==                                                   \n")
      escreva("                                                       :--:::--=-                                                  \n")
      escreva("                                                        ---::--=                                                   \n")
      escreva("                                                          ::--                                                     \n")
      escreva("\n1. Continuar: ")
      leia(opcao)
    } enquanto (opcao!=1)
  }

      funcao batalhaCavaleiroEspectral () {
        
      logico contraAtaque = falso

      inteiro vidaCavaleiroEspectral = 350, ataqueCavaleiroEspectral = 40, defesaCavaleiroEspectral = 20

      inteiro turno = 1, danoCausado, danoRecebido, danoAtaqueCarregado = ataque[classe]
      logico opcaoDefesa = falso, voltar = falso, ataqueCarregado = falso
      cadeia opcao


      faca {
        faca {
          voltar = falso
          opcaoDefesa = falso
          limpa()
          escreva("|-----BATALHA-----|\n\n")
          escreva(nomeHeroi ," x Cavaleiro Espectral\n\n" )
          escreva("SUA VIDA: ", vidaAtual[classe], " | VIDA DO INIMIGO: ", vidaCavaleiroEspectral)
          escreva("\nTURNO: ", turno)
          escreva("\n\nSUA VEZ: O QUE DESEJA FAZER?\n1. Atacar | 2. Defender (Chance de contra-ataque: 33%) | 3. Carregar ataque (FÚRIA INCONTROLÁVEL: sem tempo de recarga)\n\nDigite a opção escolhida: ")
          leia(opcao)
        } enquanto (opcao!=1 e opcao!=2 e opcao!=3 ou voltar==verdadeiro)


        se (opcao==1) {
          se (ataqueCarregado==verdadeiro) {
            danoCausado = danoAtaqueCarregado - defesaCavaleiroEspectral
            ataqueCarregado = falso
          } senao {
            danoCausado = ataque[classe] - defesaCavaleiroEspectral
          }
          se (danoCausado<0) {
            danoCausado = 0
          } 
          vidaCavaleiroEspectral -= danoCausado

          escreva("\nVocê causou ", danoCausado, " de dano!")
          u.aguarde(2000)
          se (vidaCavaleiroEspectral<=0) {
            faca {
              limpa()
              escreva("Você derrotou o Cavaleiro Espectral!\n\n")
              escreva("1. Prosseguir: ")
              leia(opcao)
            } enquanto (opcao!=1)
            pare
          }
        }    

        se (opcao==2) {
          opcaoDefesa = verdadeiro
          escreva("\nVocê tentou se defender, mas o Cavaleiro Espectral quebra sua defesa! ")
        }

        se (opcao==3) {
            escreva("\nSeu próximo ataque causará 120% de dano a mais!")
            ataqueCarregado = verdadeiro
            u.aguarde(2000)
        }

        se (ataqueCarregado==verdadeiro) {
          danoAtaqueCarregado += danoAtaqueCarregado * 1.2
        }

        se (voltar==falso) {
          escreva("\n\nVEZ DO INIMIGO\n\n")
          u.aguarde(1000)

          danoRecebido = ataqueCavaleiroEspectral - defesa[classe]
          se (opcaoDefesa==verdadeiro) {
            danoRecebido += danoRecebido/2
            escreva("INVESTIDA ESPECTRAL: O Cavaleiro Espectral lhe atacou e causou ", danoRecebido, " de dano!")
            vidaAtual[classe] -= danoRecebido
            se (vidaAtual[classe]<=0) {
              cadeia opcao
              faca {
                escreva("Você perdeu. \n")
                escreva("\n1. Recomeçar | 2. Sair: ")
                leia (opcao)
              } enquanto (opcao!=1 e opcao!=2)

              se (opcao==1) {
                menu()
              } 

              se (opcao==2) {
                pare
                pare
              }
              pare
            } 
          } senao {
            vidaAtual[classe] -= danoRecebido
            escreva("O Cavaleiro lhe atacou e causou ", danoRecebido, " de dano!")
            se (vidaAtual[classe]<=0) {
              cadeia opcao
              faca {
                escreva("\nVocê perdeu. \n")
                escreva("\n1. Recomeçar | 2. Sair: ")
                leia (opcao)
              } enquanto (opcao!=1 e opcao!=2)

              se (opcao==1) {
                menu()
              } 

              se (opcao==2) {
                pare
                pare
              }
              pare
            }
          }

          u.aguarde(2000)
          turno++
        }
      } enquanto (vidaAtual[classe]>0 e vidaCavaleiroEspectral>0)
  }
  
  funcao cavernaSombria () {
    batalhaGoblinLanceiro()
    ganharXp(110)
    batalhaMorcegoVoraz()
    ganharXp(140)
    batalhaDragaoMilenar()
    ganharXp(250)
  }

  funcao batalhaGoblinLanceiro () {
        
      logico contraAtaque = falso

      inteiro vidaGoblinLanceiro = 275, ataqueGoblinLanceiro = 45, defesaGoblinLanceiro = 10

      inteiro turno = 1, danoCausado, danoRecebido, danoContrAtaque, numSort, recargaHabilidade = 0
      logico opcaoDefesa = falso, voltar = falso, ataqueCarregado = falso
      cadeia opcao

      danoContrAtaque = ataque[classe]/2


      faca {
        faca {
          voltar = falso
          contraAtaque = falso
          opcaoDefesa = falso
          limpa()
          escreva("|-----BATALHA-----|\n\n")
          escreva(nomeHeroi ," x Goblin Lanceiro\n\n" )
          escreva("SUA VIDA: ", vidaAtual[classe], " | VIDA DO INIMIGO: ", vidaGoblinLanceiro)
          escreva("\nTURNO: ", turno)
          escreva("\n\nSUA VEZ: O QUE DESEJA FAZER?\n1. Atacar | 2. Defender (Chance de contra-ataque: 33%) | 3. Carregar ataque (Tempo de recarga: ", recargaHabilidade," Turnos)\n\nDigite a opção escolhida: ")
          leia(opcao)
        } enquanto (opcao!=1 e opcao!=2 e opcao!=3 ou voltar==verdadeiro)


        se (opcao==1) {
          danoCausado = ataque[classe] - defesaGoblinLanceiro
          se (ataqueCarregado==verdadeiro) {
            danoCausado += danoCausado*1.20
            ataqueCarregado = falso
          }
          se (danoCausado<0) {
            danoCausado = 0
          } 
          vidaGoblinLanceiro -= danoCausado

          escreva("\nVocê causou ", danoCausado, " de dano!")
          u.aguarde(2000)
          se (vidaGoblinLanceiro<=0) {
            faca {
              limpa()
              escreva("Você derrotou o Goblin Lanceiro!\n\n")
              escreva("1. Prosseguir: ")
              leia(opcao)
            } enquanto (opcao!=1)
            pare
          }
        }    

        se (opcao==2) {
          numSort = u.sorteia(1,3)
          opcaoDefesa = verdadeiro
          escreva("\nVocê escolheu se defender, o próximo ataque do seu inimigo causará metade do dano!")

          se (numSort==2) {
            contraAtaque = verdadeiro
          }
        }

        se (opcao==3) {
          se (recargaHabilidade==0) {
            escreva("\nSeu próximo ataque causará 120% de dano a mais!")
            ataqueCarregado = verdadeiro
            recargaHabilidade += 4
            u.aguarde(2000)
          } senao {
            escreva("\nA habilidade ainda não está pronta. Tempo restante: ", recargaHabilidade, " turnos!")
            u.aguarde(2000)
            voltar = verdadeiro
          }
        }

        se (voltar==falso) {
          escreva("\n\nVEZ DO INIMIGO\n\n")
          u.aguarde(1000)

          danoRecebido = ataqueGoblinLanceiro - defesa[classe]
          se (opcaoDefesa==verdadeiro) {
            vidaAtual[classe] -= danoRecebido/2
            escreva("O Goblin Lanceiro lhe atacou e causou ", danoRecebido/2, " de dano!")
            se (contraAtaque==verdadeiro) {
              u.aguarde(1000)
              escreva("\nVocê conseguiu contra-atacar e causou ", danoContrAtaque, " de dano!")
              vidaGoblinLanceiro -= danoContrAtaque - defesaGoblinLanceiro
            }
            se (vidaAtual[classe]<=0) {
              cadeia opcao
              faca {
                escreva("Você perdeu. \n")
                escreva("\n1. Recomeçar | 2. Sair: ")
                leia (opcao)
              } enquanto (opcao!=1 e opcao!=2)

              se (opcao==1) {
                menu()
              } 

              se (opcao==2) {
                pare
                pare
              }
              pare
            } 
          } senao {
            vidaAtual[classe] -= danoRecebido
            escreva("O Goblin Lanceiro lhe atacou e causou ", danoRecebido, " de dano!")
            se (vidaAtual[classe]<=0) {
              cadeia opcao
              faca {
                escreva("\nVocê perdeu. \n")
                escreva("\n1. Recomeçar | 2. Sair: ")
                leia (opcao)
              } enquanto (opcao!=1 e opcao!=2)

              se (opcao==1) {
                menu()
              } 

              se (opcao==2) {
                pare
                pare
              }
              pare
            }
          }

          u.aguarde(2000)
          turno++
          se (recargaHabilidade>0) {
            recargaHabilidade--
          }
        }
      } enquanto (vidaAtual[classe]>0 e vidaGoblinLanceiro>0)
  }

  funcao batalhaMorcegoVoraz () {
        
      logico contraAtaque = falso

      inteiro vidaMorcegoVoraz = 200, ataqueMorcegoVoraz = 50, defesaMorcegoVoraz = 30

      inteiro turno = 1, danoCausado, danoRecebido, danoContrAtaque, numSort, recargaHabilidade = 0
      logico opcaoDefesa = falso, voltar = falso, ataqueCarregado = falso
      cadeia opcao

      danoContrAtaque = ataque[classe]/2


      faca {
        faca {
          voltar = falso
          contraAtaque = falso
          opcaoDefesa = falso
          limpa()
          escreva("|-----BATALHA-----|\n\n")
          escreva(nomeHeroi ," x Morcego Voraz\n\n" )
          escreva("SUA VIDA: ", vidaAtual[classe], " | VIDA DO INIMIGO: ", vidaMorcegoVoraz)
          escreva("\nTURNO: ", turno)
          escreva("\n\nSUA VEZ: O QUE DESEJA FAZER?\n1. Atacar | 2. Defender (Chance de contra-ataque: 33%) | 3. Carregar ataque (Tempo de recarga: ", recargaHabilidade," Turnos)\n\nDigite a opção escolhida: ")
          leia(opcao)
        } enquanto (opcao!=1 e opcao!=2 e opcao!=3 ou voltar==verdadeiro)


        se (opcao==1) {
          danoCausado = ataque[classe] - defesaMorcegoVoraz
          se (ataqueCarregado==verdadeiro) {
            danoCausado += danoCausado*1.20
            ataqueCarregado = falso
          }
          se (danoCausado<0) {
            danoCausado = 0
          } 
          vidaMorcegoVoraz -= danoCausado

          escreva("\nVocê causou ", danoCausado, " de dano!")
          u.aguarde(2000)
          se (vidaMorcegoVoraz<=0) {
            faca {
              limpa()
              escreva("Você derrotou o Morcego Voraz!\n\n")
              escreva("1. Prosseguir: ")
              leia(opcao)
            } enquanto (opcao!=1)
            pare
          }
        }    

        se (opcao==2) {
          numSort = u.sorteia(1,3)
          opcaoDefesa = verdadeiro
          escreva("\nVocê escolheu se defender, o próximo ataque do seu inimigo causará metade do dano!")

          se (numSort==2) {
            contraAtaque = verdadeiro
          }
        }

        se (opcao==3) {
          se (recargaHabilidade==0) {
            escreva("\nSeu próximo ataque causará 120% de dano a mais!")
            ataqueCarregado = verdadeiro
            recargaHabilidade += 4
            u.aguarde(2000)
          } senao {
            escreva("\nA habilidade ainda não está pronta. Tempo restante: ", recargaHabilidade, " turnos!")
            u.aguarde(2000)
            voltar = verdadeiro
          }
        }

        se (voltar==falso) {
          escreva("\n\nVEZ DO INIMIGO\n\n")
          u.aguarde(1000)

          danoRecebido = ataqueMorcegoVoraz - defesa[classe]
          se (opcaoDefesa==verdadeiro) {
            vidaAtual[classe] -= danoRecebido/2
            escreva("O Morcego Voraz lhe atacou e causou ", danoRecebido/2, " de dano!")
            se (contraAtaque==verdadeiro) {
              u.aguarde(1000)
              escreva("\nVocê conseguiu contra-atacar e causou ", danoContrAtaque, " de dano!")
              vidaMorcegoVoraz -= danoContrAtaque - defesaMorcegoVoraz
            }
            se (vidaAtual[classe]<=0) {
              cadeia opcao
              faca {
                escreva("Você perdeu. \n")
                escreva("\n1. Recomeçar | 2. Sair: ")
                leia (opcao)
              } enquanto (opcao!=1 e opcao!=2)

              se (opcao==1) {
                menu()
              } 

              se (opcao==2) {
                pare
                pare
              }
              pare
            } 
          } senao {
            vidaAtual[classe] -= danoRecebido
            escreva("O Morcego Voraz lhe atacou e causou ", danoRecebido, " de dano!")
            se (vidaAtual[classe]<=0) {
              cadeia opcao
              faca {
                escreva("\nVocê perdeu. \n")
                escreva("\n1. Recomeçar | 2. Sair: ")
                leia (opcao)
              } enquanto (opcao!=1 e opcao!=2)

              se (opcao==1) {
                menu()
              } 

              se (opcao==2) {
                pare
                pare
              }
              pare
            }
          }

          u.aguarde(2000)
          turno++
          se (recargaHabilidade>0) {
            recargaHabilidade--
          }
        }
      } enquanto (vidaAtual[classe]>0 e vidaMorcegoVoraz>0)
  }

  funcao batalhaDragaoMilenar () {
        
      logico contraAtaque = falso

      inteiro vidaDragaoMilenar = 400, ataqueDragaoMilenar = 55, defesaDragaoMilenar = 10

      inteiro turno = 1, danoCausado, danoRecebido, danoContrAtaque, numSort, recargaHabilidade = 0
      logico opcaoDefesa = falso, voltar = falso, ataqueCarregado = falso
      cadeia opcao

      danoContrAtaque = ataque[classe]/2


      faca {
        faca {
          voltar = falso
          contraAtaque = falso
          opcaoDefesa = falso
          limpa()
          escreva("|-----BATALHA-----|\n\n")
          escreva(nomeHeroi ," x Dragão Milenar\n\n" )
          escreva("SUA VIDA: ", vidaAtual[classe], " | VIDA DO INIMIGO: ", vidaDragaoMilenar)
          escreva("\nTURNO: ", turno)
          escreva("\n\nSUA VEZ: O QUE DESEJA FAZER?\n1. Atacar | 2. Defender (Chance de contra-ataque: 33%) | 3. Carregar ataque (Tempo de recarga: ", recargaHabilidade," Turnos)\n\nDigite a opção escolhida: ")
          leia(opcao)
        } enquanto (opcao!=1 e opcao!=2 e opcao!=3 ou voltar==verdadeiro)


        se (opcao==1) {
          danoCausado = ataque[classe] - defesaDragaoMilenar
          se (ataqueCarregado==verdadeiro) {
            danoCausado += danoCausado*1.20
            ataqueCarregado = falso
          }
          se (danoCausado<0) {
            danoCausado = 0
          } 
          vidaDragaoMilenar -= danoCausado

          escreva("\nVocê causou ", danoCausado, " de dano!")
          u.aguarde(2000)
          se (vidaDragaoMilenar<=0) {
            faca {
              limpa()
              escreva("Você derrotou o Dragão Milenar!\n\n")
              escreva("1. Prosseguir: ")
              leia(opcao)
            } enquanto (opcao!=1)
            pare
          }
        }    

        se (opcao==2) {
          numSort = u.sorteia(1,3)
          opcaoDefesa = verdadeiro
          escreva("\nVocê escolheu se defender, o próximo ataque do seu inimigo causará metade do dano!")

          se (numSort==2) {
            contraAtaque = verdadeiro
          }
        }

        se (opcao==3) {
          se (recargaHabilidade==0) {
            escreva("\nSeu próximo ataque causará 120% de dano a mais!")
            ataqueCarregado = verdadeiro
            recargaHabilidade += 4
            u.aguarde(2000)
          } senao {
            escreva("\nA habilidade ainda não está pronta. Tempo restante: ", recargaHabilidade, " turnos!")
            u.aguarde(2000)
            voltar = verdadeiro
          }
        }

        se (voltar==falso) {
          escreva("\n\nVEZ DO INIMIGO\n\n")
          u.aguarde(1000)

          danoRecebido = ataqueDragaoMilenar - defesa[classe]
          se (opcaoDefesa==verdadeiro) {
            vidaAtual[classe] -= danoRecebido/2
            escreva("O Dragão Milenar lhe atacou e causou ", danoRecebido/2, " de dano!")
            se (contraAtaque==verdadeiro) {
              u.aguarde(1000)
              escreva("\nVocê conseguiu contra-atacar e causou ", danoContrAtaque, " de dano!")
              vidaDragaoMilenar -= danoContrAtaque - defesaDragaoMilenar
            }
            se (vidaAtual[classe]<=0) {
              cadeia opcao
              faca {
                escreva("Você perdeu. \n")
                escreva("\n1. Recomeçar | 2. Sair: ")
                leia (opcao)
              } enquanto (opcao!=1 e opcao!=2)

              se (opcao==1) {
                menu()
              } 

              se (opcao==2) {
                pare
                pare
              }
              pare
            } 
          } senao {
            vidaAtual[classe] -= danoRecebido
            escreva("O Dragão Milenar lhe atacou e causou ", danoRecebido, " de dano!")
            se (vidaAtual[classe]<=0) {
              cadeia opcao
              faca {
                escreva("\nVocê perdeu. \n")
                escreva("\n1. Recomeçar | 2. Sair: ")
                leia (opcao)
              } enquanto (opcao!=1 e opcao!=2)

              se (opcao==1) {
                menu()
              } 

              se (opcao==2) {
                pare
                pare
              }
              pare
            }
          }

          u.aguarde(2000)
          turno++
          se (recargaHabilidade>0) {
            recargaHabilidade--
          }
        }
      } enquanto (vidaAtual[classe]>0 e vidaDragaoMilenar>0)
  }

  funcao pantanoDosLamentos() {
    batalhaShrekAlmaPenada()
  }

    funcao batalhaShrekAlmaPenada () {
        
      logico contraAtaque = falso

      inteiro vidaShrekAlmaPenada = 415, ataqueShrekAlmaPenada = 50, defesaShrekAlmaPenada = 15

      inteiro turno = 1, danoCausado, danoRecebido, danoContrAtaque, numSort, recargaHabilidade = 0, acaoShrek
      logico opcaoDefesa = falso, voltar = falso, ataqueCarregado = falso
      cadeia opcao

      danoContrAtaque = ataque[classe]/2


      faca {
        faca {
          voltar = falso
          contraAtaque = falso
          opcaoDefesa = falso
          limpa()
          escreva("|-----BATALHA-----|\n\n")
          escreva(nomeHeroi ," x Shrek Alma Penada\n\n" )
          escreva("SUA VIDA: ", vidaAtual[classe], " | VIDA DO INIMIGO: ", vidaShrekAlmaPenada)
          escreva("\nTURNO: ", turno)
          escreva("\n\nSUA VEZ: O QUE DESEJA FAZER?\n1. Atacar | 2. Defender (Chance de contra-ataque: 33%) | 3. Carregar ataque (Tempo de recarga: ", recargaHabilidade," Turnos)\n\nDigite a opção escolhida: ")
          leia(opcao)
        } enquanto (opcao!=1 e opcao!=2 e opcao!=3 ou voltar==verdadeiro)


        se (opcao==1) {
          danoCausado = ataque[classe] - defesaShrekAlmaPenada
          se (ataqueCarregado==verdadeiro) {
            danoCausado += danoCausado*1.20
            ataqueCarregado = falso
          }
          se (danoCausado<0) {
            danoCausado = 0
          } 
          vidaShrekAlmaPenada -= danoCausado

          escreva("\nVocê causou ", danoCausado, " de dano!")
          u.aguarde(2000)
          se (vidaShrekAlmaPenada<=0) {
            faca {
              limpa()
              escreva("Você derrotou o Shrek Alma Penada!\n\n")
              escreva("1. Prosseguir: ")
              leia(opcao)
            } enquanto (opcao!=1)
            pare
          }
        }    

        se (opcao==2) {
          numSort = u.sorteia(1,3)
          opcaoDefesa = verdadeiro
          escreva("\nVocê escolheu se defender, o próximo ataque do seu inimigo causará metade do dano!")

          se (numSort==2) {
            contraAtaque = verdadeiro
          }
        }

        se (opcao==3) {
          se (recargaHabilidade==0) {
            escreva("\nSeu próximo ataque causará 120% de dano a mais!")
            ataqueCarregado = verdadeiro
            recargaHabilidade += 4
            u.aguarde(2000)
          } senao {
            escreva("\nA habilidade ainda não está pronta. Tempo restante: ", recargaHabilidade, " turnos!")
            u.aguarde(2000)
            voltar = verdadeiro
          }
        }


        se (voltar==falso) {

          acaoShrek = u.sorteia(1,3)

        se (acaoShrek==1) {
          escreva("\n\n>>>HABILIDADE ESPECIAL ATIVADA: A VINGANÇA DE SHREK<<<\n")
          escreva("Shrek Alma Penada rola na lama e aumenta seu poder de ataque em 20%\n")
          ataqueShrekAlmaPenada += ataqueShrekAlmaPenada*0.20
          u.aguarde(2000)
        }

        se (acaoShrek==2) {
          escreva("\n\n>>>HABILIDADE ESPECIAL ATIVADA: ESPÍRITO INCANSÁVEL<<<\n")
          escreva("Shrek Alma Penada entra no banheiro e ganha 50 de vida\n")
          vidaShrekAlmaPenada += 50
          u.aguarde(2000)
        }

        se (acaoShrek==3) {
          inteiro danoBurro = 45 - defesa[classe]
          escreva("\n\n>>>HABILIDADE ESPECIAL ATIVADA: ATAQUE SURPRESA<<<\n")
          escreva("Shrek Alma Penada invoca o espírito do Burro que lhe morde e causa ", danoBurro, " de dano\n")
          vidaAtual[classe] -= danoBurro
          u.aguarde(2000)
        }

          escreva("\n\nVEZ DO INIMIGO\n\n")
          u.aguarde(1000)

          danoRecebido = ataqueShrekAlmaPenada - defesa[classe]
          se (opcaoDefesa==verdadeiro) {
            vidaAtual[classe] -= danoRecebido/2
            escreva("O Shrek Alma Penada lhe atacou e causou ", danoRecebido/2, " de dano!")
            se (contraAtaque==verdadeiro) {
              u.aguarde(1000)
              escreva("\nVocê conseguiu contra-atacar e causou ", danoContrAtaque, " de dano!")
              vidaShrekAlmaPenada -= danoContrAtaque - defesaShrekAlmaPenada
            }
            se (vidaAtual[classe]<=0) {
              cadeia opcao
              faca {
                escreva("Você perdeu. \n")
                escreva("\n1. Recomeçar | 2. Sair: ")
                leia (opcao)
              } enquanto (opcao!=1 e opcao!=2)

              se (opcao==1) {
                menu()
              } 

              se (opcao==2) {
                pare
                pare
              }
              pare
            } 
          } senao {
            vidaAtual[classe] -= danoRecebido
            escreva("O Shrek Alma Penada lhe atacou e causou ", danoRecebido, " de dano!")
            se (vidaAtual[classe]<=0) {
              cadeia opcao
              faca {
                escreva("\nVocê perdeu. \n")
                escreva("\n1. Recomeçar | 2. Sair: ")
                leia (opcao)
              } enquanto (opcao!=1 e opcao!=2)

              se (opcao==1) {
                menu()
              } 

              se (opcao==2) {
                pare
                pare
              }
              pare
            }
          }

          u.aguarde(2000)
          turno++
          se (recargaHabilidade>0) {
            recargaHabilidade--
          }
        }
      } enquanto (vidaAtual[classe]>0 e vidaShrekAlmaPenada>0)
  }

  

}