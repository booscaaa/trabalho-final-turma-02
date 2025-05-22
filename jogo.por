programa {inclua biblioteca Util--> u
  cadeia inicio 
    cadeia nomeAventureiro
    cadeia classe
    inteiro resultadoDado
    inteiro hpAtual
    inteiro hpMaximo
    inteiro ataqueBase
    inteiro manaAtual
    inteiro manaMaxima
  funcao inicio() {


  

    para(inteiro i = 3; i < 3; i++){

    }
   


    escreva("||HellChampions Studios Apresenta||")
    u.aguarde(2000)
    limpa()
  


    

    escreva("\n╔═════════════════════════════════╗")
    escreva("\n║        ⛧ DARKEST SOULS ⛧       ║")
    escreva("\n╠═════════════════════════════════╣")
    escreva("\n║                                 ║")
    escreva("\n║      I   ▸ Nova História        ║")
    escreva("\n║     II   ▸ Créditos             ║")
    escreva("\n║    III   ▸ Sair do Jogo         ║")
    escreva("\n║V 1.0.0                          ║")
    escreva("\n╚═════════════════════════════════╝\n")

    leia(inicio)
    limpa()

    se(inicio == "I"){
      escreva("\n||Há muito tempo, no Reino de Eldoria, a paz era mantida pela mística Pedra da Luz, protegida pelos Anciãos do Castelo Dourado.||\n")
      u.aguarde(2000)
      escreva("\n||Um dia, uma força sombria conhecida como O Devastador invadiu o reino, roubando a relíquia sagrada e mergulhando as terras em trevas e caos.||\n")
      u.aguarde(2000)
      escreva("\n||Vilas foram saqueadas, florestas corrompidas, e criaturas sombrias começaram a vagar pelas regiões.||\n")
      u.aguarde(2000)
      escreva("\n||Diante da crise, uma antiga profecia se cumpriu: um herói escolhido surgirá das sombras para restaurar a luz. Você é esse herói.||\n")
      u.aguarde(2000)
      escreva("\n||Sua missão é atravessar cinco regiões dominadas pelo mal, enfrentando inimigos, evoluindo suas habilidades||\n")
      u.aguarde(2000)
      escreva("\n||e se preparando para confrontar O Devastador no Castelo Dourado.||\n ")
      u.aguarde(2000)
      escreva("\n||A jornada será repleta de perigos, escolhas e batalhas. Seu destino e o de Eldoria estão entrelaçados.||\n")
      u.aguarde(3000)
      limpa()
    escreva("\n||🛡️ Qual é o nome do seu herói, bravo aventureiro?||\n")
    escreva("\n||Escolha com sabedoria — este será o nome que ecoará pelas tavernas, será sussurrado nos ventos e gravado nas lendas!||\n")
    leia(nomeAventureiro)
    u.aguarde(2000)
    escreva(nomeAventureiro, "\ncerto?")
    u.aguarde(1000)
    limpa()
    
    

    escreva("\n||⚔️ Escolha a sua classe, nobre aventureiro!||\n")
    u.aguarde(2000)
    escreva("\n||Cada caminho oferece poder, perigo e destino. Será você um guerreiro indomável, um mago das artes arcanas, Um Guerreiro poderoso com espadas e escudos ou então um Arqueiro Valente.||\n")
    u.aguarde(2000)
    escreva("\n||A decisão é sua... e moldará sua jornada!\n")
    u.aguarde(2000)
    escreva("\n||Escolha entre:||\n")
    u.aguarde(2000) 
    escreva("Arqueiro: Um Avventureiro focado em velocidade e precisão ataques a distancia e pouca durabilidade em batalha Vida Inicial 25 Defesa Inicial 15.")
    escreva("                                                                                                                                             \n")
escreva("                                                                                                                                             \n")
escreva("                                                        ######--                                                                             \n")
escreva("                                                    ::@@::----mm::                                                                           \n")
escreva("                                                  mmMM--::MM++--mmmm                                                                         \n")
escreva("                                                mmmm----@@::mm++--##                                                                         \n")
escreva("                                                ##--::##..    MM##..                                                                         \n")
escreva("                                                ##..++##                                                                                     \n")
escreva("                                                ##++##  ##                                                                                   \n")
escreva("                                                  ##    --##++                                                                               \n")
escreva("                                                    ##--##++MM##                                                                             \n")
escreva("                                                  ##  ##MM::--::######                                                                       \n")
escreva("                                              ::++      mm@@mm::::--::MMMM++--                                                               \n")
escreva("                                            ::::          --mm@@@@::------++mm--                                                             \n")
escreva("                                          ::++                ----##@@::------MMMM                                                           \n")
escreva("                                        ::++                          ####::....--##                                                         \n")
escreva("                                        MM                                ##::..  --##                                                       \n")
escreva("                                      ##                                  ..@@::..  ..##                                                     \n")
escreva("                                  ..##                                      ::MM::    ..##                                                   \n")
escreva("                                  ##                                          ::mm--  ..--##                                                 \n")
escreva("                              ..MM                                              ++MM--    --mm..                                             \n")
escreva("                            ++::                                                  --##----..--mm--                                           \n")
escreva("                          ::::                                                      --##::--..mm++                                           \n")
escreva("                        ::++                                                          ..##::..--MM..                                         \n")
escreva("                      --++                                                              ##::--....##                                         \n")
escreva("                      @@                                                                  ##::----##                                         \n")
escreva("                    ##                                                                      ##::----##                                       \n")
escreva("                --@@                                                                        @@::::::##                                       \n")
escreva("            ....##      ....                                                                --MM::++##..                                    \n")
escreva("            ##MM++mm  ..##mmmm                                                              --##########              ++++                   \n")
escreva("      ######..##  ..##  ++mm..##                                                            ##MM@@MMMMmm##          @@::::##@@               \n")
escreva("      MM--MM    ##--..MM  mm++..##                                                          ####@@@@@@@@##          ##mm::::::##++          \n")
escreva("      ++mm  ##    ##..::++  @@--  ##                                                        ##mmmmmm++++##          ##mm++++::..mm##--      \n")
escreva("      ################################################################################################################mm::++++++::..@@##    \n")
escreva("    ##::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::##MM++++++++++++----##  \n")
escreva("    @@MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMmmmm##@@@@@@@@@@@@MMMMMM@@  \n")
escreva("      @@##MM##mmMM##MM@@@@MM##@@MM##MMMMmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmMM##############MMMMMMMMMM##@@@@@@MMMMMMMM@@MM    \n")
escreva("      ++++::mm  ::@@  mm----MM..++mm                                                        ##@@@@MMMMMM##          ##@@MMMMmm@@MMMM        \n")
escreva("      ##@@##  MM++  @@..--mm..@@--                                                          ##MMMMMMmmmm##          ##MMmm####--..          \n")
escreva("            ##--  ##  --MM  ##                                                              --##########              ####                   \n")
escreva("            ######    --####--                                                              --MM++++++##                                     \n")
escreva("                ##                                                                          --@@::++##                                       \n")
escreva("                  ##                                                                        ##::::::##                                       \n")
escreva("                    ##                                                                    ..@@::--++##                                       \n")
escreva("                      mm..                                                              ::@@::----##                                         \n")
escreva("                        ++--                                                            ##::--..++mm                                         \n")
escreva("                        ..++                                                          mmMM--..::mm                                           \n")
escreva("                            MM                                                      ##++--  ..mm::                                           \n")
escreva("                              ##                                                  ##::::....mm++                                             \n")
escreva("                                ##                                              @@::--  ..::mm                                               \n")
escreva("                                  ##                                          ++mm--..  ..##                                                 \n")
escreva("                                    ##                                      ++MM--....--##                                                   \n")
escreva("                                      MM                                  ::MM--..  ++##                                                     \n")
escreva("                                        ++..                          mm++MM--....mm++                                                       \n")
escreva("                                          ++--                    ++++MMmm----++MM::                                                         \n")
escreva("                                            ++              ::MM@@mm++----..++mm--                                                           \n")
escreva("                                              @@        ..##MM++::------::##++                                                               \n")
escreva("                                                ##      ##++--------::####                                                                   \n")
escreva("                                                  ##  ##++----::######                                                                       \n")
escreva("                                                    ##..##++@@##                                                                             \n")
escreva("                                                  ##    ::##++                                                                               \n")
escreva("                                                ##::##++++                                                                                   \n")
escreva("                                                ##..::##      ::MM                                                                           \n")
escreva("                                                ##----mmmm  ::MM++MM                                                                         \n")
escreva("                                                ..##::--mm@@MM....##                                                                         \n")
escreva("                                                    ##::--::--..##                                                                           \n")
escreva("                                                      ##::----@@                                                                             \n")
escreva("                                                        ######--                                                                             \n")
escreva("                                                                                                                                             \n")
u.aguarde(3000)
limpa()

escreva("Guerreiro: Especialidade Em Vida e Defesa e capacitado a aguentar mais dano, Guerreiro usa espadas,Lanças,machados ou escudos Vida Inicial 35 Defesa 25.")
escreva("############################################################################################################################################\n")
escreva("############################################################################################################################################\n")
escreva("############################################################################################################################################\n")
escreva("############################################################################################################################################\n")
escreva("############################################################################################################################################\n")
escreva("################################################..##########################################MM##############################################\n")
escreva("################################################  ####################::####################::##############################################\n")
escreva("################################################  ####################..####################  ##############################################\n")
escreva("##############################################::--####################  ####################  MM############################################\n")
escreva("##############################################  @@##################::  ####################--..############################################\n")
escreva("############################################++  ####################--  @@##################::  ############################################\n")
escreva("############################################    ####################    ..####################    ##########################################\n")
escreva("##########################################    ::####################      ####################    --########################################\n")
escreva("########################################..    ######################      ####################@@    mm######################################\n")
escreva("####################################@@      @@####################--      ######################++    --####################################\n")
escreva("##################################mm      mm######################        MM######################..      @@################################\n")
escreva("################################::      ::########################          ########################..      @@##############################\n")
escreva("##############################MM      --##########################          ##########################        ##############################\n")
escreva("##############################      ..##########################@@          ############################      ..############################\n")
escreva("############################::      ##############################          ############################mm      @@##########################\n")
escreva("############################        ##############################--      ################################      ..##########################\n")
escreva("##########################MM      @@##########################                --##########################        ##########################\n")
escreva("##########################..      ########################                        --######################mm      ##########################\n")
escreva("##########################..      ####################::                              MM##################mm      mm########################\n")
escreva("##########################        @@##############                                        ::##############        ::########################\n")
escreva("##########################..        ############                      --                    MM############        mm########################\n")
escreva("##########################..        ++########MM                      ::                      ##########..        ##########################\n")
escreva("##########################@@          ..MM@@mm                        mm                      --MM@@++            ##########################\n")
escreva("############################                                          mm                                        ::##########################\n")
escreva("##############################                                        mm                                        ############################\n")
escreva("##############################@@                                      mm                                      ##############################\n")
escreva("################################@@                                    mm                    ::              ################################\n")
escreva("####################################          ++                      mm                    mm          ..##################################\n")
escreva("######################################        ##                      mm                    ..mm      ++####################################\n")
escreva("########################################@@    ##                      mm                      @@    ########################################\n")
escreva("############################################  ##                      mm                      MM  ##########################################\n")
escreva("############################################  --                      mm                    ++    ##########################################\n")
escreva("############################################                          mm                          ##########################################\n")
escreva("##########################################@@    MM##@@::              mm              ++####--    ##########################################\n")
escreva("##########################################++      ..######            ++          mm######..      ##########################################\n")
escreva("##########################################++        ########..        ..        ++######@@        ##########################################\n")
escreva("############################################..      MM########..              ++########--      ::##########################################\n")
escreva("############################################..        mm##########        ..##########--        mm##########################################\n")
escreva("############################################                                                  ::..##########################################\n")
escreva("############################################mm                                                    ##########################################\n")
escreva("############################################::                      ##  ##                      ::##########################################\n")
escreva("##############################################                    MM##  ##                      ############################################\n")
escreva("################################################                @@@@##  ##  ##                ##############################################\n")
escreva("################################################              --##++##  ##  ##                ##############################################\n")
escreva("################################################            @@..##..##  ##  ##..::            ##############################################\n")
escreva("################################################        ##  ##  ##  ##  ##  ##--##  ##        ##############################################\n")
escreva("################################################        ##MM##  ##  ##  ##  ##--##  ##      MM##############################################\n")
escreva("##################################################      ##MM##  ##  ##  ##  ##::##  ##++    ################################################\n")
escreva("##################################################    MM##MM##  ##  ##  ##  ##::##  @@@@    ################################################\n")
escreva("##################################################..  ####@@##  ##  ##  ##  ##--##  ##mm  ##################################################\n")
escreva("####################################################  ####@@##  ##  ##  ##  ##--##  ##mm  ##################################################\n")
escreva("####################################################  ########  ##  ##  ##  ##--##--##++--##################################################\n")
escreva("####################################################++++######--##  ##..##  ##::##@@##..####################################################\n")
escreva("######################################################::######++##MM##--##  ##++######  ####################################################\n")
escreva("######################################################mm##############::##::##########mm####################################################\n")
escreva("######################################################################::####################################################################\n")
escreva("############################################################################################################################################\n")
u.aguarde(3000)
limpa()
escreva("Mago: Alta Capacidade de magia bom a longa e curta distancia porem pouca resistencia Vida Inicial 20 Defesa 10 .")
   
    escreva("                                                                        ::####--                                                    \n")
    escreva("                                                                      ##mm      MM--                                                \n")
    escreva("                                                                    MMmm::..::MM--  ::++                                            \n")
    escreva("                                                                ++--mmMMmm    --    ++##  ##                                        \n")
    escreva("                                                              MM::  ..                        ::MM                                  \n")
    escreva("                                                          ..MM                              --      mm@@..                          \n")
    escreva("                                                        @@  mm                                      ..::..  ..MM::                  \n")
    escreva("                                                    --::++                    ----                  ..MM::::--..--                  \n")
    escreva("                                                  ##  ..                MM@@                          ::@@@@..  mm@@                \n")
    escreva("                                              ++..++          --::::++++mm..  ++                      ::mm----  ..##                \n")
    escreva("                                            @@            --..@@  mm  ..      mm                      ....      ..##                \n")
    escreva("                                        ##..            mm..    --            mm                    MMmm        ++##                \n")
    escreva("                                    ..MM                  @@..  ++--      ++@@--                mm++@@--          @@                \n")
    escreva("                                  @@++..      ::            MM##  ..MM++    ++                  ..      mm      ..                  \n")
    escreva("                                ##++..                            @@..      --              ..  --..  ..      --MM                  \n")
    escreva("                            ..mm--  ....                              ::@@mm              ..          --mm    ..++                  \n")
    escreva("                            ##  ..  --                                                  --            --..  ..##                    \n")
    escreva("                          --      mm  @@                                            ..--..          ..----..::                      \n")
    escreva("                            ::##mm    @@                                          ::mm              ....++..                        \n")
    escreva("                                MM  MM    mm                                    ::MM..            mm++  ##                          \n")
    escreva("                                MM..    ##    mm                              ....++              ::##++--                          \n")
    escreva("                            MM  @@--  ++    ::mm..++                    ++--....--            MM::@@                               \n")
    escreva("                          ##    ++      --@@..    @@  ::--@@MM::----..++@@++@@  ....        MM++@@                                   \n")
    escreva("                          @@  ::mm      ::  MM@@mm  ..MM..MM  --++::  ::--..  --MM        --..--                                     \n")
    escreva("                            ++..--::MM..--MM::--####  ..  ##  MM      ++::    mm        --++                                         \n")
    escreva("                                ##MM  mmmm::      --mm##      ##      ..              @@@@                                           \n")
    escreva("                                    mm..MM          ##::MM++      ##  ++          ::::@@                                             \n")
    escreva("                                      --          @@++..  @@  ##  ----..      ..  ##--                                               \n")
    escreva("                                    ..::      ..@@  ++  ++          ++mm    ++--                                                     \n")
    escreva("                                  ::++##++..  ::@@  MM..----        ::    ++mm@@                                                     \n")
    escreva("                                          @@..--  ..##--@@          mm    --MM                                                       \n")
    escreva("                                          ##..          ##  MM..  --@@..::..                                                         \n")
    escreva("                                                            ##  --##  ++                                                             \n")
    escreva("                                                                MM  --MM                                                             \n")
    escreva("                                                                  ----                                                              \n ")
    u.aguarde(3000)
    


    
    leia(classe)

    }senao se(inicio == "II"){
      limpa()
      escreva("Feito Por Mestre Fanfas")
      u.aguarde(3000)
      limpa()
      inicio()
    } senao se(inicio == "III"){
      limpa()
      escreva("Saindo Do Jogo")
      u.aguarde(1000)
      escreva(".")
       u.aguarde(1000)
      escreva(".")
       u.aguarde(1000)
      escreva(".")
      u.aguarde(3000)
      limpa()

     
      
    }
    
    
    

  }
  funcao inteiro lancarDado(){
    inteiro numeroSorteado

    numeroSorteado == u.sorteia(1,6)



    retorne numeroSorteado
  }

  
  }
   funcao logico escolherClasse() {
        inteiro escolha
        escreva("\nEscolha sua classe:\n")
        escreva("1. Guerreiro (HP Alto, Ataque Moderado)\n")
        escreva("2. Arqueiro (HP Médio, Ataque Preciso)\n")
        escreva("3. Mago     (HP Baixo, Ataque Mágico Forte, Usa Mana)\n")
        escreva("Digite o número da classe: ")
        leia(escolha)
   

        se (escolha == 1) {
            classePersonagem = "Guerreiro"
            hpMaximo = 150
            hpAtual = hpMaximo
            ataqueBase = 15
            manaAtual = 0 // Guerreiros não usam mana neste exemplo
            manaMaxima = 0
            retorna verdadeiro
        } senao se (escolha == 2) {
            classePersonagem = "Arqueiro"
            hpMaximo = 100
            hpAtual = hpMaximo
            ataqueBase = 12 // Ataque base pode ser menor, mas habilidades compensam
            manaAtual = 0 // Arqueiros não usam mana neste exemplo
            manaMaxima = 0
            // flechas = 20 // Exemplo
            retorna verdadeiro
        } senao se (escolha == 3) {
            classePersonagem = "Mago"
            hpMaximo = 80
            hpAtual = hpMaximo
            ataqueBase = 8  // Ataque base físico baixo, magia é o forte
            manaMaxima = 100
            manaAtual = manaMaxima
            retorna verdadeiro
        } senao {
            escreva("Escolha inválida!\n")
            retorna falso
        }
   }
   

