programa {
  funcao inicio() {
    inteiro opcao
    cadeia nomedocampeao

    escreva("--------------------------------------\n")
    escreva("BEM VINDO AO GAME REVOLUTION SWORDS!\n ")
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

    inteiro danodaespecializacao,vidadaespecializacao,agilizadedaespecializacao

    escolha(especializacaodeclasse){

    caso 1:
    danodaespecializacao = 13
    vidadaespecializacao = 60
    agilizadedaespecializacao = 37
    escreva("Você escolheu a classe guerreiro, seja bem vindo ao reino de Eldoria")
    pare 
    }

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
