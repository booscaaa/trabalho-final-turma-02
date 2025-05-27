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
                                  escreva("\nApós um bom descansoo",nomedocampeao,"acorda e revigora suas energias antes de ir para a sua próxima aventura...\n")
                                  escreva("SUA VIDA:",vidadaespecializacao,"\n")
                                  
                                  escreva("Parabéns campeão escolha a região na qual você deseja ir...")
                                }

                                } senao {
                                escreva("Nao seja um covarde...", nomedocampeao, "\n")
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