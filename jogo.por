programa {
  inclua biblioteca Util --> u
  funcao inicio() {

  inteiro opcaoEscolhidaMenu

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
  enquanto(opcaoEscolhidaMenu != 4){
    escreva("\n-- MENU --\n")
    escreva("\nOpção 1 - Iniciar Jornada\n")
    escreva("\nOpção 2 - Configurar Classe\n")
    escreva("\nOpção 3 - Créditos\n")
    escreva("\nOpção 4 - Sair do Jogo\n")
    leia(opcaoEscolhidaMenu)
  }
  }
}
