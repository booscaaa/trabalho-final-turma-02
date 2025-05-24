programa { inclua biblioteca Util --> u 
  cadeia classePersonagem
  inteiro xpPersonagem
  inteiro vidaPersonagem
  inteiro ataquePersonagem
  inteiro defesaPersonagem
  cadeia nomePersonagem
  funcao inicio() {
      menu()
      escolherClasse()
      tutorialBatalhas()
  }

  funcao menu(){
    cadeia menuOpcao
    cadeia leitorMenuClasses
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
          limpa()
          
            escreva("╔═╡ ⚔️ GUERREIRO ⚔️ ╞═╗\n")
            escreva("║ VIDA - 200           ║\n")
            escreva("║ ATAQUE - 40          ║\n")
            escreva("║ DEFESA - 30          ║\n")
            escreva("╚══════════════════════╝\n")
            escreva("╔═╡ ⚔️ ARQUEIRO ⚔️  ╞═╗\n")
            escreva("║ VIDA - 250           ║\n")
            escreva("║ ATAQUE - 30          ║\n")
            escreva("║ DEFESA - 20          ║\n")
            escreva("╚══════════════════════╝\n")
            escreva("╔═╡   ⚔️ MAGO ⚔️    ╞═╗\n")
            escreva("║ VIDA - 230           ║\n")
            escreva("║ ATAQUE - 35          ║\n")
            escreva("║ DEFESA - 20          ║\n")
            escreva("╚══════════════════════╝\n")
        }
        senao se(menuOpcao == "2") {
          escreva("Feito por mim mesmo! 👏\n")
          u.aguarde(2000)
        }
        senao se(menuOpcao == "3") {
          escreva("Saindo...\n")
          u.aguarde(1000)
    
        }
      }enquanto(menuOpcao<"1" ou menuOpcao>"3")
  } 
  funcao escolherClasse(){
    
      faca{
        escreva("╔══════════════════════════════════════════════════════╗", "\n")
        escreva("║        QUAL A CLASSE QUE VOCÊ DESEJA ESCOLHER?       ║", "\n")
        escreva("╠══════════════════════════════════════════════════════╣", "\n")
        escreva("║        GUERREIRO    →     DIGITE A TECLA 1           ║", "\n")
        escreva("║        ARQUEIRO     →     DIGITE A TECLA 2           ║", "\n")
        escreva("║        MAGO         →     DIGITE A TECLA 3           ║", "\n")
        escreva("╚══════════════════════════════════════════════════════╝", "\n")
        leia(classePersonagem)
        }enquanto(classePersonagem>"3" ou classePersonagem<"1")
    se(classePersonagem==1){
      xpPersonagem = 0
      vidaPersonagem = 200
      ataquePersonagem = 40
      defesaPersonagem = 30

      escreva("╔══════════════════════════════════════════════════════╗", "\n")
      escreva("║           SUA CLASSE ESCOLHIDA É: GUERREIRO          ║", "\n")
      escreva("╚══════════════════════════════════════════════════════╝", "\n")
      u.aguarde(3000)
    }
    se(classePersonagem==2){
      xpPersonagem = 0
      vidaPersonagem = 250
      ataquePersonagem = 30
      defesaPersonagem = 20

      escreva("╔══════════════════════════════════════════════════════╗", "\n")
      escreva("║          SUA CLASSE ESCOLHIDA É: ARQUEIRO            ║", "\n")
      escreva("╚══════════════════════════════════════════════════════╝", "\n")
      u.aguarde(3000)
    }
    se(classePersonagem==3){
      xpPersonagem = 0
      vidaPersonagem = 230
      ataquePersonagem = 35
      defesaPersonagem = 20

      escreva("╔══════════════════════════════════════════════════════╗", "\n")
      escreva("║            SUA CLASSE ESCOLHIDA É: MAGO              ║", "\n")
      escreva("╚══════════════════════════════════════════════════════╝", "\n")
      u.aguarde(3000)
    }
    limpa()

    
  }
   funcao tutorialBatalhas() {
        cadeia nomeInimigo = "Junin Ruindade Pura"
        inteiro vidaInimigo = 70
        inteiro ataqueInimigo = 15
        inteiro defesaInimigo = 5
        inteiro xpInimigo = 15

        inteiro opcaoBatalha
        inteiro danoCausado
        inteiro danoSofrido
        logico jogadorEstaDefendendo = falso

        escreva("╔════════════════════════════════════════════╗", "\n")
        escreva("║        TUTORIAL DE BATALHA INICIAL         ║", "\n")
        escreva("╠════════════════════════════════════════════╣", "\n")
        escreva("║        SEU PRIMEIRO ADVERSÁRIO SERÁ:       ║", "\n")
        escreva("║            ", nomeInimigo, "             ║", "\n")
        escreva("╚════════════════════════════════════════════╝", "\n")
        u.aguarde(2500)
        limpa()

        escreva("╔═══════════════════════════════════╗", "\n")
        escreva("║        ", nomeInimigo, "        ║", "\n")
        escreva("╠═══════════════════════════════════╣", "\n")
        escreva("║      VIDA   → ", vidaInimigo,"                 ║", "\n") 
        escreva("║      ATAQUE → ", ataqueInimigo,"                   ║", "\n")
        escreva("║      DEFESA → ", defesaInimigo,"                   ║", "\n")
        escreva("╚═══════════════════════════════════╝", "\n")
        u.aguarde(3000)
        limpa()

        escreva("╔══════════════════════════════════════════════════════╗", "\n")
        escreva("               VOCÊ ESTÁ PREPARADO, ", nomePersonagem, "?           ", "\n")
        escreva("╚══════════════════════════════════════════════════════╝", "\n")
        escreva(" ╔═══════════════════════════════════════════════════╗", "\n")
        escreva(" ║     PRESSIONE QUALQUER TECLA PARA PROSSEGUIR      ║", "\n")
        escreva(" ╚═══════════════════════════════════════════════════╝", "\n")
        cadeia teclaDigitadaBatalha
        leia(teclaDigitadaBatalha)
        limpa()


        enquanto (vidaPersonagem > 0 e vidaInimigo > 0) {
            escreva("--- SEU TURNO, ", nomePersonagem, "! ---\n")
            
            escreva(nomePersonagem, " - Vida: ", vidaPersonagem, "\n")
            escreva(nomeInimigo, " - Vida: ", vidaInimigo, "\n\n")

            se (jogadorEstaDefendendo) { 
                escreva("Você está em postura defensiva!\n")
            }

            escreva("O QUE VOCÊ DESEJA FAZER?\n")
            escreva("1 - ATACAR\n")
            escreva("2 - DEFENDER\n")
            escreva("Escolha sua ação: ")
            leia(opcaoBatalha)
            limpa()

            se (opcaoBatalha == 1) {
                danoCausado = ataquePersonagem - defesaInimigo
                se (danoCausado < 0) { danoCausado = 0 }
                vidaInimigo = vidaInimigo - danoCausado
                se (vidaInimigo < 0) { vidaInimigo = 0 }
                escreva("Você ataca ", nomeInimigo, " causando ", danoCausado, " de dano!\n")
                jogadorEstaDefendendo = falso
                u.aguarde(2000)
            } senao se (opcaoBatalha == 2) {
                jogadorEstaDefendendo = verdadeiro
                escreva("Você se concentra e adota uma postura defensiva!\n")
                escreva("O próximo ataque inimigo terá seu dano reduzido.\n")
                u.aguarde(2000)
            } senao {
                escreva("Opção inválida! Você hesita e perde o turno.\n")
                jogadorEstaDefendendo = falso
                u.aguarde(2000)
            }
            limpa()

            se (vidaInimigo <= 0) {
                escreva(nomeInimigo, " foi derrotado!\n")
                xpPersonagem = xpPersonagem + xpInimigo
                escreva("Você ganhou ", xpInimigo, " de XP! XP Total: ", xpPersonagem, "\n")
                u.aguarde(3000)
            } senao {
                escreva("--- TURNO DE ", nomeInimigo, " ---\n")
                u.aguarde(1000)

                inteiro defesaEfetivaJogador = defesaPersonagem
                se (jogadorEstaDefendendo) {
                    danoSofrido = ataqueInimigo - defesaPersonagem
                    se (danoSofrido < 0) { danoSofrido = 0 }
                    danoSofrido = danoSofrido / 2.0
                    escreva(nomeInimigo, " ataca, mas sua defesa absorve boa parte do impacto!\n")
                } senao {
                    danoSofrido = ataqueInimigo - defesaPersonagem
                }

                se (danoSofrido < 0) { danoSofrido = 0 }
                vidaPersonagem = vidaPersonagem - danoSofrido
                se (vidaPersonagem < 0) { vidaPersonagem = 0 }
                escreva(nomeInimigo, " ataca você, causando ", danoSofrido, " de dano!\n")
                jogadorEstaDefendendo = falso
                u.aguarde(2500)
                limpa()

                se (vidaPersonagem <= 0) {
                    escreva("Você foi derrotado por ", nomeInimigo, "...\n")
                    escreva("FIM DE JOGO (no tutorial)!\n")
                    u.aguarde(3000)
                }
            }
        }

        limpa()
        se (vidaPersonagem > 0 e vidaInimigo <= 0) {
            escreva("Parabéns, ", nomePersonagem, "! Você venceu seu primeiro desafio!\n")
            escreva("O caminho à frente é árduo, mas sua jornada apenas começou.\n")
        } senao se (vidaPersonagem <= 0) {
            escreva("A derrota faz parte do aprendizado, ", nomePersonagem, ".\n")
            escreva("Reagrupe suas forças e tente novamente quando estiver pronto!\n")
        }
        u.aguarde(3500)
        limpa()
    }
}