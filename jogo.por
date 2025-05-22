programa {
    
    inclua biblioteca Util

    inteiro xp, niveldocampeao, xpparasubirdenivel 
    inteiro danodaespecializacao, vidadaespecializacao, agilidadedaespecializacao, defesadaespecializacao

    funcao nivelupado(inteiro xp, inteiro xpparasubirdenivel, inteiro niveldocampeao) {
        enquanto (xp >= xpparasubirdenivel) {
            xp = xp - xpparasubirdenivel
            niveldocampeao = niveldocampeao + 1
            escreva("\n🎉 Parabéns! Você subiu para o nível ", niveldocampeao, "!\n")

            // Escolha de atributo
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

    funcao inicio() {
        inteiro opcao
        inteiro opcaodecontinuarcomojogo
        cadeia nomedocampeao
        cadeia armadaespecializacao

        xp = 0
        niveldocampeao = 1
        xpparasubirdenivel = 100

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
                              escrevaa("Você seguiu sua rota sem nenhuma alteracao\n")
                              escreva("Sua vida total é",vidadaespecializacao,"\n")
                              pare
                            }
                              escreva("Sua vida",vidadaespecializacao,"\n")
                              escreva("Voce continua sua jornada pela floresta...\n")

                            
                            
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