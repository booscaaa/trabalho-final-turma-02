programa {
  funcao inicio() {
    inteiro opcaoEscolhidaMenu
    enquanto(menu(opcaoEscolhidaMenu)>3){
      menu(opcaoEscolhidaMenu)
    }
  }
  funcao menu(inteiro menuOpcao){
  
      escreva("╔════╡ ⚔️ MENU PRINCIPAL ⚔️ ╞════╗", "\n")
      escreva("║ 1 - NOVO JOGO                   ║", "\n")
      escreva("║ 2 - CRÉDITOS                    ║", "\n")
      escreva("║ 3 - SAIR                        ║", "\n")
      escreva("╚═════════════════════════════════╝", "\n\n")
      escreva("╔════════════════════════════╗", "\n")
      escreva("║ DIGITE A OPÇÃO DESEJADA:   ║", "\n")
      escreva("╚════════════════════════════╝", "\n")
      leia(menuOpcao)
  }
}
