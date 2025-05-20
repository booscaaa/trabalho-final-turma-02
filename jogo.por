programa {
  inclua biblioteca Util
  funcao inicio() {
    inteiro xp = 0
    inteiro niveldocampeao = 1
    inteiro xpparasubirdenivel = 100
    inteiro opcao
    inteiro opcaodecontinuarcomojogo
    cadeia nomedocampeao
    cadeia armadaespecializacao

    escreva("--------------------------------------\n")
    escreva("!!BEM VINDO AO GAME A JORNADA DO HERÓI!!\n ")
    escreva("--------------------------------------\n")

    escreva("1 - Novo jogo, Uma nova aventura se iniciará!\n")

    escreva("2 - Créditos , apoie nossos criadores!>_>\n")

    escreva("3 - Sair, sempre estaremos precisando de boas almas!\n")

    leia(opcao)

    escolha (opcao) {

    caso 1:
    escreva("=================================================================\n")
    escreva("Por favor campeão , coloque aqui o nome do seu campeão...\n") 
    leia(nomedocampeao)
    escreva("Seja muito bem vindo ao reino de Eldoria " ,nomedocampeao, "\n")
    escreva("==================================================================\n")

    escreva("Por favor campeão, escolha a especializacao na qual você pretende jogar:\n")

    escreva("1=GUERREIRO-Classe lutadora com atributos focados principalmente em resistencia e vida ,--POUCO DANO \n")

    escreva("2=ARCANISTA-Uma classe poderosa com dano base alto e canalizacao da magia em tempo mediano,--POUCA VIDA \n")

    escreva("3=ARQUEIRO-Classe rápida,de alta agilidade possuindo diversos ataques ágeis com as flechas poderosas,--VIDA BAIXA E DANO MEDIANO \n ")

    escreva("4=CAVALEIRO DAS TREVAS-Ataques potentes porém deixa a magia negra consumir parte de sua vida dessa forma reduzindo os atributos,--POUCA VIDA E VELOCIDADE REDUZIDA \n")


    inteiro especializacaodeclasse

    leia (especializacaodeclasse)

    inteiro danodaespecializacao,vidadaespecializacao,agilidadedaespecializacao,defesadaespecializacao

    escolha(especializacaodeclasse){

    caso 1:
    danodaespecializacao = 16
    vidadaespecializacao = 60
    agilidadedaespecializacao = 46
    defesadaespecializacao = 58
    armadaespecializacao = "Machado do ancião de Eldoria"
    escreva("--------------------------------------------------------------------------------------\n")
    escreva("Você escolheu a classe guerreiro,nossos inimigos sentirão o poder de nossa lâmina!\n")
    escreva("Vida total:",vidadaespecializacao,"\n")
    escreva("Dano total:",danodaespecializacao,"\n")
    escreva("Agilidade da especializacao:", agilidadedaespecializacao,"\n")
    escreva("Defesa da especializacao:",defesadaespecializacao,"\n")
    escreva("Arma inicial:",armadaespecializacao,"\n")
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
    escreva("Vida total:",vidadaespecializacao,"\n")
    escreva("Dano total:",danodaespecializacao,"\n")
    escreva("Agilidade da especializacao:", agilidadedaespecializacao,"\n")
    escreva("Defesa da especializacao:",defesadaespecializacao,"\n")
    escreva("Arma inicial:",armadaespecializacao,"\n")
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
    escreva("Vida total:",vidadaespecializacao,"\n")
    escreva("Dano total:",danodaespecializacao,"\n")
    escreva("Agilidade da especializacao:", agilidadedaespecializacao,"\n")
    escreva("Defesa da especializacao:",defesadaespecializacao,"\n")
    escreva("Arma inicial:",armadaespecializacao,"\n")
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
    escreva("Vida total:",vidadaespecializacao,"\n")
    escreva("Dano total:",danodaespecializacao,"\n")
    escreva("Agilidade da especializacao:", agilidadedaespecializacao,"\n")
    escreva("Defesa da especializacao:",defesadaespecializacao,"\n")
    escreva("Arma inicial:",armadaespecializacao,"\n")
    escreva("--------------------------------------------------------------------------------------\n")
    pare
    }
    escreva("Você deseja prosseguir com o jogo?",nomedocampeao,"\n")
    escreva("Por favor , digite -1- para continuar a sua aventura em Eldoria e -2- para pararmos por aqui!")
    leia(opcaodecontinuarcomojogo)
    
    se(opcaodecontinuarcomojogo==1){
      
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
    
    escreva("\n\n\n\n")

    escreva("-Era uma vez , uma terra próspera e linda chamada Eldoria \n")
    Util.aguarde(250)
    escreva("-Podia-se ver em seus céus a beleza de toda aquela terra abencoada pelos deuses...\n")
    Util.aguarde(250)
    escreva("-No topo da colina podia-se ver um castelo brilhante , popularmente chamado de castelo dourado\n")
    Util.aguarde(250)
    escreva("-Lá dentro possuia uma pedra dourada chamada de pedra da luz, a mesma pedra que mantinha a paz em toda Eldoria.\n")
    Util.aguarde(250)
    escreva("\n\n\n\n")
    escreva("-Um belo dia , os céus se escureceram e uma névoa acompanhada de um meteoro com uma mágia negra cobriram o dia ensolarado de Eldoria\n")
    Util.aguarde(250)
    escreva("-No momento que chegou ao chão , a linda terra chamada de Eldoria mergulha-rá em um caos negro jamais visto\n")
    Util.aguarde(250)
    escreva("-A terra que antes fora verde está negra , e a terra fértil já não era mais a mesma\n")
    Util.aguarde(250)
    escreva("-O monstro tinha uma aparencia sombria , intitulado por muitas religiões como o devastador,possuia tentáculos e uma aparência que causa medo até no mais bravo dos guerreiros!\n")
    Util.aguarde(250)
    escreva("-No momento que esse montro chegou ao castelo onde mantinha-se a pedra sagrada protegida foi tentado atacá-lo mas os guardar não tiveram êxito...\n")
    Util.aguarde(250)
    escreva("-O devastador tomou conta do castelo , transformando-o em um covil amedrontador e espalhou seus lacaios para todas as terras de Eldoria...\n")
    Util.aguarde(250)
    escreva("-A floresta da névoa que já foi um lindo lugar como mostra no desenho acima, agora era fria e comandada pelo temível Xavius, demonio com uma sede de sangue indomável...\n")
    Util.aguarde(250)
    escreva("-A vila abandonada onde possuia pessoas felizes , apenas restava almas ecoantes . Comandada por um de seus melhores lacaios, GulDhan, bruxo sombrio e um dos generais do devastador\n")
    Util.aguarde(250)
    escreva("-A caverna sombria agora era habitada por Ragnaros o senhor do fogo, emergiu a partir dos grandes terremotos e da energia má do devastador...\n")
    Util.aguarde(250)
    escreva("-O pântano dos lamentos , uma região que guardava diversas armadilhas e um terreno sombrio , era comandado pelo Carniceiro, braco direito do devastador...")
    Util.aguarde(250)
    escreva("-E o castelo...o mesmo que uma vez era brilhante e cheio de vida agora foi consumido por trevas...\n")
    Util.aguarde(250)
    escreva("-Agora nosso herói",nomedocampeao, "corre contra o tempo para que possamos voltar ao controle de nossa amada Eldoria.\n ")
    Util.aguarde(250)
    escreva("-Salve nossa Eldoria campeão, contamos com você...")
    Util.aguarde(250)
    escreva("\n\n\n\n\n")

    inteiro opcaodecontinuarcomojogo2
    escreva("Deseja continuar para a floresta da névoa campeão?\n")
    escreva("1-SIM\n")
    escreva("2-NÃO\n")
    leia(opcaodecontinuarcomojogo2)

    se(opcaodecontinuarcomojogo2==1){

    escreva("\n\n\n\n\n")
    cadeia escolheroproximocaminho
    escreva("Ao chegar na floresta da névoa você se depara com dois caminhos , um deles é um caminho que leva a um rio turvo , com algumas algas por cima dele...\n")
    escreva("O outro caminho é um caminho com algumas cabanas abandonadas na qual você pode ouvir sussuros ounvindo de lá...\n")
    escreva("-Agora é com você",nomedocampeao,"por onde deseja seguir?\n")
    escreva("1-CAMINHO DO RIO TURVO\n")
    escreva("2-CAMINHO DAS CABANAS ABANDONADAS(NAO RECOMENDADO)\n")
    leia(escolheroproximocaminho)

    se(escolheroproximocaminho==1){
    escreva("Você adentra o caminho do rio mas ali por perto repara na presenca de algo se mexendo em meio aos arbustos...\n")
    Util.aguarde(500)
    escreva("Você encontrou um GOBLIN DA NÉVOA!!\n")
    Util.aguarde(500)
    inteiro vidaDoGoblin = 25
    inteiro danoDoGoblin = 6
    cadeia acaodocombate
    logico defendeuseNesteTurno
    

    enquanto(vidadaespecializacao > 0 e vidaDoGoblin > 0){
      escreva("\nSUA VIDA:",vidadaespecializacao,"\nVIDA DO INIMIGO:",vidaDoGoblin,"\n")
      escreva("1-ATACAR\n")
      escreva("2-DEFENDER-SE\n")
      leia(acaodocombate)
      defendeuseNesteTurno = falso
      se(acaodocombate==1){
        vidaDoGoblin=vidaDoGoblin - danodaespecializacao
        escreva("Muito bem herói,você causou:",danodaespecializacao,"de dano no inimigo")
      }senao se(acaodocombate==2){
        defendeuseNesteTurno = verdadeiro 
        inteiro danoreduzidoNestecombate = danoDoGoblin / 2
        vidadaespecializacao = vidadaespecializacao - danoreduzidoNestecombate
        escreva("Voce acabou se defendendo campeao,e o inimigo causou apenas",danoreduzidoNestecombate,"de dano\n")
        }senao{"O inimigo aproveitou a sua indesisão!!"}
    
      se(vidaDoGoblin>0 e defendeuseNesteTurno==falso ){
        vidadaespecializacao = vidadaespecializacao - danoDoGoblin
        escreva("O goblin atacou você causando",danoDoGoblin,"de dano\n")
      }
    }
      se(vidadaespecializacao<=0){
        escreva("Você foi derrotado pelo inimigo",nomedocampeao,"\n")
        escreva("FIM DE JOGO CAMPEAO!\n")
        }senao se(vidaDoGoblin<=0){
          escreva("Parabéns",nomedocampeao,"Voce derrotou o inimigo!!\n")

        }
      
    

    }senao{escreva("Oh não herói , você foi puxado por um espírito malígno para dentro de uma cabana , infelizmente não há como lutar contrae ele...\n")
    escreva("FIM DE JOGO...\n")}



    }senao{escreva("Sem problema",nomedocampeao, "\n")}
    
    
    

    
    }senao{escreva("Tudo bem campeão pode comecar quando se sentir pronto!")}

    pare


    caso 2:
    escreva("Créditos:\n")
    escreva("Muito obrigado por jogar , desenvolvido por mim Samuel Aloisio\n")
    escreva(">>>>>SIGA-ME NAS REDES SOCIAIS <<<<<\n")
    escreva("INSTAGRAM📸:@instant_desiderio\n")
    escreva("DISCORD🎮:tom riddle1062\n")
    escreva("Vini é foda , ((me da 100 prfv))\n")
    escreva("Obrigado por jogar!!\n")
    pare


    caso 3:
    escreva("Obrigado por jogar o meu jogo , tmj gurizao!\n")
    escreva("💗\n")
    pare


    caso contrario:
    escreva("Opcao inválida, por favor tente novamente!")
    
    }

    

  }
}