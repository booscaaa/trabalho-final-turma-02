programa { inclua biblioteca Util --> u 
  funcao inicio() {
      menu()
  }

  funcao menu(){
    inteiro menuOpcao
    cadeia nomePersonagem
    cadeia leitorMenuClasses
    inteiro vidaPersonagem
    inteiro defesaPersonagem
    inteiro xpPersonagem
    inteiro nivelPersonagem
    inteiro ataquePersonagem
    cadeia teclaDigitadaClasses
      faca{
        escreva("╔════╡ ⚔️ MENU PRINCIPAL ⚔️ ╞════╗", "\n")
        escreva("║ 1 - NOVO JOGO                   ║", "\n")
        escreva("║ 2 - CRÉDITOS                    ║", "\n")
        escreva("║ 3 - SAIR                        ║", "\n")
        escreva("╚═════════════════════════════════╝", "\n\n")
        escreva("╔════════════════════════════╗", "\n")
        escreva("║ DIGITE A OPÇÃO DESEJADA:   ║", "\n")
        escreva("╚════════════════════════════╝", "\n")
        leia(menuOpcao)
        limpa()


        se(menuOpcao==1){
          escreva("Há muito tempo, no Reino de Eldoria, a paz era mantida pela mística Pedra da Luz, protegida pelos Anciãos do Castelo Dourado.\n")
          u.aguarde(3000)                
          escreva("Um dia, uma força sombria conhecida como O Devastador invadiu o reino, roubando a relíquia sagrada e mergulhando as terras em trevas e caos.\n")
          u.aguarde(3000)
          escreva("Vilas foram saqueadas, florestas corrompidas, e criaturas sombrias começaram a vagar pelas regiões.\n")
          u.aguarde(3000)
          escreva("Diante da crise, uma antiga profecia se cumpriu: um herói escolhido surgirá das sombras para restaurar a luz.\n")
          u.aguarde(3000)
          escreva("Esse herói...\n")
          u.aguarde(2000)
          escreva("É ")
          u.aguarde(1500)
          escreva("VOCÊ!!!!!")
          u.aguarde(500)
        
          limpa()

          escreva("════╡ ⚔️ Insira o nome de seu HERÓI ⚔️ ╞════", "\n\n")
          leia(nomePersonagem)
          escreva("Muito bem, nobre ", nomePersonagem, ". em tua jornada, três caminhos se abrem diante de ti...\n")
          escreva("╔════╡  ⚔️ CLASSES ⚔️  ╞════╗\n")
          escreva("║  1 - GUERREIRO             ║", "\n")
          escreva("║  2 - ARQUEIRO              ║", "\n")
          escreva("║  3 - MAGO                  ║", "\n")
          escreva("╚════════════════════════════╝", "\n\n")
          escreva("╔═══════════════════════════════════════════════════╗", "\n")
          escreva("║ PRESSIONE QUALQUER TECLA PARA CONHECER AS CLASSES ║", "\n")
          escreva("╚═══════════════════════════════════════════════════╝", "\n")
          leia(teclaDigitadaClasses)
          
            escreva("╔═╡ ⚔️ GUERREIRO ⚔️ ╞═╗\n")
            escreva("║ VIDA - 200           ║\n")
            escreva("║ ATAQUE - 40          ║\n")
            escreva("║ DEFESA - 30          ║\n")
            escreva("╚══════════════════════╝\n")
            escreva("\n")
            escreva("╔═╡ ⚔️ ARQUEIRO ⚔️  ╞═╗\n")
            escreva("║ VIDA - 250           ║\n")
            escreva("║ ATAQUE - 30          ║\n")
            escreva("║ DEFESA - 20          ║\n")
            escreva("╚══════════════════════╝\n")
            escreva("╔═╡ ⚔️ MAGO ⚔️  ╞═╗\n")
            escreva("║ VIDA - 230           ║\n")
            escreva("║ ATAQUE - 35          ║\n")
            escreva("║ DEFESA - 20          ║\n")
            escreva("╚══════════════════════╝\n")
          
        }
      }enquanto(menuOpcao<1 e menuOpcao>3)
  }


}

