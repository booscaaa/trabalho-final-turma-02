programa {

  inclua biblioteca Util --> u

   cadeia nomeClasse[3], nomeHeroi
   inteiro vida[3], xp = 0, nivel = 1, vida[3], ataque[3], defesa[3], classe

  funcao inicio() {

    menu()
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

    nomeClasse[0] = "Guerreiro"
    vida[0] = 90
    ataque[0] = 60
    defesa[0] = 50

    nomeClasse[1] = "Mago"
    vida[1] = 50
    ataque[1] = 100
    defesa[1] = 50

    nomeClasse[2] = "Arqueiro"
    vida[2] = 60
    ataque[2] = 80
    defesa[2] = 60

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

    } enquanto (classe>3 ou classe<1)

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
        escreva("|                 %%*####*+++++*+-:------=--+%%               VIDA: ", vida[classe-1], "\n")
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
        escreva("\n1. Prosseguir\n\n")
        leia(opcao)
      } enquanto (opcao!=1)
      
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
        escreva("|            .@#******++%#==%*==-::::#*-*@=                VIDA: ", vida[classe-1], "\n")
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
        escreva("\n1. Prosseguir\n\n")
        leia(opcao)
      } enquanto (opcao!=1)
      
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
        escreva("|                .@%+#*+@%+----------------+@+#@.         VIDA: ", vida[classe-1], "\n")
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
        escreva("\n1. Prosseguir\n\n")
        leia(opcao)
      } enquanto (opcao!=1)
      
    }

    retorne classe


  }
  
  funcao florestadaNevoa () {

      prologo()
      historiaFloresta()
      chegadaFloresta()
      batalhaFeraSombria (vida[classe], ataque[classe], defesa[classe])
      serpenteVenenosa ()
      vida[classe] = posSerpente (vida[classe])
      introGuardiao()
      batalhaGuardiao(vida[classe], ataque[classe], defesa[classe])
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
      escreva("Capítulo 1: Floresta da Névoa – O Despertar do Herói\n\nSua jornada começa na sombria Floresta da Névoa, onde a névoa esconde feras mutantes, \nsombras que sussurram, e ilusões traiçoeiras. Antigamente um santuário dos druidas, a floresta agora devora os incautos. \n\n")

      escreva("\n\n1. Explorar: ")
      leia(opcao)
    } enquanto (opcao!=1)
        
  }

  funcao chegadaFloresta () {
    cadeia opcao
    faca {
      limpa()
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
      escreva("Uma Fera Sombria salta em sua direção! Prepare-se para lutar!\n")
      escreva("1. Lutar: ")
      leia(opcao)
    } enquanto (opcao!=1)
     
  }

  funcao batalhaFeraSombria (inteiro vidajogador, inteiro ataquejogador, inteiro defesajogador) {

      inteiro vidaFeraSombria = 110, ataqueFeraSombria = 60, defesaFeraSombria = 50

      inteiro turno = 1, danoCausado, danoRecebido
      logico opcaoDefesa = falso
      cadeia opcao
      
      
      faca {
        faca {
          opcaoDefesa = falso
          limpa()
          escreva("-BATALHA-\n\n")
          escreva(nomeHeroi ," x Fera Sombria\n\n" )
          escreva("SUA VIDA: ", vidajogador, " | VIDA DO INIMIGO: ", vidaFeraSombria)
          escreva("\nTURNO: ", turno)
          escreva("\n\nSUA VEZ: O QUE DESEJA FAZER?\n1. Atacar | 2. Defender\n\nDigite a opção escolhida: ")
          leia(opcao)
        } enquanto (opcao>2 ou opcao<1)

        se (opcao==1) {
          danoCausado = ataquejogador - defesaFeraSombria
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
          opcaoDefesa = verdadeiro
          escreva("\nVocê escolheu se defender, o próximo ataque do seu inimigo causará metade do dano!")
        }

        escreva("\n\nVEZ DO INIMIGO\n\n")
        u.aguarde(1000)

        danoRecebido = ataqueFeraSombria - defesajogador
        se (opcaoDefesa==verdadeiro) {
          vidajogador -= danoRecebido/2
          escreva("A fera lhe atacou e causou ", danoRecebido/2, " de dano!")
          se (vidajogador<=0) {
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
          vidajogador -= danoRecebido
          escreva("A fera lhe atacou e causou ", danoRecebido, " de dano!")
          se (vidajogador<=0) {
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
      } enquanto (vidajogador>0 e vidaFeraSombria>0)
  }

  funcao serpenteVenenosa () {
    cadeia opcao
    faca {
      limpa()
      escreva("Após isso, você segue explorando em busca de um local para descansar...\n")
      escreva("Enquanto explora a clareira, uma Serpente Venenosa surge das sombras e se enrola em sua perna!\n")
      escreva("Prepare-se para mais um combate!\n")
      escreva("\n1. Lutar: ")
      leia(opcao)
    } enquanto (opcao!=1)

    batalhaSerpenteVenenosa (vida[classe], ataque[classe], defesa[classe])

  }

  funcao batalhaSerpenteVenenosa (inteiro vidajogador, inteiro ataquejogador, inteiro defesajogador) {
    inteiro vidaSerpenteVenenosa = 150, ataqueSerpenteVenenosa = 75, defesaSerpenteVenenosa = 0

      inteiro turno = 1, danoCausado, danoRecebido
      logico opcaoDefesa = falso
      cadeia opcao
      
      
      faca {
        faca {
          opcaoDefesa = falso
          limpa()
          escreva("-BATALHA-\n\n")
          escreva(nomeHeroi ," x Serpente venenosa\n\n" )
          escreva("SUA VIDA: ", vidajogador, " | VIDA DO INIMIGO: ", vidaSerpenteVenenosa)
          escreva("\nTURNO: ", turno)
          escreva("\n\nSUA VEZ: O QUE DESEJA FAZER?\n1. Atacar | 2. Defender\n\nDigite a opção escolhida: ")
          leia(opcao)
        } enquanto (opcao>2 ou opcao<1)

        se (opcao==1) {
          danoCausado = ataquejogador - defesaSerpenteVenenosa
          se (danoCausado<0) {
            danoCausado = 0
          } 
          vidaSerpenteVenenosa -= danoCausado

          escreva("\nVocê causou ", danoCausado, " de dano!")
          u.aguarde(2000)
          se (vidaSerpenteVenenosa<=0) {
            faca {
              limpa()
              escreva("Você derrotou a serpente!\n\n")
              escreva("1. Prosseguir: ")
              leia(opcao)
            } enquanto (opcao!=1)
            pare
          }
        }    

        se (opcao==2) {
          opcaoDefesa = verdadeiro
          escreva("\nVocê escolheu se defender, o próximo ataque do seu inimigo causará metade do dano!")
        }

        escreva("\n\nVEZ DO INIMIGO\n\n")
        u.aguarde(1000)

        danoRecebido = ataqueSerpenteVenenosa - defesajogador
        se (opcaoDefesa==verdadeiro) {
          vidajogador -= danoRecebido/2
          escreva("A fera lhe atacou e causou ", danoRecebido/2, " de dano!")
          se (vidajogador<=0) {
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
          vidajogador -= danoRecebido
          escreva("A fera lhe atacou e causou ", danoRecebido, " de dano!")
          se (vidajogador<=0) {
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
      } enquanto (vidajogador>0 e vidaSerpenteVenenosa>0)
  }

  funcao inteiro posSerpente (inteiro vidaJogador) {
    cadeia opcao
    faca {
      limpa()
      escreva("Você respira aliviado após a batalha, mas percebe que cada passo adentra ainda mais na escuridão.\n")
      escreva("Galhos secos estalam sob seus pés e sons estranhos ecoam à distância.\n")
      escreva("A trilha leva você a uma antiga ponte de madeira que atravessa um rio enevoado.\n")
      escreva("Ao atravessar a ponte, sente um calafrio... algo maior está por vir.\n")
      escreva("1. Seguir o caminho: ")
      leia(opcao)
    } enquanto (opcao!=1)

    limpa()
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
    vidaJogador = vidaJogador - danoInicial

    faca {
      escreva("Você é arremessado contra o tronco de uma árvore, sentindo uma dor lancinante. Vida restante: ", vidaJogador, "\n")
      escreva("O Guardião ruge furiosamente, seus olhos vermelhos brilhando na penumbra. Não há escapatória\n")
      escreva("1. Tentar sobreviver: ")
      leia(opcao)
    } enquanto (opcao!=1)
    
    retorne vidaJogador
  }

  funcao introGuardiao () {
      inteiro vidaGuardiao = 120, ataqueguardiao = 80, defesaguardiao = 70
      cadeia opcao
    
      faca {
        escreva("|                                                                                                                \n")
        escreva("|                                                         -*                                                     \n")
        escreva("|                                                         -*-                                                    \n")
        escreva("|                                                         ***                                                    \n")
        escreva("|                                                     - -*#@%+  @                                                \n")
        escreva("|                                                    @ -%@#*%%%-@                                                \n")
        escreva("|                                                   @. %@@@@@@= .@         @@@                                   \n")
        escreva("|                                     %.-..@      @-.-=%   @+. #..@      @... #                                  \n")
        escreva("|                      @#=*@%#+**+=---=    +      @++:+ -+-=---+.  @     @.-  *--#--=*%%%@ @@                    \n")
        escreva("|                    =.   . .--+=---#++         @@  :%-.-=-+=.:+%##=@    @ .  *===-------. .  .++                GUARDIÃO DA FLORESTA\n")
        escreva("|                  %....:  -. :+++*+=-=      @@##=.:%@+----=---#@. .##%@@@..  =--#**++-=*.  ..::.-%              \n")
        escreva("|                 @:.####. . .. *+-=-:=  = @%%#=@- =@@@***@@***@@+-.#+#%%%.   +---==-#- :.. -@@#*.-              \n")
        escreva("|                %.:##@@@@=.. ... .   ::...@%#-.@%   +@@@@@@@@@@   ==:+##%-...%@%     - ..#@@@@@##.+             \n")
        escreva("|                +.+#@@@@@@@%..   @@@@@@@%%##=:  @:=:  .@  * =  #=+% -*####%%%@@@@@@+  .%@@@@@@@%#:.@            VIDA: ", vidaGuardiao ,"\n")
        escreva("|               @.-##%@@@@@@@@@@@@@@@@@%%%###+-:: .#-.-# --+----#+# .-+-*###@#%@@@@@@@@@@@@@@@@@+..@             \n")
        escreva("|                +.:  =@@@@@@@@@@@@@@@##%%#**==--:+   ##+*----**%  -*.---=*#-%%#@   %@@@@@@@@@%#- .              \n")
        escreva("|                 @*-:####%@@@@@.    %#%%**=-+------*-          *+--=%=---*+##%##@ .=#  =@@@@#=.:+               ATAQUE: ", ataqueguardiao ,"\n")
        escreva("|                   *:.:#####.  +-   %###@=*=------=.---=--:..:--*=.:-*...=#####%@      +. +:..+@                \n")
        escreva("|                     #.:..  =       %####*-%------+#------------*----#----#####%@        . -%                   \n")
        escreva("|                       #+*%@@@      @%#=+##. ---:-*%== .  ===+--#**-.----+#--+#%@     @@@@@@                    DEFESA: ", defesaguardiao ,"\n")
        escreva("|                     @:. .--.. .=@  @@#*--++--:=...  =.=--- ..  .%=--=---+-+*##@  @-. ..--. .:@                 \n")
        escreva("|                  #--   *    %    -= @@##*.  .----.----+#==-+-=-. +*%=:.  -###@ =-    %    #   --#              \n")
        escreva("|                 @.  #%#------=*.:.-=@ @%#--:   :**-*@#@@@@@@*@*-- -   ::-=#%@@=-.:.*=------#%#  .@             \n")
        escreva("|                @-:.%*+=------=+#*. -+@@@@@=+-+-+--:@@#%@**%@*@@*-----+==+%@@ *= .*#+=------=+*%.--@            \n")
        escreva("|                @=:@#++=------=#=*%++=*  @%%@@%+#--=@#*=%%%@+**@.:*=-*+@@@%%@ =+=%*=#+------=++#@-=@            \n")
        escreva("|                @*%@=++=-----+#-++#%:=#   @%%#-=*--.%@@%#***#@@ .-@@@%=*%%%   =:%#++-#+-----=++=%%*@            \n")
        escreva("|                @%%%*+      :   :+#%#@    @-#@#--=-%: @@@@@@@  --=@=-+%%@#@   @#%#+:   :      =*%%%@            \n")
        escreva("|                @%: .  .   .:    : :%@ @%%- @=+@@%%*--::.   :---=@%%%@=%  *%@ @%- :    :.   .  . .%@            \n")
        escreva("|                *.   ......*... .    *%%%=.:+-=#@@@@%%#=----=%#%@@@@%  -  +*%%*      ...*......   .+            \n")
        escreva("|               %.  ..=@@@@@@@@%+...  -@+#- +*.  %@@@@@@@@@@@@@@@@@@%  .#  ++*@-  ...+%@@@@@@@@=..  .%           \n")
        escreva("|              @*..:...   #@-   .:%..= #%=+ .#++.  *@@@@@@@@@@@@@@%:..:#..=++@% +..%:.   -@#   ...:..*%          \n")
        escreva("|              %.-*- ::.: = .-%*.. -+.+%@+--+%*:-=-:: +:%%%%%%%=   :-:.#%++==@%+.== ..*%-. = :.:: :*=.%          \n")
        escreva("|              #+#@*:=+-. *#:++=.  .-++*@#@%#+:======##: =  . :%:-+==-:.+#%@=@*++-.  .=++:## .-+=:+@#+#          \n")
        escreva("|              @-:@+.--..   :=*++++@=*++@  @+:===-==#%*-=-----#%*---==-=.+@  @++*=@++++*=:   ..--.+@::@          \n")
        escreva("|              @*+#+.-----.%---++-=*%%+*@  #-++===-*##+-=--**-*%#--====+@    @*+%%*=-=+--:%.-----.+#+*@          \n")
        escreva("|               @%+=.#..--:*==++++%%%%#@    @*-=*=####*--===---#@+=-+==#       #%%%%++++==*:--:.#.=+#@           \n")
        escreva("|                 @*.-----:=.:--+*#%%@         @%%%@##=-=++++--##@#++@@         @%%#*+--:.=:-----.+@             \n")
        escreva("|                  =.=----.@-----=*@               %**---=---+-+#@                @*=----:@.----=.-              \n")
        escreva("|                  +:+:::=+@%=.:---@                @=--==+++=-*@                 @=--:.=%@+=:::+:+              \n")
        escreva("|                    @-----@.-----=@                    @@@@@@                    @=-----.@-----@                \n")
        escreva("|                     @@*-.#.=#@                                                      @#=.*.-*@@                 \n\n")
        escreva("1. Continuar: ")
        leia(opcao)
      } enquanto (opcao!=1)      
      
    }

    funcao batalhaGuardiao (inteiro vidajogador, inteiro ataquejogador, inteiro defesajogador) {

      inteiro vidaGuardiao = 120, ataqueguardiao = 80, defesaguardiao = 70

      inteiro turno = 1, opcao, danoCausado, danoRecebido
      logico opcaoDefesa = falso
      
      
      faca {
        faca {
          opcaoDefesa = falso
          limpa()
          escreva("-BATALHA-\n\n")
          escreva(nomeHeroi ," x Guardião da Floresta\n\n" )
          escreva("SUA VIDA: ", vidajogador, " | VIDA DO INIMIGO: ", vidaGuardiao)
          escreva("\nTURNO: ", turno)
          escreva("\n\nSUA VEZ: O QUE DESEJA FAZER?\n1. Atacar | 2. Defender\n\nDigite a opção escolhida: ")
          leia(opcao)
        } enquanto (opcao>2 ou opcao<1)

        se (opcao==1) {
          danoCausado = ataquejogador - defesaguardiao
          se (danoCausado<0) {
            danoCausado = 0
          } 
          vidaGuardiao -= danoCausado

          escreva("\nVocê causou ", danoCausado, " de dano!")
          u.aguarde(2000)
          se (vidaGuardiao<=0) {
            escreva("você venceu")
            pare
          }
        }    

        se (opcao==2) {
          opcaoDefesa = verdadeiro
          escreva("\nVocê escolheu se defender, o próximo ataque do seu inimigo causará metade do dano!")
        }

        escreva("\n\nVEZ DO INIMIGO\n\n")
        u.aguarde(1000)

        danoRecebido = ataqueguardiao - defesajogador
        se (opcaoDefesa==verdadeiro) {
          vidajogador -= danoRecebido/2
          escreva("O guardião lhe atacou e causou ", danoRecebido/2, " de dano!")
          se (vidajogador<=20) {
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
          vidajogador -= danoRecebido
          escreva("O guardião lhe atacou e causou ", danoRecebido, " de dano!")
          se (vidajogador<=20) {
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
              escreva("\n1. Continuar: ")
              leia (opcao)
            } enquanto (opcao!=1)
            pare
          }
        }

        u.aguarde(2000)
        turno++
      } enquanto (vidajogador>20 e vidaGuardiao>0)

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
      escreva("Eyla:\n")
      escreva("\n- Você está a salvo… por enquanto. As trevas de Eldoria são impiedosas, mas não deixarei que o consumam tão cedo.")
      u.aguarde(1000)
      escreva("\n- Meu nome... é Eyla. Quem eu sou de verdade não importa agora. O que importa… é que você continue em frente.")
      u.aguarde(1000)
      escreva("\n- Venha. O caminho é longo, e você não deve trilhá-lo sozinho.")
      u.aguarde(5000)
      faca {
        escreva("\n\n1. Continuar: ")
        leia(opcao)
      } enquanto (opcao!=1)

      faca {
        limpa()
        escreva("Antes que prossigamos... há algo que preciso lhe ensinar.\n")
        escreva("Em Eldoria, a força bruta nem sempre vence… é a disciplina que molda o verdadeiro guerreiro.\n")
        escreva("Concentre sua energia, respire fundo… e acumule sua Força Interior.\n")
        escreva("Quando fizer isso, seu próximo golpe será devastador, esmagando seu inimigo com poder muito além do normal.\n")
        escreva("Mas cuidado... esse esforço tem um preço. Seu corpo se desgastará, e só poderá usar essa técnica poucas vezes em cada batalha.\n")
        escreva("Aprenda a equilibrar poder e prudência. Isso pode ser a diferença entre a vitória… e a sua ruína.\n")
        escreva("\n1. Continuar: ")
        leia(opcao)
      } enquanto (opcao!=1)

      faca {
        limpa()
        escreva(">>> NOVA HABILIDADE DESBLOQUEADA: FORÇA INTERIOR <<<\n")
        escreva("Você aprendeu a concentrar sua energia para potencializar seu próximo ataque!\n")
        escreva("Efeito: Ao usar 'Força Interior', seu próximo ataque causará 50% de dano adicional.\n")
        escreva("Cuidado: Essa técnica desgasta seu corpo e só pode ser usada um número limitado de vezes por batalha.\n")
        escreva("Agora você pode usar o comando especial durante as lutas:\n")
        escreva("Digite '3' em combate para ativar 'Força Interior' e preparar um ataque devastador!\n")
        escreva("\n1. Continuar: ")
        leia(opcao)
      } enquanto (opcao!=1)

    }

    funcao vilaAbandonada () {
      
  } 
}