programa {

  inclua biblioteca Util --> u

   cadeia nomeClasse[3], nomeHeroi
   inteiro vida[3], xp = 0, nivel = 1, vida[3], ataque[3], defesa[3], classe

  funcao inicio() {

    menu()
  }

  funcao menu () {
    inteiro opcao
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
        inteiro opcao
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
    } enquanto (opcao>3 ou opcao<1)

    
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

    inteiro opcao
    faca{
      limpa()
      escreva("Deseja iniciar um novo jogo?\n\n1. Sim\n2. Cancelar\n\n")
      leia(opcao)

      se (opcao==1) {
        carregamentoJogo()
        classe = criacaoDoHeroi()
        floresta()
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
      inteiro opcao
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
      inteiro opcao
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
      inteiro opcao
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
  
  funcao floresta () {

      prologo()

  }

  funcao prologo () {
    inteiro opcao
    faca {
      limpa()
    escreva("Prólogo: A Pedra da Luz\n")
    escreva("Durante eras, a Pedra da Luz manteve Eldoria em equilíbrio, selando as forças das trevas e concedendo prosperidade às terras. \nGuardada pelos Anciãos no imponente Castelo Dourado, era símbolo de esperança. \nMas essa paz foi quebrada quando O Devastador, uma entidade de pura escuridão, invadiu o castelo e roubou a Pedra, mergulhando o reino em sombras.")
    escreva("\n\nDizem as profecias: “Quando a luz for roubada, um escolhido surgirá do nada, seu destino ligado à ruína ou à salvação de Eldoria.”")
    escreva("\n\nVocê é esse escolhido.\n\n1. Continuar\n\n")
    leia(opcao)
    } enquanto (opcao!=1)

    se (opcao==1) {
      historiaFloresta()
    }
  }

  funcao historiaFloresta () {
    inteiro opcao
    faca {
      limpa()
      escreva("Capítulo 1: Floresta da Névoa – O Despertar do Herói\n\nSua jornada começa na sombria Floresta da Névoa, onde a névoa esconde feras mutantes, \nsombras que sussurram, e ilusões traiçoeiras. Antigamente um santuário dos druidas, a floresta agora devora os incautos. \n\n")
      u.aguarde(5000)
      limpa()
      escreva("\n\n-O-OQUE É ISSO?")
      u.aguarde(1500)
      escreva("\nUM SOCO DE UMA MÃO ENORME LHE ATINGE E VOCÊ É ARREMESSADO")
      u.aguarde(1500)
      escreva("\n\nNão há para onde fugir.")

      escreva("\n\n1. Lutar\n\n")
      leia(opcao)
    } enquanto (opcao!=1)

    se (opcao==1) {
      introGuardiao()
    }

    


    
  }

  funcao introGuardiao () {
      inteiro vidaGuardiao = 120, ataqueguardiao = 70, defesaguardiao = 50
      inteiro opcao
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

      se (opcao==1) {
        batalhaGuardiao(vida[classe], ataque[classe], defesa[classe])
      }
      
      
    }

    funcao batalhaGuardiao (inteiro vidajogador, inteiro ataquejogador, inteiro defesajogador) {

      inteiro vidaGuardiao = 120, ataqueguardiao = 70, defesaguardiao = 50

      inteiro turno = 1, opcao, danoCausado, danoRecebido
      logico opcaoDefesa = falso
      
      
      faca {
        faca {
        opcaoDefesa = falso
        limpa()
        escreva("-BATALHA-\n\n")
        escreva(nomeHeroi ," x Guardião da Floresta\n\n" )
        escreva("VIDA: ", vidajogador, " | VIDA: ", vidaGuardiao)
        escreva("\nTURNO: ", turno)
        escreva("\n\nSUA VEZ: O QUE DESEJA FAZER?\n1. Atacar | 2. Defender | 3. Carregar ataque\n\nDigite a opção escolhida: ")
        leia(opcao)
      } enquanto (opcao>3 ou opcao<1)

      se (opcao==1) {
        danoCausado = ataquejogador - defesaguardiao
        se (danoCausado<0) {
          danoCausado = 0
        } 
        vidaGuardiao -= danoCausado

        escreva("\nVocê causou ", danoCausado, " de dano!")
      }    

      se (opcao==2) {
        opcaoDefesa = verdadeiro

        escreva("\nVocê escolheu se defender, o próximo ataque do seu inimigo causará metade do dano!")
      }

      se (opcao==3) {
        ataquejogador += ataquejogador/2
        
        escreva("Seu poder de ataque foi aumentado em 50%!")
      } 

      u.aguarde(2000)
      escreva("\n\nVEZ DO INIMIGO\n\n")

      danoRecebido = ataqueguardiao - defesajogador
      se (opcaoDefesa==verdadeiro) {
        vidajogador -= danoRecebido/2
        escreva("O guardião lhe atacou e causou ", danoRecebido/2, " de dano!")
      } senao {
        vidajogador -= danoRecebido
        escreva("O guardião lhe atacou e causou ", danoRecebido, " de dano!")
      }

      u.aguarde(2000)
      turno++
      } enquanto (vidajogador>0 e vidaGuardiao>0)

      se (vidajogador<=0) {
        escreva("você perdeu")
      }
      
      se (vidaGuardiao<=0) {
        escreva("você venceu")
      }



      


    } 
}