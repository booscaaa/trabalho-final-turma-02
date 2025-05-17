programa {
  inclua biblioteca Util
  funcao inicio() {
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