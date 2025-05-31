programa {
    
    inclua biblioteca Util

    inteiro xp=0, niveldocampeao=1, xpparasubirdenivel=100 
    inteiro danodaespecializacao, vidadaespecializacao, agilidadedaespecializacao, defesadaespecializacao
    

    funcao nivelupado() {
    se (xp >= xpparasubirdenivel) {
        xp = xp - xpparasubirdenivel 
        niveldocampeao++
        escreva("\n🎉 Parabéns! Você subiu para o nível ", niveldocampeao, "!\n")
        
            
            escreva("Escolha um atributo para melhorar:\n")
            escreva("1 - Dano\n")
            escreva("2 - Vida\n")
            escreva("3 - Agilidade\n")
            escreva("4 - Defesa\n")
            inteiro escolhaaespecializacaoparaaplicaramelhoriadehabilidade
            leia(escolhaaespecializacaoparaaplicaramelhoriadehabilidade)
            
            se(escolhaaespecializacaoparaaplicaramelhoriadehabilidade == 1) {
                danodaespecializacao = danodaespecializacao + 10
                escreva("Seu dano aumentou em 10 pontos!!")
            }
            senao se(escolhaaespecializacaoparaaplicaramelhoriadehabilidade == 2) {
                vidadaespecializacao = vidadaespecializacao + 10
                escreva("Sua vida aumentou em 10 pontos")
            }
            senao se(escolhaaespecializacaoparaaplicaramelhoriadehabilidade == 3) {
                agilidadedaespecializacao = agilidadedaespecializacao + 10
                escreva("Você aumentou sua agilidade em 10 pontos!!")
            }
            senao se(escolhaaespecializacaoparaaplicaramelhoriadehabilidade == 4) {
                defesadaespecializacao = defesadaespecializacao + 10
                escreva("Você aumentou sua defesa em 10 pontos!!")
            }
            senao {
                escreva("Opção inválida! Nenhum atributo foi melhorado.")
            }
        }
    }
    funcao inteiro sortear(inteiro min, inteiro max) {
    retorne Util.aleatorio(min, max)
}
    funcao inicio() {
        inteiro opcao
        inteiro opcaodecontinuarcomojogo
        cadeia nomedocampeao
        cadeia armadaespecializacao

        

        escreva("--------------------------------------\n")
        escreva("!!BEM VINDO AO GAME A JORNADA DO HERÓI!!\n")
        escreva("--------------------------------------\n")

        escreva("1 - Novo jogo, Uma nova aventura se iniciará!\n")
        escreva("2 - Créditos, apoie nossos criadores!>_>\n")
        escreva("3 - Sair, sempre estaremos precisando de boas almas!\n")

        leia(opcao)

        escolha (opcao) {
            caso 1:
                escreva("=================================================================\n")
                escreva("Por favor campeão, coloque aqui o nome do seu campeão...\n") 
                leia(nomedocampeao)
                escreva("Seja muito bem vindo ao reino de Eldoria ", nomedocampeao, "\n")
                escreva("==================================================================\n")

                escreva("Por favor campeão, escolha a especializacao na qual você pretende jogar:\n")
                escreva("1=GUERREIRO-Classe lutadora com atributos focados principalmente em resistencia e vida ,--POUCO DANO \n")
                escreva("2=ARCANISTA-Uma classe poderosa com dano base alto e canalizacao da magia em tempo mediano,--POUCA VIDA \n")
                escreva("3=ARQUEIRO-Classe rápida,de alta agilidade possuindo diversos ataques ágeis com as flechas poderosas,--VIDA BAIXA E DANO MEDIANO \n")
                escreva("4=CAVALEIRO DAS TREVAS-Ataques potentes porém deixa a magia negra consumir parte de sua vida dessa forma reduzindo os atributos,--POUCA VIDA E VELOCIDADE REDUZIDA \n")

                inteiro especializacaodeclasse
                leia(especializacaodeclasse)

                escolha(especializacaodeclasse) {
                    caso 1:
                        danodaespecializacao = 16
                        vidadaespecializacao = 60
                        agilidadedaespecializacao = 46
                        defesadaespecializacao = 58
                        armadaespecializacao = "Machado do ancião de Eldoria"
                        escreva("--------------------------------------------------------------------------------------\n")
                        escreva("Você escolheu a classe guerreiro,nossos inimigos sentirão o poder de nossa lâmina!\n")
                        escreva("Vida total:", vidadaespecializacao, "\n")
                        escreva("Dano total:", danodaespecializacao, "\n")
                        escreva("Agilidade da especializacao:", agilidadedaespecializacao, "\n")
                        escreva("Defesa da especializacao:", defesadaespecializacao, "\n")
                        escreva("Arma inicial:", armadaespecializacao, "\n")
                        escreva("--------------------------------------------------------------------------------------\n")
                        pare

                    caso 2:
                        danodaespecializacao = 67
                        vidadaespecializacao = 40
                        agilidadedaespecializacao = 44
                        defesadaespecializacao = 23
                        armadaespecializacao = "Cajado do fogo sagrado de Eldoria\n"
                        escreva("--------------------------------------------------------------------------------------\n")
                        escreva("Você escolheu a classe arcanista!A magia flui dentro de você herói!\n")
                        escreva("Vida total:", vidadaespecializacao, "\n")
                        escreva("Dano total:", danodaespecializacao, "\n")
                        escreva("Agilidade da especializacao:", agilidadedaespecializacao, "\n")
                        escreva("Defesa da especializacao:", defesadaespecializacao, "\n")
                        escreva("Arma inicial:", armadaespecializacao, "\n")
                        escreva("--------------------------------------------------------------------------------------\n")
                        pare

                    caso 3:
                        danodaespecializacao = 37
                        vidadaespecializacao = 40
                        agilidadedaespecializacao = 60
                        defesadaespecializacao = 13
                        armadaespecializacao = "Arco silvestre de Eldoria\n"
                        escreva("--------------------------------------------------------------------------------------\n")
                        escreva("Você escolheu a especializacao de arqueiro!Suas flechas são mortais,e sua forca de vontade indomável \n")
                        escreva("Vida total:", vidadaespecializacao, "\n")
                        escreva("Dano total:", danodaespecializacao, "\n")
                        escreva("Agilidade da especializacao:", agilidadedaespecializacao, "\n")
                        escreva("Defesa da especializacao:", defesadaespecializacao, "\n")
                        escreva("Arma inicial:", armadaespecializacao, "\n")
                        escreva("--------------------------------------------------------------------------------------\n")
                        pare

                    caso 4:
                        danodaespecializacao = 63
                        vidadaespecializacao = 21
                        agilidadedaespecializacao = 36
                        defesadaespecializacao = 40
                        armadaespecializacao = "Espada das catacumbas sombrias de eldoria\n"
                        escreva("--------------------------------------------------------------------------------------\n")
                        escreva("Você escolheu a especializacao de cavaleiro da morte!O poder sombrio retomará Eldoria novamente! \n")
                        escreva("Vida total:", vidadaespecializacao, "\n")
                        escreva("Dano total:", danodaespecializacao, "\n")
                        escreva("Agilidade da especializacao:", agilidadedaespecializacao, "\n")
                        escreva("Defesa da especializacao:", defesadaespecializacao, "\n")
                        escreva("Arma inicial:", armadaespecializacao, "\n")
                        escreva("--------------------------------------------------------------------------------------\n")
                        pare
                }
                
                escreva("Você deseja prosseguir com o jogo?", nomedocampeao, "\n")
                escreva("Por favor, digite -1- para continuar a sua aventura em Eldoria e -2- para pararmos por aqui!")
                leia(opcaodecontinuarcomojogo)
                
                se(opcaodecontinuarcomojogo == 1) {
                    escreva("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n")
                    
                    escreva("                      ..                                mm                                                                                  \n")
                    Util.aguarde(250)
                    escreva("                      --                                ::                                                                                  \n")
                    Util.aguarde(250)
                    escreva("                      --                                ::                                                      --------                    \n")
                    Util.aguarde(250)
                    escreva("                        ::                            --::..              ::::                                  --..  --..                  \n")
                    Util.aguarde(250)
                    escreva("        ..          --  ::                            ::::MM              ::::                                --..----  --          mm      \n")
                    Util.aguarde(250)
                    escreva("    --....----      --  ::          ----::            ::::MM            ::::::::      ..          --          ----....----          mm..    \n")
                    Util.aguarde(250)
                    escreva("    --  --  --      --  ::        ----  ::::::        --::MM        ..  ::::::::      ::      ::::----        ------------          mm      \n")
                    Util.aguarde(250)
                    escreva("    --  ::----    ----  ::::      ----..::::::::    ::::..MM..          ::::::::      ::    ::::::------    ::MM--------..        mm  ..    \n")
                    Util.aguarde(250)
                    escreva("    ----------    --..    ::    ----....::::::::::  ::::::MMMM          ::::::::    --    ::::::::MM  --  MMMMMMMM----  ..        mmmm....  \n")
                    Util.aguarde(250)
                    escreva("    --------++::::----  ::::    ----++..::::::::::  ::  ::mmMM    ..    ::::--::..    ::  ::::::..MM----::--MMmmMMMM  ....      ..mmmm....  \n")
                    Util.aguarde(250)
                    escreva("  ......--++::::  ++--  ::::..  ----MM..::::::::--  :1:::  mm++      ..++::  --::..  ....++::::::::MM--  MMmm::  mmMM..  ....    mm  mm....  \n")
                    Util.aguarde(250)
                    escreva("  ....  ++++::::++++    ::::::  ----MM..::  ::----::----::  mm++    ++::::::::--..  ..--++::--  ++MM  --MMmm--mm  MMmm++++      mmmmmm......\n")
                    Util.aguarde(250)
                    escreva("  ..----++++::  ++::++      ::  --------  ----::::::::--::  MMMM  ++::++++------  --  ::::--::::  MM----mmMMMM::MMmmmm++::++    mmmmmm......\n")
                    Util.aguarde(250)
                    escreva("--------------::++++++    ::::  ..----..----::::::----::  MMmmmm----++++++....::  ----::::++..::--@@++  mmmmMMmmmmmmmm++  ++++mmmm..mm......\n")
                    Util.aguarde(250)
                    escreva("----::------::++++  ++  ------  ..----  --  ----  --..  ::mm..mm++++::++++......  ----::  ::::--::++  ++mm..MMmm++mmmm++++++++mmmmmmmm......\n")
                    Util.aguarde(250)
                    escreva("------------::++++++    ------....----  ------  ----::  ::++--mmMM++++++++..    ..----..::::  ----++++::mmMMMMMMmmmm++..++++++mm  mmmm..  ..\n")
                    Util.aguarde(250)
                    escreva("------  ------++::++    --------  ....  ------mm--  --::::MMmm--MM++++++++......----  ::--MMMM  --++::  ++mmmmmmmmmm++++--++++MMmmmm  ......\n")
                    Util.aguarde(250)
                    escreva("    ----------++::..--  ::  ----......  ----::MM++::::::::MM  mm@@++++  ++  ....----  ::::MMMM--  ++::++::++MMMMmm++..++++  --mmmmmmmm......\n")
                    Util.aguarde(250)
                    escreva("  ::--  ::--  ------..  --------......  ::--mm++++::::..::  MMmmMM++++  ++..--..------::MMMM::mm--++::::::::    ++++++  ::  MMmmmmmmmm......\n")
                    Util.aguarde(250)
                    escreva("------------  --------  ::::----..  ..  ::MMMMmm++::::::::::MMMMMM++++  ++......--..  ::--MMMM++MMmm  ::++++      ++++++++++MM  mmmmmm..--..\n")
                    Util.aguarde(250)
                    escreva("  --------    ----  --  ::::--------..    MMMMmm++        ++  --MM  ++++++......----..::--MMMMMMMM--++++++--      ++++++++++mmmmmmmmmm......\n")
                    Util.aguarde(250)
                    escreva("        MM    --------  ::::::------..  MMMMMMmm--::--::::MMMMMMMM    --++....  ----  ::::  mmMMMMmm++++++            ++++  mmmmmmmm  ......\n")
                    Util.aguarde(250)
                    escreva("        MM      --          ::..------  MMmm        --::::MMMM..MM      ::      ------::  ::::    mm++++                    mmmm  mmmm......\n")
                    Util.aguarde(250)
                    escreva("        MM                        ----          ::::::::::mmMMMMMM      ::      ------::--::::    MM                        mmmmmmmmmm  ....\n")
                    Util.aguarde(250)
                    escreva("        MM                            ..        --::::::--MMMMMMmm      ++      --------::::      MM                        ..mmMM        ..\n")
                    Util.aguarde(250)
                    escreva("        MM                            ..            ::::  MMMM          ++          --::..        MM                                        \n")
                    Util.aguarde(250)
                    escreva("        MM                            ..                                ++                        MM                                        \n")
                    Util.aguarde(250)
                    escreva("        MM                            ..                                --                        MM                                        \n")
                    Util.aguarde(250)
                    escreva("        MM                            ..                                --                        MM                                        \n")
                    Util.aguarde(250)
                    escreva("        MM                            ..                                --                        MM                                        \n")
                    Util.aguarde(250)
                    
                    escreva("\n\n\n\n")

                    escreva("-Era uma vez, uma terra próspera e linda chamada Eldoria \n")
                    Util.aguarde(250)
                    escreva("-Podia-se ver em seus céus a beleza de toda aquela terra abencoada pelos deuses...\n")
                    Util.aguarde(250)
                    escreva("-No topo da colina podia-se ver um castelo brilhante, popularmente chamado de castelo dourado\n")
                    Util.aguarde(250)
                    escreva("-Lá dentro possuia uma pedra dourada chamada de pedra da luz, a mesma pedra que mantinha a paz em toda Eldoria.\n")
                    Util.aguarde(250)
                    escreva("\n\n\n\n")
                    escreva("-Um belo dia, os céus se escureceram e uma névoa acompanhada de um meteoro com uma mágia negra cobriram o dia ensolarado de Eldoria\n")
                    Util.aguarde(250)
                    escreva("-No momento que chegou ao chão, a linda terra chamada de Eldoria mergulha-rá em um caos negro jamais visto\n")
                    Util.aguarde(250)
                    escreva("-A terra que antes fora verde está negra, e a terra fértil já não era mais a mesma\n")
                    Util.aguarde(250)
                    escreva("-O monstro tinha uma aparencia sombria, intitulado por muitas religiões como o devastador,possuia tentáculos e uma aparência que causa medo até no mais bravo dos guerreiros!\n")
                    Util.aguarde(250)
                    escreva("-No momento que esse montro chegou ao castelo onde mantinha-se a pedra sagrada protegida foi tentado atacá-lo mas os guardar não tiveram êxito...\n")
                    Util.aguarde(250)
                    escreva("-O devastador tomou conta do castelo, transformando-o em um covil amedrontador e espalhou seus lacaios para todas as terras de Eldoria...\n")
                    Util.aguarde(250)
                    escreva("-A floresta da névoa que já foi um lindo lugar como mostra no desenho acima, agora era fria e comandada pelo temível Xavius, demonio com uma sede de sangue indomável...\n")
                    Util.aguarde(250)
                    escreva("-A vila abandonada onde possuia pessoas felizes, apenas restava almas ecoantes. Comandada por um de seus melhores lacaios, GulDhan, bruxo sombrio e um dos generais do devastador\n")
                    Util.aguarde(250)
                    escreva("-A caverna sombria agora era habitada por Ragnaros o senhor do fogo, emergiu a partir dos grandes terremotos e da energia má do devastador...\n")
                    Util.aguarde(250)
                    escreva("-O pântano dos lamentos, uma região que guardava diversas armadilhas e um terreno sombrio, era comandado pelo Carniceiro, braco direito do devastador...")
                    Util.aguarde(250)
                    escreva("-E o castelo...o mesmo que uma vez era brilhante e cheio de vida agora foi consumido por trevas...\n")
                    Util.aguarde(250)
                    escreva("-Agora nosso herói ", nomedocampeao, " corre contra o tempo para que possamos voltar ao controle de nossa amada Eldoria.\n")
                    Util.aguarde(250)
                    escreva("-Salve nossa Eldoria campeão, contamos com você...")
                    Util.aguarde(250)
                    escreva("\n\n\n\n\n")

                    inteiro opcaodecontinuarcomojogo2
                    escreva("Deseja continuar para a floresta da névoa campeão?\n")
                    escreva("1-SIM\n")
                    escreva("2-NÃO\n")
                    leia(opcaodecontinuarcomojogo2)

                    se(opcaodecontinuarcomojogo2 == 1) {
                        escreva("\n\n\n\n\n")
                        inteiro escolheroproximocaminho
                        escreva("Ao chegar na floresta da névoa você se depara com dois caminhos, um deles é um caminho que leva a um rio turvo, com algumas algas por cima dele...\n")
                        escreva("O outro caminho é um caminho com algumas cabanas abandonadas na qual você pode ouvir sussuros ouvindo de lá...\n")
                        escreva("-Agora é com você ", nomedocampeao, ", por onde deseja seguir?\n")
                        escreva("1-CAMINHO DO RIO TURVO\n")
                        escreva("2-CAMINHO DAS CABANAS ABANDONADAS(NAO RECOMENDADO)\n")
                        leia(escolheroproximocaminho)

                        se(escolheroproximocaminho == 1) {
                            escreva("Você adentra o caminho do rio mas ali por perto repara na presenca de algo se mexendo em meio aos arbustos...\n")
                            Util.aguarde(500)
                            escreva("Você encontrou um GOBLIN DA NÉVOA!!\n")
                            Util.aguarde(500)
                            inteiro vidaDoGoblin = 25
                            inteiro danoDoGoblin = 6
                            inteiro acaodocombate
                            logico defendeuseNesteTurno = falso

                            enquanto(vidadaespecializacao > 0 e vidaDoGoblin > 0) {
                                escreva("\nSUA VIDA:", vidadaespecializacao, "\nVIDA DO INIMIGO:", vidaDoGoblin, "\n")
                                escreva("1-ATACAR\n")
                                escreva("2-DEFENDER-SE\n")
                                leia(acaodocombate)
                                defendeuseNesteTurno = falso
                                
                                se(acaodocombate == 1) {
                                    vidaDoGoblin = vidaDoGoblin - danodaespecializacao
                                    escreva("Muito bem herói, você causou:", danodaespecializacao, "de dano no inimigo")
                                }
                                senao se(acaodocombate == 2) {
                                    defendeuseNesteTurno = verdadeiro 
                                    inteiro danoreduzidoNestecombate = danoDoGoblin / 2
                                    vidadaespecializacao = vidadaespecializacao - danoreduzidoNestecombate
                                    escreva("Voce acabou se defendendo campeao, e o inimigo causou apenas", danoreduzidoNestecombate, "de dano\n")
                                }
                                senao {
                                    escreva("O inimigo aproveitou a sua indecisão!!")
                                }
                            
                                se(vidaDoGoblin > 0 e defendeuseNesteTurno == falso) {
                                    vidadaespecializacao = vidadaespecializacao - danoDoGoblin
                                    escreva("O goblin atacou você causando", danoDoGoblin, "de dano\n")
                                }
                            }
                            
                            se(vidadaespecializacao <= 0) {
                                escreva("Você foi derrotado pelo inimigo ", nomedocampeao, "\n")
                                escreva("FIM DE JOGO CAMPEAO!\n")
                            }
                            senao se(vidaDoGoblin <= 0) {
                                escreva("Parabéns ", nomedocampeao, ", Voce derrotou o inimigo!!\n")
                                inteiro xpGanhonocombatecontraogoblin = 100
                                xp = xp + xpGanhonocombatecontraogoblin
                                escreva("Parabéns ", nomedocampeao, ", Voce recebeu", xpGanhonocombatecontraogoblin, "de XP\n")
                                nivelupado(xp, xpparasubirdenivel, niveldocampeao)
                                escreva("Meus parabéns",nomedocampeao,"você derrotou seu primeiro inimigo!Sabiamos que você consegueria!!\n")
                                Util.aguarde(5000)

                            limpa()
                            escreva("-Voce segue pelo caminho do rio e se depara com corpos pelo chão...\n")
                            Util.aguarde(500)
                            escreva("-Você fica confuso e tenta entender tudo oque está acontecendo...\n")
                            Util.aguarde(500)
                            escreva("-Nada parece fazer sentido nesta terra de ninguém...\n")
                            Util.aguarde(500)
                            escreva("-Você encontra um barco na margem do rio!\n")
                            Util.aguarde(500)
                            inteiro remarateaoutramargemopcaodojogoflorestadanevoa
                            escreva("1-REMAR ATÉ A OUTRA MARGEM\n")
                            leia(remarateaoutramargemopcaodojogoflorestadanevoa)
                            se(remarateaoutramargemopcaodojogoflorestadanevoa==1){
                            inteiro consumirounaoapocaodovelhomisterioso
                            escreva("-Voce rema até a outra margem e ao chegar lá encontra um monge misterioso , com uma aparencia um tanto quanto duvidosa.\n")
                            escreva("-O velho viu a sua brava batalha contra o goblin e resolveu lhe dar uma pocao com uma cor um tanto duvidosa , voce a consome?\n")
                            escreva("!POSSÍVEL BONUS!\n")
                            escreva("1-CONSUMIR POCAO\n")
                            escreva("2-NAO CONSUMIR POCAO\n")
                            leia(consumirounaoapocaodovelhomisterioso)
                            escolha(consumirounaoapocaodovelhomisterioso){
                              caso 1:
                              escreva("Voce consumiu a pocao do velho lhe causando um certo desconforto")
                              vidadaespecializacao = vidadaespecializacao + 7
                              escreva("Você bebeu tudo...sua vida agora é",vidadaespecializacao,"\n")
                              pare
                              caso 2: 
                              escreva("Você seguiu sua rota sem nenhuma alteracao\n")
                              escreva("Sua vida total é",vidadaespecializacao,"\n")
                              pare
                            }
                              escreva("Sua vida",vidadaespecializacao,"\n")
                              escreva("Voce continua sua jornada pela floresta...\n")
                              escreva("Ao andar pela floresta da névoa voce encontra um caminho com cogumelos verdes...\n")
                              escreva("O outro caminho parece ser mais calmo , porém mais longo...\n")
                              escreva("POR QUAL CAMINHO PROSSEGUIR?\n")
                              escreva("\n\n\n\n")
                              escreva("ESCOLHA ONDE DESEJA IR JOGADOR...\n")
                              escreva("1-CAMINHO DOS COGUMELOS...\n")
                              escreva("2-CAMINHO MAIS LONGO...\n")
                              inteiro caminhoparaprosseguirflorestadanevoa2
                              leia(caminhoparaprosseguirflorestadanevoa2)
                              escolha(caminhoparaprosseguirflorestadanevoa2){
                                caso 1:
                                escreva("VOCÊ ENCONTROU UM GOLEM DE COGUMELOS!!\n")
                                inteiro vidaDoGolemDeCogumelos = 25
                                inteiro danoDoGolemDeCogumelos = 6
                                inteiro acaoDoCombateDoGolemDeCogumelos
                                logico defendeuSeNesteTurnoContraOGolemDeCogumelos = falso

                                enquanto(vidadaespecializacao > 0 e vidaDoGolemDeCogumelos > 0) {
                                    escreva("\nSUA VIDA:", vidadaespecializacao, "\nVIDA DO INIMIGO:", vidaDoGolemDeCogumelos, "\n")
                                    escreva("1-ATACAR\n")
                                    escreva("2-DEFENDER-SE\n")
                                    leia(acaoDoCombateDoGolemDeCogumelos)
                                    defendeuSeNesteTurnoContraOGolemDeCogumelos = falso
                                    
                                    se(acaoDoCombateDoGolemDeCogumelos == 1) {
                                        vidaDoGolemDeCogumelos = vidaDoGolemDeCogumelos - danodaespecializacao
                                        escreva("Muito bem herói, você causou:", danodaespecializacao, "de dano no inimigo")
                                    }
                                    senao se(acaoDoCombateDoGolemDeCogumelos == 2) {
                                        defendeuSeNesteTurnoContraOGolemDeCogumelos = verdadeiro 
                                        inteiro danoReduzidoNesteCombateGolemDeCogumelos = danoDoGolemDeCogumelos / 2
                                        vidadaespecializacao = vidadaespecializacao - danoReduzidoNesteCombateGolemDeCogumelos
                                        escreva("Voce acabou se defendendo campeao, e o inimigo causou apenas", danoReduzidoNesteCombateGolemDeCogumelos, "de dano\n")
                                    }
                                    senao {
                                        escreva("O inimigo aproveitou a sua indecisão!!")
                                    }

                                    se(vidaDoGolemDeCogumelos > 0 e defendeuSeNesteTurnoContraOGolemDeCogumelos == falso) {
                                        vidadaespecializacao = vidadaespecializacao - danoDoGolemDeCogumelos
                                        escreva("O golem atacou você causando", danoDoGolemDeCogumelos, "de dano\n")
                                    }
                                    senao se(vidaDoGolemDeCogumelos <= 0) {
                                        escreva("Parabéns ",nomedocampeao, ", Voce derrotou o inimigo!!\n")
                                        inteiro xpGanhoContraOGolemDosCogumelos = 100
                                        xp = xp + xpGanhoContraOGolemDosCogumelos
                                        escreva("Parabéns ",nomedocampeao, ", Voce recebeu", xpGanhoContraOGolemDosCogumelos, "de XP\n")
                                        nivelupado(xp, xpparasubirdenivel, niveldocampeao)
                                        escreva("Meus parabéns ",nomedocampeao, " você derrotou seu primeiro inimigo! Sabiamos que você consegueria!!\n")
                                    }
                                }
                            
                              

                                pare
                                caso 2: 
                                escreva("Voce prossegue pela floresta no caminho calmo porém anda acontece...\n")
                                escreva(nomedocampeao,"aproveita a vista de uma floresta que é linda , porém conturbada...\n")
                                escreva("Voce anda um pouco mais e acaba encontrando uma fogueira...")
                                escreva("Provavelmetne ela foi deixada por algum explorador que ali passava...")
                                escreva("Você resolve reascendê-la com alguns galhos que você encontrou ali por perto...")
                                pare
                               }
                               escreva("\n\n\n\n")
                               escreva("Muito bem herói após suas escolhas anteriores voce segue com os seguintes status base:\n")
                               escreva(vidadaespecializacao,"de vida\n")
                               escreva(danodaespecializacao,"de dano\n")
                               escreva(agilidadedaespecializacao,"de agilidade\n")
                               escreva(defesadaespecializacao,"de defesa\n")

                               escreva(nomedocampeao,"acaba saindo por um caminho que se co-liga com as outras duas estradas anteriores...\n")
                               escreva("Você acaba encontrando rastros de florestas destruidas por um trecho da floresta...\n")
                               Util.aguarde(3000)
                               escreva("Ao avancar por todo o trecho, voce encontra uma carroagem de guerreiros de Eldoria...\n")
                               escreva(nomedocampeao,"encontrou uma carroagem destruida...\n")
                               escreva("Ao encontrar aquilo",nomedocampeao,"vai até um dos guerreiros da pedra sagrada de Eldoria")
                               
                               inteiro opcao_de_dialogo_com_o_guerreiro_ferido
                               escreva("--DESCUBRA QUEM FEZ AQUILO--\n")
                               escreva("1==TENTAR AJUDÁ-LO\n")
                               escreva("2==PERGUNTAR QUEM FEZ AQUILO\n")
                               escreva("3==DEIXÁ-LO MORRER\n")
                               leia(opcao_de_dialogo_com_o_guerreiro_ferido)
                               
                               escolha(opcao_de_dialogo_com_o_guerreiro_ferido){
                                caso 1:
                                escreva("Obrigado meu caro...mas creio que não tenho muitas chances de sair daqui...\n")
                                escreva("Vá embora enquanto ainda lhe resta tempo...\n")
                                escreva("É impossível de vence-lo...ele é imbatível...maldito...\n")
                                escreva("Xa....vii...us...\n")
                                escreva("O guerreiro se engasga e dá seu último suspiro...\n")
                                pare

                                caso 2:
                                escreva("Foi ele ...Xavius\n")
                                escreva("Com seus ataques devastadores ele possui uma forca bruta indescritível...\n")
                                escreva("Vejo que voce quer enfrentá-lo , mas tome cuidado...\n")
                                escreva("Mal....dit...ooo.. cof cof\n")
                                escreva("O guerreiro se engasga e dá seu último suspiro...\n")
                                pare
                                caso 3:
                                escreva("Você observa o guerreiro morrer...\n")
                                escreva("O guerreiro lhe observa...e gagueja suas ultimas palavras...\n")
                                escreva(nomedocampeao,"acabe com ele...por favor..\n")
                                pare
                               }
                                escreva("Voce se pergunta como ele sabia seu nome...\n")
                                Util.aguarde(4000)
                                escreva("\n\n\n\n")
                                escreva("Voce resolve continuar sua jornada...\n")
                                Util.aguarde(4000)
                                inteiro ir_para_a_primeira_fase_final
                                escreva("1-ENTRAR NO TERRITÓRIO DE XAVIUS\n")
                                leia(ir_para_a_primeira_fase_final)
                                se (ir_para_a_primeira_fase_final == 1) {
                                 escreva("\n\n\n\n")
                                escreva("-------------------------------------------------\n")
                                escreva("VOCÊ ENCONTROU XAVIUS -O COLOSSO DOS MIL MUNDOS-\n")
                                escreva("--------------------------------------------------\n")
                                inteiro vida_do_primeiro_chefe_xavius = 100
                                inteiro dano_de_ataque_chefe_xavius = 27
                                cadeia nome_chefe_xavius = "XAVIUS , O COLOSSO"
                                logico defenderse_chefe_xavius = falso
                                inteiro xp_recebido_de_xavius = 100
                                
                        enquanto(vidadaespecializacao > 0 e vida_do_primeiro_chefe_xavius > 0) {
                                escreva("\nSUA VIDA:", vidadaespecializacao, "\nVIDA DO ", nome_chefe_xavius, ":", vida_do_primeiro_chefe_xavius, "\n")
                                escreva("1-ATACAR\n")
                                escreva("2-DEFENDER-SE\n")
                                inteiro acao_combate_chefe_xavius
                                leia(acao_combate_chefe_xavius)
                                defenderse_chefe_xavius = falso

                                se(acao_combate_chefe_xavius==1){
                                  danodaespecializacao=Util.sorteia(danodaespecializacao-2,danodaespecializacao + 2)
                                  agilidadedaespecializacao = Util.sorteia(1,100)
                                  se(agilidadedaespecializacao<=15){
                                    danodaespecializacao = danodaespecializacao * 2
                                    escreva("VOCÊ CAUSOU UM ATAQUE CRÍTICO CAMPEÃO!!\n")
                                  }
                                vida_do_primeiro_chefe_xavius = vida_do_primeiro_chefe_xavius - danodaespecializacao
                                escreva("\nVocê causou",danodaespecializacao,"de dano em",nome_chefe_xavius,"\n")
                                }
                                senao se(acao_combate_chefe_xavius==2){
                                  defenderse_chefe_xavius = verdadeiro
                                  inteiro dano_reduzido_do_chefe_xavius = (Util.sorteia(dano_de_ataque_chefe_xavius-2,dano_de_ataque_chefe_xavius)) / 2
                                  se(dano_reduzido_do_chefe_xavius < 0){
                                    dano_reduzido_do_chefe_xavius = 0
                                  }
                                  vidadaespecializacao = vidadaespecializacao - dano_reduzido_do_chefe_xavius
                                  escreva("Voce se defendeu de ",nome_chefe_xavius,"o inimigo causou apenas",dano_reduzido_do_chefe_xavius,"\n")
                                  }senao{escreva(nome_chefe_xavius,"Aproveitou as tua brecha",nomedocampeao,"  lhe atacou!!\n")}
                                  se(vida_do_primeiro_chefe_xavius > 0 e defenderse_chefe_xavius==falso){
                                    dano_de_ataque_chefe_xavius = Util.sorteia(dano_de_ataque_chefe_xavius-5,dano_de_ataque_chefe_xavius+5)
                                    se(dano_de_ataque_chefe_xavius<0){
                                      dano_de_ataque_chefe_xavius = 0
                                    }
                                    inteiro chance_de_esquiva_chefe_xavius=Util.sorteia(1,100)
                                    se(chance_de_esquiva_chefe_xavius<=15){
                                      escreva("\nVocê se esquivou de",nome_chefe_xavius,"\n")
                                    }
                                    senao{
                                      vidadaespecializacao = vidadaespecializacao - dano_de_ataque_chefe_xavius
                                      escreva("\nVoce recebeu",dano_de_ataque_chefe_xavius,"de",nome_chefe_xavius,"\n")
                                    }
                                  }
                                 

                                  

                                }
                                se(vidadaespecializacao <=0){
                                  escreva("Voce foi derrotado por",nome_chefe_xavius,"\n")
                                  escreva("Que os deuses guardem sua alma",nomedocampeao,"\n")
                                  }
                                senao se(vida_do_primeiro_chefe_xavius<=0){
                                  escreva("Parabéns",nomedocampeao,"voce derrotou",nome_chefe_xavius,"\n")
                                  xp = xp + xp_recebido_de_xavius
                                  escreva(nomedocampeao," você recebeu ",vida_do_primeiro_chefe_xavius,"parabéns",nomedocampeao,"\n")
                                  nivelupado(xp, xpparasubirdenivel, niveldocampeao)
                                  escreva("Muito obrigado campeão, você libertou a floresta da névoa de",nome_chefe_xavius,"\n")
                                  escreva("\n\n\n\n")
                                  escreva("Voce resolve descansar após uma árdua batalha e se regenera em uma fogueira que havia lá por perto...\n")
                                  inteiro sorteio_do_descanso_apos_concluir_florestadanevoa
                                  sorteio_do_descanso_apos_concluir_florestadanevoa = Util.sorteia(10,50)
                                  escreva("\nApós seu descanso você aumentou",sorteio_do_descanso_apos_concluir_florestadanevoa,"de vida máxima\n")
                                  vidadaespecializacao = vidadaespecializacao + sorteio_do_descanso_apos_concluir_florestadanevoa
                                  escreva("\nApós um bom descanso",nomedocampeao,"acorda e revigora suas energias antes de ir para a sua próxima aventura...\n")
                                  escreva("SUA VIDA:",vidadaespecializacao,"\n")
                                  Util.aguarde(4000)
                                  escreva("\n\n\n\n")
                                  
                                  escreva("Parabéns campeão escolha a região na qual você deseja ir...\n")
                                  escreva("REINO DE ELDORIA\n")
                                  escreva("1-FLORESTA DA NÉVOA\n")
                                  escreva("2-VILA ABANDONADA\n")
                                  escreva("3-CAVERNA SOMBRIA\n")
                                  escreva("4-PANTANO DOS LAMENTOS\n")
                                  escreva("5-CASTELO DOURADO\n")
                                  inteiro variavel_para_a_mudanca_de_mapa1
                                  leia(variavel_para_a_mudanca_de_mapa1)
                                  Util.aguarde(3000)
                                  escolha (variavel_para_a_mudanca_de_mapa1){
                                    
                                    caso 1:
                                    escreva("VOCE JA PASSOU POR ESTA REGIÃO", nomedocampeao,"\n")
                                    Util.aguarde(1000)
                                    escreva("VOCE CHEGOU ATÉ O NÍVEL",niveldocampeao,"\n")
                                    Util.aguarde(1000)
                                    escreva("VOCE DERROTOU",nome_chefe_xavius,"\n")
                                    Util.aguarde(1000)
                                    escreva(nomedocampeao,"NAO HÁ MAIS NADA A SER FEITO NESTA REGIÃO CAMPEÃO...\n")
                                    Util.aguarde(1000)
                                    escreva("LHE DESEJAMOS MUITA SORTE NOS PRÓXMIOS DESAFIOS",nomedocampeao,"\n")
                                    Util.aguarde(1000)
                                    pare

                                    caso 2:
                                    escreva("Bem vindo a sua próxima jornada campeão!!\n")
                                    Util.aguarde(3000)
                                    escreva("Mapa escolhido com sucesso!\n")
                                    Util.aguarde(3000)
                                    pare

                                    caso 3:
                                    escreva("IMPOSSÍVEL ESCOLHER A REGIÃO DE CAVERNAS SOMBRIAS SEM TER CONCLUÍDO A FASE ANTERIOR CAMPEÃO!\n")
                                    Util.aguarde(3000)
                                    escreva("POR FAVOR, CONCLUA A REGIÃO DE VILA ABANDONADA PARA SEGUIR COM A SUA JORNADA! \n")
                                    Util.aguarde(3000)
                                    pare
                                    

                                    caso 4:
                                    escreva("IMPOSSÍVEL ESCOLHER A REGIÃO DE PÂNTANO DOS LAMENTOS SEM TER CONCLUÍDO A FASE ANTERIOR CAMPEÃO!\n")
                                    Util.aguarde(3000)
                                    escreva("POR FAVOR, CONCLUA A REGIÃO VILA ABANDONADA PARA SEGUIR COM A SUA JORNADA! \n")
                                    Util.aguarde(3000)
                                    pare

                                    caso 5:
                                    escreva("IMPOSSÍVEL ESCOLHER A REGIÃO DE CASTELO DOURADO SEM TER CONCLUÍDO A FASE ANTERIOR CAMPEÃO!\n")
                                    Util.aguarde(3000)
                                    escreva("POR FAVOR, CONCLUA A REGIÃO VILA ABANDONADA PARA SEGUIR COM A SUA JORNADA! \n")
                                    Util.aguarde(3000)
                                    pare
                                    
                                  }
                                  limpa()
                                  escreva(nomedocampeao," Voce segue por todo aquele caminho devastado feito por magia negra de Xavius\n")
                                  Util.aguarde(250)
                                  escreva("-Voce se pergunta como aquele guarda sabia de seu nome...\n")
                                  Util.aguarde(250)
                                  escreva("-Voce olha para os céus e eles ficam cada vez mais negros , extiguindo quase que toda a beleza das terras de Eldoria\n")
                                  Util.aguarde(250)
                                  escreva("-Observando o mapa de Eldoria, é possível reconhecer a antiga vila na qual o campeão cresceu...\n")
                                  Util.aguarde(250)
                                  escreva("-Na esperanca que algo se salvou", nomedocampeao,"segue para a Vila...\n")
                                  Util.aguarde(250)
                                  escreva("-Passa-se um calafrio pela sua espinha após ver o lugar que você nasceu destruído e devastado...\n")
                                  Util.aguarde(250)
                                  escreva("-Você se pergunta se valhe a pena continuar aquela arrepiante e nostalgicalmente traumática experiência...\n")
                                  Util.aguarde(250)
                                  inteiro prosseguir_para_a_vila_sombria_escolha
                                  escreva("\n\n\n")
                                  escreva("1-CONTINUAR PARA A VILA SOMBRIA...\n")
                                  leia(prosseguir_para_a_vila_sombria_escolha)
                                  se(prosseguir_para_a_vila_sombria_escolha==1){
                                  escreva("\n\n\n")
                                  escreva("Ao andar por toda a vila,você nota casas familiares...\n")
                                   Util.aguarde(250)
                                  escreva("O cheiro pútrido toma conta do ar...")
                                   Util.aguarde(250)
                                  escreva("Os sussuros estão muito altos, mas mesmo assim você sente-se forte por querer acabar com todo aquele mal...\n")
                                   Util.aguarde(250)
                                  escreva("\n\n\n")
                                  escreva("**UMA VOZ ECOANTE MUITO FORTE ENTRA EM SUA CABECA***\n")
                                   Util.aguarde(250)
                                  escreva("GULDHAN:--HAHAHAHAHAHAHAHAHA, você se acha especial não é?",nomedocampeao,"\n")
                                   Util.aguarde(250)
                                  escreva("GULDHAN:--XAVIUS DEVIA SER UM FRACO PARA PERDER PARA UM VERME COMO VOCE!!\n")
                                   Util.aguarde(250)
                                  escreva("GULDHAN:--Vamos campeão, siga as suas emocoes, consigo sentir o ódio de ver a sua vila totalmente destruída pela minha magia...\n")
                                   Util.aguarde(250)
                                  escreva("GULDHAN:--Vou lhe dar uma chance campeão...\n")
                                  Util.aguarde(250)
                                  escreva("GULDHAN:--Renda-se ao meu poder ... sirva a mim e SEREMOS CONQUISTADORES!!\n")
                                  Util.aguarde(250)
                                  escreva("\n\n\n")
                                  inteiro resistir_a_magia_de_guldhan1
                                  cadeia nome_chefe_guldhan = "GULDHAN, O MALDITO"
                                  escreva("**RESISTA A MAGIA DE **",nome_chefe_guldhan,"\n")
                                  escreva("\n\n\n")
                                  escreva("GULDHAN:--HAHAHAHAHA, AINDA RESTA ALGUMA CONSCIÊNCIA MORAL AÍ DENTRO?\n")
                                  escreva("GULDHAN:--É OQUE VEREMOS...\n")
                                  escreva("GULDHAN:--ME DIGA",nomedocampeao, "Poque é tão importante salvar esse mundo sarnento para você?\n")
                                  escreva("**PORQUE SALVAR ELDORIA?**\n")
                                  escreva(nomedocampeao,"-1:Não sei o porque...\n ")
                                  escreva(nomedocampeao,"-2:Talvez eu não seja forte o suficiente...\n ")
                                  escreva(nomedocampeao,"-3:Talvez eu não seja páreo para ele...\n ")
                                  escreva(nomedocampeao,"-4:EU SOU O ESCOLHIDO!!\n ")
                                  leia(resistir_a_magia_de_guldhan1)
                                  inteiro atributos_reduzidos_caso_escolha123_guldhan = 13
                                  escreva("\n\n")
                                  escolha(resistir_a_magia_de_guldhan1){
                                    
                                    caso 1:
                                    escreva("GULDHAN:--Se nem voce sabe disso herói...significa que você é fraco ...\n")
                                    vidadaespecializacao = vidadaespecializacao - atributos_reduzidos_caso_escolha123_guldhan
                                    danodaespecializacao = danodaespecializacao - atributos_reduzidos_caso_escolha123_guldhan
                                    defesadaespecializacao = defesadaespecializacao - atributos_reduzidos_caso_escolha123_guldhan
                                    escreva("GULDHAN:--RECEBA MEU PRESENTE DE BOAS VINDAS A NOVA TERRA DE ELDORIA...HAHAHAHA\n")
                                    escreva("GULDHAN:--Aqui está oque merece de verdade...\n")
                                    escreva("\n\n\n")
                                    escreva(nome_chefe_guldhan," **AMALDICOOU VOCE CAMPEÃO!!\n")
                                    escreva("SEUS NOVOS ATRIBUTOS...\n")
                                    escreva(vidadaespecializacao," de vida\n")
                                    escreva(danodaespecializacao," de dano\n")
                                    escreva(defesadaespecializacao," de defesa\n")
                                    escreva("GULDHAN:--EU SOU O MALDITO...NÃO HÁ COMO FUGIR DE MIM!\n")

                                    caso 2:
                                    escreva("GULDHAN:--Hahahahaha pobre coitado...")
                                    escreva("GULDHAN:--tenho pena de você", nomedocampeao, "\n")
                                    escreva("**AMALDICOOU VOCÊ COM (MEDO IMPLACÁVEL)\n")
                                    danodaespecializacao = danodaespecializacao - atributos_reduzidos_caso_escolha123_guldhan
                                    escreva("SEU DANO FOI REDUZIDO PARA: ", danodaespecializacao, " de dano \n")

                                    caso 3:
                                    escreva("GULDHAN:--SUA ALMA SOFRERÁ!\n")
                                    vidadaespecializacao = vidadaespecializacao - atributos_reduzidos_caso_escolha123_guldhan
                                    escreva("SUA VIDA FOI REDUZIDA PARA: ", danodaespecializacao, " de vida \n")

                                    caso 4:
                                    escreva("Acha mesmo que é pareo para mim?\n")
                                    escreva("Voce não passa de um garoto\n")
                                    inteiro aumentodevida_escolha_guldan1 = 8
                                    vidadaespecializacao = Util.sorteia(aumentodevida_escolha_guldan1+5,aumentodevida_escolha_guldan1+8)
                                    escreva("SUA VIDA AUMENTOU PARA:",vidadaespecializacao, "\n")
                                    
                                  }
                                    escreva("\n\n\n\n")
                                    escreva(nome_chefe_guldhan," :É lindo ver você tentando resistir a algo que vai além de sua compreensão...\n")
                                    Util.aguarde(1000)
                                    escreva(nome_chefe_guldhan," :Existe algo pior que morrer em outra dimensão herói?Veremos como seu corpo se comprtará...\n")
                                    Util.aguarde(1000)
                                    escreva(nome_chefe_guldhan," :FAREI SUA ALMA LACRIMEJAR POR DÉCADAS...\n")
                                    Util.aguarde(4000)
                                    limpa()

                                    escreva("TELEPORTANDO-SE PARA O FIM DOS TEMPOS...\n")
                                    Util.aguarde(3000)
                                    escreva(nome_chefe_guldhan," teleporta você para uma ilha no seu mundo...\n")
                                    Util.aguarde(3000)
                                    escreva("-Uma ilha isolada com mares de sangue e esqueletos boiando nele...\n")
                                    Util.aguarde(3000)
                                    escreva("-Ao centro um orbe verde que mais parece um olho verde...\n")
                                    Util.aguarde(3000)
                                    inteiro encostar_no_orbe
                                    escreva("1-ENCOSTAR NO ORBE...")
                                    leia(encostar_no_orbe)
                                    se(encostar_no_orbe==1){
                                    escreva("\n\n\n\n")
                                    escreva(nome_chefe_guldhan," você vai aprender a respeitar o caos infinito...\n")
                                    inteiro vida_aumentada_ao_encostar_no_orbe = 30
                                    escreva("UMA ÁRUA NEGRA TOMA CONTA DE VOCÊ , E A SUA VIDA É AUMENTADA APÓS ENCOSTAR NO ORBE!!\n")
                                    vidadaespecializacao = Util.sorteia(vida_aumentada_ao_encostar_no_orbe,vida_aumentada_ao_encostar_no_orbe+5)
                                    escreva("SUA NOVA VIDA: ",vidadaespecializacao,"\n")
                                    Util.aguarde(1000)
                                    escreva(nome_chefe_guldhan,"IMPOSSÍVEL...\n")
                                    escreva("**GULDHAN FICA IMPRESSIONADO COM A SUA REACAO APÓS ENCOSTAR NO ORBE**\n")
                                    inteiro esquivarse_seta_sombria_guldhan
                                    escreva(nome_chefe_guldhan," acha mesmo que isso muda algo?MALDITO!!..\n")
                                    escreva(nome_chefe_guldhan," *ARREMESSOU UMA SETA SOMBRIA PARA O SEU LADO ESQUERDO HERÓI!!*\n")
                                    escreva("ESQUIVAR-SE PARA QUAL LADO?\n")
                                    escreva("1-LADO DIREITO\n")
                                    escreva("2-LADO ESQUERDO\n")
                                    leia(esquivarse_seta_sombria_guldhan)
                                    escolha(esquivarse_seta_sombria_guldhan){
                                      caso 1:
                                      escreva("VOCÊ SE ESQUIVOU DA HABILIDADE DE", nome_chefe_guldhan," \n")

                                      escreva(nome_chefe_guldhan,"Acha mesmo que vai sobreviver porque se esquivou de uma de minhas habilidades mortal?\n")
                                      escreva(nome_chefe_guldhan," ACHA QUE SE ESQUIVAR DE UMA HABILIDADE MINHA VAI FAZER ALGUMA DIFERENCA?\n")
                                      escreva(nome_chefe_guldhan,"VOCE SUCUMBIRÁ MESMO ASSIM!!\n")
                                      Util.aguarde(3000)
                                      pare

                                      caso 2:
                                      inteiro vida_reduzida_apos_setasombria_guldhan = 35
                                      vidadaespecializacao = vidadaespecializacao - vida_reduzida_apos_setasombria_guldhan

                                      escreva(nome_chefe_guldhan," --COMTEMPLE O PODER DO OBLÍVIO!\n")
                                      Util.aguarde(3000)
                                      escreva(nome_chefe_guldhan," --HAHAHHA, TÃO FRACO...\n")
                                      escreva("SUA VIDA AGORA É",vidadaespecializacao)
                                      Util.aguarde(3000)
                                      pare
                                    }

                                      limpa()
                                      escreva("Muito bem capeão, veremos se ainda consegue resistir a minha magia persuasiva\n")
                                      escreva(nome_chefe_guldhan, "*USA A TEMÍVEL MAGIA DA PERSUASÃO!!**\n")
                                      escreva("**VOCE PRECISA LEMBRAR O SEU NOME CAMPEAO!!**\n")
                                      escreva(nome_chefe_guldhan," sua arma será sua ruína...\n")
                                      escreva("**SUA ARMA REVIRA-SE CONTRA VOCê MESMO!!**\n")
                                      escreva("**RELEMBRE SEU NOME PARA QUE VOCE NAO SE AUTO-SABOTE HERÓI!!\n")
                                      inteiro magia_persuasiva_de_guldhan_escolha
                                      escreva("**QUAL O SEU NOME??**\n")
                                      leia(magia_persuasiva_de_guldhan_escolha)
                                      se(magia_persuasiva_de_guldhan_escolha==nomedocampeao){
                                        escreva("**VOCÊ RETOMOU CONTROLE DO SEU CORPO**\n")
                                        escreva(nome_chefe_guldhan," VEJO QUE VOCE NÃO É TÃO FRACO ASSIM CAMPEÃO...")
                                        Util.aguarde(2000)
                                        escreva(nome_chefe_guldhan," ACHO QUE É DIGNO O SUFICIENTE PARA ME ENFRENTAR...\n")
                                        Util.aguarde(2000)
                                        inteiro vida_chefe_guldhan = 100
                                        inteiro dano_de_ataque_guldhan = 8
                                        inteiro xp_ganho_guldhan = 100
                                        logico defenderse_de_guldhan = falso
                                        limpa()
                                        escreva("--------------------------------------------------------------\n")
                                        escreva("VOCE ENCONTROU GULDHAN, O SENHOR DA MAGIA NEGRA!!\n")
                                        escreva("--------------------------------------------------------------\n")
                                enquanto(vidadaespecializacao > 0 e vida_chefe_guldhan > 0) {
                                escreva("\nSUA VIDA:", vidadaespecializacao, "\nVIDA DO ", nome_chefe_guldhan, ":", vida_chefe_guldhan, "\n")
                                escreva("1-ATACAR\n")
                                escreva("2-DEFENDER-SE\n")
                                inteiro acao_combate_chefe_guldhan
                                leia(acao_combate_chefe_guldhan)
                                defenderse_de_guldhan = falso

                                se(acao_combate_chefe_guldhan==1){
                                  danodaespecializacao=Util.sorteia(danodaespecializacao-2,danodaespecializacao + 2)
                                  agilidadedaespecializacao = Util.sorteia(1,100)
                                  se(agilidadedaespecializacao<=15){
                                    danodaespecializacao = danodaespecializacao * 2
                                    escreva("VOCÊ CAUSOU UM ATAQUE CRÍTICO CAMPEÃO!!\n")
                                  }
                                vida_chefe_guldhan = vida_chefe_guldhan - danodaespecializacao
                                escreva("\nVocê causou",danodaespecializacao,"de dano em",nome_chefe_guldhan,"\n")
                                }
                                senao se(acao_combate_chefe_guldhan==2){
                                  defenderse_de_guldhan = verdadeiro
                                  inteiro dano_reduzido_do_chefe_guldhan = (Util.sorteia(dano_de_ataque_guldhan-2,dano_de_ataque_guldhan)) / 2
                                  se(dano_reduzido_do_chefe_guldhan < 0){
                                    dano_reduzido_do_chefe_guldhan = 0
                                  }
                                  vidadaespecializacao = vidadaespecializacao - dano_reduzido_do_chefe_guldhan
                                  escreva("Voce se defendeu de ",nome_chefe_guldhan,"o inimigo causou apenas",dano_reduzido_do_chefe_guldhan,"\n")
                                  }senao{escreva(nome_chefe_guldhan,"Aproveitou a sua brecha",nomedocampeao,"  lhe atacou!!\n")}
                                  se(vida_chefe_guldhan > 0 e defenderse_de_guldhan==falso){
                                    dano_de_ataque_guldhan = Util.sorteia(dano_de_ataque_guldhan-5,dano_de_ataque_guldhan+5)
                                    se(dano_de_ataque_guldhan<0){
                                      dano_de_ataque_guldhan = 0
                                    }inteiro chance_de_esquiva_guldhan=Util.sorteia(1,100)
                                    se(chance_de_esquiva_guldhan<=15){
                                      escreva("\nVocê se esquivou de",nome_chefe_guldhan,"\n")
                                    }
                                    senao{
                                      vidadaespecializacao = vidadaespecializacao - dano_de_ataque_guldhan
                                      escreva("\nVoce recebeu",dano_de_ataque_guldhan,"de",nome_chefe_guldhan,"\n")
                                    }
                                  }
                                 

                                  

                                }
                                se(vidadaespecializacao <=0){
                                  escreva("Voce foi derrotado por",nome_chefe_guldhan,"\n")
                                  escreva("Que os deuses guardem sua alma",nomedocampeao,"\n")
                                  }
                                senao se(vida_chefe_guldhan<=0){
                                  escreva("Parabéns",nomedocampeao,"voce derrotou",nome_chefe_guldhan,"\n")
                                  xp = xp + xp_ganho_guldhan
                                  escreva(nomedocampeao," você derrotou ",nome_chefe_guldhan,"parabéns",nomedocampeao,"\n")
                                  nivelupado(xp, xpparasubirdenivel, niveldocampeao)
                                  escreva("Muito obrigado campeão, você libertou a floresta da névoa de",nome_chefe_guldhan,"\n")
                                  escreva("\n\n\n\n")
                                  escreva("Voce resolve descansar após uma árdua batalha e se regenera em uma fogueira que havia lá por perto...\n")
                                  inteiro sorteio_do_descanso_apos_concluir_vilasombria
                                  sorteio_do_descanso_apos_concluir_vilasombria = Util.sorteia(10,50)
                                  escreva("\nApós seu descanso você aumentou",sorteio_do_descanso_apos_concluir_vilasombria,"de vida máxima\n")
                                  vidadaespecializacao = vidadaespecializacao + sorteio_do_descanso_apos_concluir_vilasombria
                                  escreva("\nApós um bom descanso",nomedocampeao,"acorda e revigora suas energias antes de ir para a sua próxima aventura...\n")
                                  escreva("SUA VIDA:",vidadaespecializacao,"\n")
                                  Util.aguarde(4000)
                                  escreva("\n\n\n\n")

                                  inteiro terceira_regiao_eldoria
                                  escreva("Parabéns campeão escolha a região na qual você deseja ir...\n")
                                  escreva("REINO DE ELDORIA\n")
                                  escreva("1-FLORESTA DA NÉVOA\n")
                                  escreva("2-VILA ABANDONADA\n")
                                  escreva("3-CAVERNA SOMBRIA\n")
                                  escreva("4-PANTANO DOS LAMENTOS\n")
                                  escreva("5-CASTELO DOURADO\n")
                                  leia(terceira_regiao_eldoria)
                                  escolha(terceira_regiao_eldoria){
                                    caso 1:
                                    escreva("VOCE JA PASSOU POR ESTA REGIÃO", nomedocampeao,"\n")
                                    Util.aguarde(1000)
                                    escreva("VOCE CHEGOU ATÉ O NÍVEL",niveldocampeao,"\n")
                                    Util.aguarde(1000)
                                    escreva("VOCE DERROTOU",nome_chefe_xavius,"\n")
                                    Util.aguarde(1000)
                                    escreva(nomedocampeao,"NAO HÁ MAIS NADA A SER FEITO NESTA REGIÃO CAMPEÃO...\n")
                                    Util.aguarde(1000)
                                    escreva("LHE DESEJAMOS MUITA SORTE NOS PRÓXMIOS DESAFIOS",nomedocampeao,"\n")
                                    Util.aguarde(1000)
                                    pare

                                    caso 2:
                                    escreva("VOCE JA PASSOU POR ESTA REGIÃO", nomedocampeao,"\n")
                                    Util.aguarde(1000)
                                    escreva("VOCE CHEGOU ATÉ O NÍVEL",niveldocampeao,"\n")
                                    Util.aguarde(1000)
                                    escreva("VOCE DERROTOU",nome_chefe_guldhan,"\n")
                                    Util.aguarde(1000)
                                    escreva(nomedocampeao,"NAO HÁ MAIS NADA A SER FEITO NESTA REGIÃO CAMPEÃO...\n")
                                    Util.aguarde(1000)
                                    escreva("LHE DESEJAMOS MUITA SORTE NOS PRÓXIMIOS DESAFIOS",nomedocampeao,"\n")
                                    Util.aguarde(1000)
                                    pare

                                    caso 3:
                                    escreva("Bem vindo a sua próxima jornada campeão!!\n")
                                    Util.aguarde(3000)
                                    escreva("Mapa escolhido com sucesso!\n")
                                    Util.aguarde(3000)
                                    pare
                                    
                                    caso 4:
                                    escreva("IMPOSSÍVEL ESCOLHER A REGIÃO DE PÂNTANO DOS LAMENTOS SEM TER CONCLUÍDO A FASE ANTERIOR CAMPEÃO!\n")
                                    Util.aguarde(3000)
                                    escreva("POR FAVOR, CONCLUA A REGIÃO CAVERNAS SOMBRIAS PARA SEGUIR COM A SUA JORNADA! \n")
                                    Util.aguarde(3000)
                                    pare

                                    caso 5:
                                    escreva("IMPOSSÍVEL ESCOLHER A REGIÃO DE CASTELO DOURADO SEM TER CONCLUÍDO A FASE ANTERIOR CAMPEÃO!\n")
                                    Util.aguarde(3000)
                                    escreva("POR FAVOR, CONCLUA A REGIÃO DE CAVERNAS SOMBRIAS PARA SEGUIR COM A SUA JORNADA! \n")
                                    Util.aguarde(3000)
                                    pare
                                  }
                                    limpa()
                                     escreva("- APÓS UMA ÁRDUA BATALHA CONTRA O TEMÍVEL GULDHAN VOCÊ ENCONTRA UM PORTAL...\n")
                                      inteiro portal_mundo_normal
                                      escreva("1-ENTRAR NO PORTAL")
                                      leia(portal_mundo_normal)
                                      se(portal_mundo_normal==1){
                                        escreva("Você retorna ao mundo de eldoria...\n")
                                        escreva("- Você olha para trás e resolve continuar , porém sente que comeca a perder as forcas...\n")
                                        escreva("-Se sente tonto...porém alguns quilometros antes da sua próxima aventura vocÊ encontra um celeiro...\n")
                                        escreva("-Ao pensar bem você resolve entrar no estábulo para tentar arranjar algo para se manter de pé...\n")
                                        escreva("\n**ONDE PROCURAR MANTIMENTOS**\n")
                                        escreva("1-LOCAL ONDE FICAM OS CAVALOS(ADENTRAR A PARTE EM QUE OS CAVALOS DORMEM)\n")
                                        escreva("2-PARTE DE CIMA DO CELEIRO\n")
                                        escreva("3-ESTOQUE DE FENO\n")
                                        escreva("4-SAIR DO CELEIRO\n")
                                        escolha(portal_mundo_normal){
                                          caso 1:
                                          escreva("Voce anda lentamente onde ficam os cavalos...\n")
                                          escreva("Porém não encontra nada , apenas o chão úmido e solido de concreto que ali estavam os animais\n")
                                          escreva("Voce pensa seriamente em executar um deles para alimentar-se\n")
                                          escreva("Ao executar um golpe que executaria um dos cavalos você comeca a se sentir mal e desmaia...\n")
                                          pare

                                          caso 2:
                                          escreva("Voce sobe na parte de cima do celeiro\n")
                                          escreva("A única coisa que você encontra é alguns remédios para os cavalos\n")
                                          escreva("Voce desce a escada e acaba pisando em um degrau infalso\n")
                                          escreva("Após isso , você escorrega e cai sobre aquele chão úmido...\n")
                                          encreva("Enquanto seus olhos se fechavam você avista um semblante de um agricultor vindo na sua direcao vagarosamente...\n")
                                          pare

                                          caso 3:
                                          escreva("Ao subir no estoque de feno , só se depara com muito feno e algumas pilhas de pasto...\n")
                                          escreva("Mesmo com uma fome e cansaco implacáveis , voce resolve olhar pela janela do celeiro\n")
                                          escreva("Uma grande tempestade está a caminho...\n ")
                                          escreva("Voce se deita sobre os fenos...e a única coisa que lhe motiva é salvar Eldoria...\n")
                                          escreva("Pouco antes de dormir voce nota um semblante de um homem se aproximar pouco a pouco..\n")
                                          escreva("Você desmaia pouco depois de lhe avistar...")
                                          pare

                                          caso 4:
                                          escreva("Voce tenta ir para fora do celeiro porém uma árdua jornada o aguarda...\n")
                                          escreva("Uma forte tempestade comeca...\n")
                                          escreva("Voce nota um movimento estranho na mata...\n")
                                          escreva("Ao tentar correr...se depara com uma pedra na qual voce tropeca...\n")
                                          escreva("Voce torce o tornozelo e bate a cabeca...\n")
                                          escreva("Um homem grande se aproxima e após notá-lo voce desmaia...")
                                          pare
                                        }
                                          
                                          vidadaespecializacao = Util.sorteia(vidadaespecializacao+10,vidadaespecializacao+25)
                                          cadeia nome_camponesamigo = "Joofrey"

                                          escreva("*Após um bom descanso sua vida se restaurou!*\n")
                                          escreva("SUA VIDA ATUAL",vidadaespecializacao)
                                          escreva("-Após algum tempo , você acorda em uma casa de madeira...\n")
                                          escreva("-Voce se pergunta quem é ele...\n")
                                          escreva("-Eu vi você ai jovem...\n")
                                          escreva("-pode se levantar se quiser , estou preparando algo para comer...venha!\n")
                                          escreva("**Levantando-se da cama rapidamente**\n")
                                          escreva("voce saca ",armadaespecializacao)
                                          escreva("hahahahaha , nao precisa ter medo\n")
                                          escreva("não quero machucá-lo menino...vamos, deve estar faminto...\n")
                                          escreva("**VOCE PUXA A CADEIRA RAPIDAMENTE...**")
                                          escreva("**COMENDO RAPIDO,QUASE QUE SE ENGASGANDO COM A COMIDA**")
                                          escreva("Me chamo Joofrey, muito prazer garoto\n")
                                          escreva(nomedocampeao,"Agradeco a refeica...",nome_camponesamigo,"Muito obrigado...\n")
                                          escreva("hahahah não há de que , nada mais justo que eu lhe ajudar após salvar o lugar que eu nasci daquele monstro --\n")//variavel nome guldhan
                                          escreva(nomedocampeao," :ele deve ter matado muitos inocentes não é?\n")
                                          escreva(nome_camponesamigo," :Você não faz idéia...")
                                          escreva(nome_camponesamigo," :Antes de prosseguir campeão...pegue isto...")
                                          inteiro safira_azul = 20
                                          escreva(nome_camponesamigo," :Ganhei isso de alguns amigos que moravam na vila devastada por Guldhan...\n")
                                          escreva(nome_camponesamigo," :Ouvi conversas de monges que algum escolhido estaria a caminho de salvar nossa terra...\n")
                                          escreva(nome_camponesamigo," :Acho que o encontrei...pegue campeão\n")
                                          escreva(nomedocampeao," :obrigado... usarei-a com sabedoria!\n")
                                          escreva("\n**ABRINDO A PORTA LENTAMENTE...**\n")
                                          escreva(nome_camponesamigo," :Espere campeão, aqui , pegue este mapa para não se perder nas cavernas sombrias!\n")
                                          escreva(nomedocampeao," :como vou saber por onde devo ir naquela caverna??")
                                          escreva(nome_camponesamigo," :Ah claro quase esqueci, hahahaha eu encriptei este mapa para que os inimigos não soubessem como passar...\n")
                                          escreva(nome_camponesamigo," :ao entrar na caverna , terá pedras nos caminhos e dessa forma você deve se basear nos seguintes túneis..\n")
                                          escreva(nome_camponesamigo," :As cores das pedras são, Azul , Vermelha , Amarela e verde, e os caminhos são:")
                                          escreva(nome_camponesamigo," :Primeiro caminho:Azul,Segundo caminho:Verde, Terceiro caminho:Verde e Quarto caminho:Amarela \n")
                                          Util.aguarde(7000)
                                          escreva(nomedocampeao," :Agradeco",nome_camponesamigo,"que os Deuses lhe iluminem...")
                                          escreva(nome_camponesamigo," :Fique tranquilho,para chegar até as cavernas sombrias é só continuar a estrada até duas ameixeiras grandes\n")
                                          escreva(nomedocampeao," :Certo, e obrigado pelo amuleto...")
                                          escreva("**VOCE SAI DA CASA**\n")
                                          escreva("\n\n\n")
                                          escreva("-Voce segue pelo caminho na qual foi dito por Joofrey...\n")
                                          escreva("-Ao avistar as ameixeiras nota que está no lugar certo\n")
                                          escreva("-Ao ver a entrada , você se depara com a escuridão da caverna\n")
                                          escreva("-Você acende uma tocha com uma pederneira que estava no seu bolso...\n")
                                          escreva("1--ENTRAR NA CAVERNA SOMBRIA.\n")
                                          inteiro entrar_caverna_sombria
                                          leia(entrar_caverna_sombria)
                                          se(entrar_caverna_sombria==1){
                                            Util.aguarde(2000)
                                            limpa()
                                            escreva("BEM VINDO ÀS CAVERNAS SOMBRIAS CAMPEÃO!!\n")
                                          }
                                      }senao{escreva("opcao incorreta campeão...")}
                                  }

                                      }
                                      
                                        senao{escreva(nome_chefe_guldhan,"--HAHAHAHA , MUITO BEM VINDO MEU MAIS NOVO SERVO...\n")
                                        escreva("**GULDHAN O TRANSFORMA EM SEU SERVICAL PARA TODO O SEMPRE !!**\n")
                                        escreva("FIM DE JOGO...\n")}
                                      


                                    }senao{escreva("Você caiu no limbo do mundo de guldhan,um final terrível o aguarda...")}

                                  }senao{escreva("Tudo bem, talvez você nao seja tudo aquilo mesmo...")}
                                }

                                } senao {
                                escreva("Nao seja um covarde... ", nomedocampeao, "\n")
                                }

                            
                            
                            }senao{escreva("jogador...é necessário colaborar para que o jogo desenvolva conforme o solicitado,por favor coopere!\n")}


                            }
                        }
                        senao {
                            escreva("Oh não herói, você foi puxado por um espírito malígno para dentro de uma cabana, infelizmente não há como lutar contra ele...\n")
                            escreva("FIM DE JOGO...\n")
                        }
                    }
                    senao {
                        escreva("Sem problema ", nomedocampeao, "\n")
                    }
                }
                senao {
                    escreva("Tudo bem campeão pode começar quando se sentir pronto!")
                }
                pare

            caso 2:
                escreva("Créditos:\n")
                escreva("Muito obrigado por jogar, desenvolvido por mim Samuel Aloisio\n")
                escreva(">>>>>SIGA-ME NAS REDES SOCIAIS <<<<<\n")
                escreva("INSTAGRAM📸:@instant_desiderio\n")
                escreva("DISCORD🎮:tom riddle1062\n")
                escreva("Vini é foda, ((me da 100 prfv))\n")
                escreva("Obrigado por jogar!!\n")
                pare

            caso 3:
                escreva("Obrigado por jogar o meu jogo, tmj gurizao!\n")
                escreva("💗\n")
                pare

            caso contrario:
                escreva("Opção inválida, por favor tente novamente!")
        }
    }
}