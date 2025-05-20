programa {
  inclua biblioteca Util --> u
  funcao inicio() {

  inteiro opcaoEscolhidaMenu = 0

  escreva("\n --------------------\n")
  escreva("\n  A jornada do Herói \n")
  escreva("\n --------------------\n")
  u.aguarde(4000)
  limpa()
  escreva("\n Há muito tempo, no Reino de Eldoria, a paz era mantida pela mística Pedra da Luz, protegida pelos Anciãos do Castelo Dourado.\n")
  u.aguarde(5000)
  escreva("\nUm dia, uma força sombria conhecida como O Devastador invadiu o reino, roubando a relíquia sagrada e mergulhando as terras em trevas e caos.\n")
  escreva("Vilas foram saqueadas, florestas corrompidas, e criaturas sombrias começaram a vagar pelas regiões.\n")
  u.aguarde(5000)
  escreva("\nDiante da crise, uma antiga profecia se cumpriu: um herói escolhido surgirá das sombras para restaurar a luz. Você é esse herói.\n")
  u.aguarde(5000)
  escreva("\nSua missão é atravessar cinco regiões dominadas pelo mal, enfrentando inimigos, evoluindo suas habilidades e se preparando para confrontar O Devastador no Castelo Dourado.\n")
  escreva(" A jornada será repleta de perigos, escolhas e batalhas. Seu destino e o de Eldoria estão entrelaçados.")
  u.aguarde(5000)
  limpa()

  escreva("\n--Bem Vindo ao RPG A jornada do Herói--\n")
  u.aguarde(3000)


  enquanto(opcaoEscolhidaMenu != 3){
    limpa()
    escreva("\n-- MENU --\n")
    escreva("\nOpção 1 - Iniciar Jornada\n")
    escreva("\nOpção 2 - Créditos\n")
    escreva("\nOpção 3 - Sair do Jogo\n")
    leia(opcaoEscolhidaMenu)
    }
    se(opcaoEscolhidaMenu == 1){
      iniciougame()
      u.aguarde(2000)
    } senao se(opcaoEscolhidaMenu == 2){
      creditos()
      u.aguarde(6000)
    }senao se(opcaoEscolhidaMenu == 3){
      escreva("Até logo!")
      u.aguarde(8000)
      limpa()
    }senao{
      escreva("\nOpção Invalida!\n")
      u.aguarde(7000)
    }
  }

  funcao creditos(){
    limpa()
    escreva("---------------------------------------\n")
    escreva("--Creditos--\n")
    escreva("Tudo - Ronaldo\n")
    escreva("Professor - Vini Boscaa\n")
    escreva("---------------------------------------\n")
    u.aguarde(5000)
  
  }

  funcao iniciougame(){
    inteiro vidaJogador = 0
    inteiro ataqueJogador = 0
    inteiro manaMagoJogador = 0
    inteiro contadorvida = 0
    inteiro contadormana = 0
    
    escreva("Você acaba de iniciar sua Aventura!")
    u.aguarde(5000)
  }

}
