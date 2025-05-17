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
      escreva("camarp")

      pare

      caso "ii":

      escreva("uiiii")

      pare

      caso "iii":

      escreva("fim")

      
      

    }







  }

  
}
