programa {
  inclua biblioteca Util --> u
  
  funcao inicio() {

    menu()
    

   
    
  }
  funcao menu(){ 
    cadeia opcao

    u.aguarde(1000)
    escreva("________________________\n")
    u.aguarde(100)
    escreva("│                      │\n")
    u.aguarde(100)
    escreva("│    i.Novo Jogo       │\n")
    u.aguarde(100)
    escreva("│   ii.Créditos        │\n")
    u.aguarde(100)
    escreva("│  iii.Sair do jogo    │\n")
    u.aguarde(100)
    escreva("│                      │\n")
    u.aguarde(100)
    escreva("‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾\n")

    escreva("Qual opção você quer escolher? i, ii ou iii?\n")
    leia(opcao)

    dasOpcoes(opcao)

  }

  funcao dasOpcoes(cadeia opcao){
    escolha(opcao){
      caso "i":
      novoJogo()

      pare

      caso "ii":

      escreva("uiiii")

      pare

      caso "iii":

      escreva("fim")
    }
  }
  funcao novoJogo(){

    escreva("BORA COMEÇAR ENTÃO...não sei se foi uma boa ideia.\n")
    escreva("\n")
    u.aguarde(3000)
    escreva("Há muito tempo, no Reino de Eldoria, a paz era mantida pela mística Pedra da Luz, protegida pelos Anciãos do Castelo Dourado.\n")
    escreva("\n")
    u.aguarde(2000)
    escreva("Um dia, uma força sombria conhecida como O Devastador invadiu o reino, roubando a relíquia sagrada e mergulhando as terras em trevas e caos.\n")
    u.aguarde(2000)
    escreva("Vilas foram saqueadas, florestas corrompidas, e criaturas sombrias começaram a vagar pelas regiões.\n")
    escreva("\n")
    u.aguarde(2000)
    escreva("Diante da crise, uma antiga profecia se cumpriu: um herói escolhido surgirá das sombras para restaurar a luz. Você é esse herói.\n")
    escreva("\n")
    u.aguarde(2000)
    escreva("Sua missão é atravessar cinco regiões dominadas pelo mal, enfrentando inimigos, evoluindo suas habilidades e se preparando para confrontar O Devastador no Castelo Dourado.\n")
    u.aguarde(2000)
    escreva(" A jornada será repleta de perigos, escolhas e batalhas. Seu destino e o de Eldoria estão entrelaçados.")
    u.aguarde(2000)
      
    }

  
}
