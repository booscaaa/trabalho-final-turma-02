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
    escreva("Por favor campeão , coloque aqui o nome do seu campeão...\n") 
    leia(nomedocampeao)
    escreva("Seja muito bem vindo ao reino de Eldoria " ,nomedocampeao, "\n") 
    escreva("Sua aventura no reino de Eldoria comecará em breve os justos terão demasiadas glórias\n")
    escreva("Desejamos um ótima jornada, que os deuses te iluminem!! ",nomedocampeao,"\n")
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
