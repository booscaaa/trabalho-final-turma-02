programa {
  funcao inicio() {
    inteiro opcao
    cadeia nomeDoPersonagem
    cadeia classe
    escreva("Bem vindo a Eldoria Saga\n")
    escreva("--1: Novo jogo--\n")
    escreva("--2: Cr�ditos--\n")
    escreva("--3: Sair--\n")
    leia(opcao)

    escolha(opcao){
      caso 1:
        inteiro opcaoDeClase
        escreva("Digite o nome do seu personagem: \n")
        leia(nomeDoPersonagem)
        escreva("Escolha sua classe\n")
        escreva("  1 - GUERREIRO, Foco em vida e defesa. Ideal para resist�ncia prolongada.\n")
        escreva("  2 - MAGO, Ataque poderoso, por�m fr�gil. Especialista em dano r�pido.\n")
        escreva("  3 - ARQUEIRO, Equilibrado entre ataque e mobilidade. Vers�til.\n")
        leia(opcaoDeClase)
        se(opcaoDeClase == 1){
          classe = "GUERREIRO"
        }senao se(opcaoDeClase == 2){
          classe = "MAGO"
        }senao se(opcaoDeClase == 3){
          classe = "ARQUEIRO"
        }
      pare
    }
  }
}
