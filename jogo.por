programa { inclua biblioteca Util --> u 
  cadeia classePersonagem
  inteiro xpPersonagem = 0
  inteiro vidaPersonagem 
  inteiro ataquePersonagem = 0
  inteiro defesaPersonagem = 0
  cadeia nomePersonagem
  inteiro opcaoBatalha
  inteiro danoCausado
  inteiro danoSofrido
  logico jogoRodando = verdadeiro
  inteiro contadorDeMonstros = 0
  cadeia regioes[5] = {"FLORESTA DA NÉVOA", "VILA ABANDONADA", "CAVERNA SOMBRIA", "PÂNTANO DOS LAMENTOS", "CASTELO DOURADO"}
  inteiro indiceRegioes = 0
  inteiro nivelBatalha = 0
  cadeia menuOpcao
  
  funcao inicio() {
    menu()
    enquanto(menuOpcao!=3 e jogoRodando==verdadeiro){
      escolherClasse()
      iniciarJogo()
      nivelDoJogador()
      se(vidaPersonagem < 1){ 
        fimDeJogo()
        u.aguarde(2000)
        pare 
      }
      se(indiceRegioes == 0){
        primeiraFaseJogo()
      }
      se(indiceRegioes == 1){
        segundaFaseJogo()
      }
      se(indiceRegioes == 2){
        terceiraFaseJogo()
      }
      se(indiceRegioes == 3){
        quartaFaseJogo()
      }
      se(indiceRegioes == 4){
        quintaFaseJogo()
        
      }
    }
  } 

  funcao fimDeJogo(){
    jogoRodando = falso 
    escreva("╔══════════════════════════╗\n")
    escreva("║        GAME OVER!        ║\n")
    escreva("╚══════════════════════════╝\n")
    escreva("🥀 VOCÊ FOI DERROTADO! 🥀\n")
    escreva("✨ SEU NÍVEL DE XP: ", nivelBatalha, " ✨\n")
    escreva("😈 VOCÊ MATOU: ", contadorDeMonstros, " INIMIGOS 😈\n\n")
    escreva("Obrigado por jogar...\n")
    u.aguarde(15000)
  }

  funcao menu(){
    cadeia leitorMenuClasses
    cadeia teclaDigitadaClasses

    enquanto(menuOpcao != 1 e menuOpcao != 3){
      escreva("╔════╡ ⚔️ MENU PRINCIPAL ⚔️ ╞════╗", "\n")
      escreva("║ 1 - INICIAR JOGO                ║", "\n")
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
        u.aguarde(3000)
        limpa()
        escreva("Muito bem, nobre ", nomePersonagem, ". Em tua jornada, três caminhos se abrem diante de ti...\n\n")
        u.aguarde(3000)
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
        escreva("Desenvolvido por Luis Maso...! 👏\n")
        u.aguarde(5000)
        limpa()

      }
      se(menuOpcao== 3){
        escreva("Saindo...\n")
        u.aguarde(3000)
        pare
        pare
      }
    }
  } 


  funcao escolherClasse(){
    
    enquanto(classePersonagem!= "1" e classePersonagem!= "2" e classePersonagem!= "3"){
      escreva("╔══════════════════════════════════════════════════════╗", "\n")
      escreva("║        QUAL A CLASSE QUE VOCÊ DESEJA ESCOLHER?       ║", "\n")
      escreva("╠══════════════════════════════════════════════════════╣", "\n")
      escreva("║        GUERREIRO    →     DIGITE A TECLA 1           ║", "\n")
      escreva("║        ARQUEIRO     →     DIGITE A TECLA 2           ║", "\n")
      escreva("║        MAGO         →     DIGITE A TECLA 3           ║", "\n")
      escreva("╚══════════════════════════════════════════════════════╝", "\n")
      leia(classePersonagem)
      limpa()
    }
    se(classePersonagem==1){
      vidaPersonagem = 200
      ataquePersonagem = 40
      defesaPersonagem = 10

      escreva("╔══════════════════════════════════════════════════════╗", "\n")
      escreva("║           SUA CLASSE ESCOLHIDA É: GUERREIRO          ║", "\n")
      escreva("╚══════════════════════════════════════════════════════╝", "\n")
      u.aguarde(3000)
    }
    se(classePersonagem==2){
    
      vidaPersonagem = 250
      ataquePersonagem = 30
      defesaPersonagem = 12

      escreva("╔══════════════════════════════════════════════════════╗", "\n")
      escreva("║          SUA CLASSE ESCOLHIDA É: ARQUEIRO            ║", "\n")
      escreva("╚══════════════════════════════════════════════════════╝", "\n")
      u.aguarde(3000)
    }
    se(classePersonagem==3){
  
      vidaPersonagem = 230
      ataquePersonagem = 35
      defesaPersonagem = 13

      escreva("╔══════════════════════════════════════════════════════╗", "\n")
      escreva("║            SUA CLASSE ESCOLHIDA É: MAGO              ║", "\n")
      escreva("╚══════════════════════════════════════════════════════╝", "\n")
      u.aguarde(3000)
    }
    limpa()
  }

  funcao nivelDoJogador(){
    se(xpPersonagem>=15 e xpPersonagem<30){
    escreva("\n ✨ VOCÊ ATINGIU O NÍVEL 1 DE BATALHA! ✨ \n")
    nivelBatalha = 1
    u.aguarde(3000)
    }
    se(xpPersonagem>=30 e xpPersonagem<50){
      escreva("\n ✨ VOCÊ ATINGIU O NÍVEL 2 DE BATALHA! ✨ \n")
      nivelBatalha = 2
      u.aguarde(3000)
    }
    se(xpPersonagem>=50 e xpPersonagem<100){
      escreva("\n ✨ VOCÊ ATINGIU O NÍVEL 3 DE BATALHA! ✨ \n")
      nivelBatalha = 3
      u.aguarde(3000)
    }
    se(xpPersonagem>=100 e xpPersonagem<200){
      escreva("\n✨ VOCÊ ATINGIU O NÍVEL 4 DE BATALHA! ✨ \n")
      nivelBatalha = 4
      u.aguarde(3000)
    }
    se(xpPersonagem>=200){
      escreva("\n ✨ VOCÊ ATINGIU O NÍVEL 5 DE BATALHA! ✨ \n")
      nivelBatalha = 5
      u.aguarde(3000)
    }
  }

  funcao iniciarJogo(){
    cadeia teclaIniciarJogo
    escreva("╔═══════════════════════════════════════════════════╗", "\n")
    escreva("║      PRESSIONE QUALQUER TECLA INICIAR O JOGO      ║", "\n")
    escreva("╚═══════════════════════════════════════════════════╝", "\n")    
    leia(teclaIniciarJogo)
    limpa()
  }

  funcao primeiraFaseJogo(){
    cadeia opcaoEscolhidaHistoria  
    
    escreva("Você chegou a região: ", regioes[0], " 🌲🌫️🦉🕸️🌑")
    u.aguarde(3000)
    limpa()
    escreva("A neblina esconde perigos. ")
    u.aguarde(1200)
    escreva("Criaturas sombrias espreitam.\n")
    u.aguarde(1200)
    escreva("Cuidado, este lugar não perdoa os descuidados.\n")
    u.aguarde(3203)
    limpa()
    
    enquanto(opcaoEscolhidaHistoria != 1){
      escreva(" ╔══════════════════════════════╗", "\n")
      escreva(" ║      OQUE DESEJA FAZER?      ║", "\n")
      escreva(" ╚══════════════════════════════╝", "\n")
      escreva("DIGITE 1 - SEGUIR PELA FLORESTA... 🌲 \n ")
      leia(opcaoEscolhidaHistoria)
      limpa()
    }
    cadeia opcaoEscolhidaHistoria1
    enquanto(opcaoEscolhidaHistoria1 != 1 e opcaoEscolhidaHistoria1 != 2){
      escreva("Você caminha pela floresta e se depara com um baú... 🧰\n")
      u.aguarde(800)
      escreva("╔══════════════════════════════╗", "\n")
      escreva("║      OQUE DESEJA FAZER?      ║", "\n")
      escreva("╚══════════════════════════════╝", "\n")
      escreva("DIGITE 1 - ABRIR O BAÚ 🧰\n")
      escreva("DIGITE 2 - NÃO ABRIR O BAÚ ❌🧰\n")
      leia(opcaoEscolhidaHistoria1)
      limpa()
    }
    se(opcaoEscolhidaHistoria1==1){
      escreva("VOCÊ ABRE O BAÚ E.....\n")
      u.aguarde(2000)
      escreva("✨ PARABÉNS, VOCÊ ACABA DE GANHAR UM BONÛS DE XP! ✨\n")
      escreva("SEU XP ANTES - ", xpPersonagem," ✨\n")
      xpPersonagem = 5
      escreva("SEU XP AGORA - ", xpPersonagem, " ✨\n")
      u.aguarde(5000)
      limpa()
      nivelDoJogador()
    }
    senao se(opcaoEscolhidaHistoria1==2){
      escreva("❌ VOCÊ ACABA DE PERDER UMA GRANDE OPORTUNIDADE... ❌\n")
      escreva("FICA PRA PRÓXIMA... ")
      u.aguarde(3000)
    }
    cadeia opcaoEscolhidaHistoria2
    escreva("Enquanto avança pela floresta, você encontra uma antiga estátua coberta por musgo...\n")
    u.aguarde(1800)
    escreva("Ela começa a brilhar e uma voz ecoa: \n\n")
    u.aguarde(1200)
    escreva("\"A luz guia o sábio e a sombra engana o tolo...\"\n\n")
    u.aguarde(1300)
    enquanto(opcaoEscolhidaHistoria2 != 1 e opcaoEscolhidaHistoria2 != 2){
      escreva("╔══════════════════════════════╗", "\n")
      escreva("║   QUAL VOCÊ DESEJA SEGUIR?   ║", "\n")
      escreva("╚══════════════════════════════╝", "\n")
      escreva("DIGITE 1 - Luz 🌞\n")
      escreva("DIGITE 2 - Sombra 🌑\n")
      leia(opcaoEscolhidaHistoria2)
      u.aguarde(500)
      limpa()
      se(opcaoEscolhidaHistoria2 == 1){
        escreva("Você escolhe a luz. Um caminho dourado surge à sua frente...\n\n")
        u.aguarde(700)
        escreva("PARABÉNS, VOCÊ GANHOU +3 DE ATAQUE! ⚔️\n")
        escreva("SEU ATAQUE ANTES - ", ataquePersonagem, " ⚔️\n")
        ataquePersonagem = ataquePersonagem + 3
        escreva("SEU ATAQUE AGORA - ", ataquePersonagem, " ⚔️\n")
        u.aguarde(6000)
        limpa()
      }
      senao se(opcaoEscolhidaHistoria2 == 2){
        escreva("Você escolhe a sombra. Uma névoa espessa envolve seu corpo...\n\n")
        u.aguarde(700)
        escreva("PÉSSIMA ESCOLHA, VOCÊ ACABA DE PERDER -5 DE VIDA! ❤️ ➝ 💔 \n")
        escreva("SUA VIDA ANTES - ", vidaPersonagem, " 💔 \n")
        vidaPersonagem = vidaPersonagem - 5
        escreva("SUA VIDA AGORA - ", vidaPersonagem, " 💔 \n")
        u.aguarde(6000)
        limpa()
      }
    }
    escreva("Você adentra uma floresta envolta por névoa espessa.\n")
    u.aguarde(800)
    escreva("As árvores são retorcidas, seus galhos lembram mãos tentando agarrar algo...\n")
    u.aguarde(900)
    escreva("O silêncio é quase absoluto, interrompido apenas por estalos vindos da mata.\n\n")
    u.aguarde(3000)
    escreva("OOOOH NÃO, ELE ESTÁ AI...\n")
    u.aguarde(2000)

    cadeia nomeInimigo = "PAULINHO NAVALHA TROPEIRA"
    inteiro vidaInimigo = 80
    inteiro ataqueInimigo = 30
    inteiro defesaInimigo = 5
    inteiro xpInimigo = 15
    cadeia opcaoBatalha 

    escreva("╔════════════════════════════════════════════╗\n")
    escreva("           SEU ADVERSÁRIO SERÁ:         ", "\n")
    escreva("          ", nomeInimigo, "                 ", "\n")
    escreva("╚════════════════════════════════════════════╝", "\n")

    u.aguarde(2500)
    limpa()
    escreva("╔═══════════════════════════════════╗", "\n")
    escreva("      ", nomeInimigo, "        ",       "\n")
    escreva("╠═══════════════════════════════════╣", "\n")
    escreva("        VIDA   → ", vidaInimigo," ❤️                ", "\n") 
    escreva("        ATAQUE → ", ataqueInimigo," ⚔️                   ", "\n")
    escreva("        DEFESA → ", defesaInimigo," 🛡️                   ", "\n")
    escreva("╚═══════════════════════════════════╝", "\n")
    u.aguarde(5000)
    limpa()

    enquanto (vidaInimigo > 0) {
      escreva("╔════════════════════════════════════════╗\n")
      escreva("   SEU TURNO, ", nomePersonagem, "!        \n")
      escreva("╚════════════════════════════════════════╝\n\n")

      escreva(" ",nomePersonagem, " - ❤️ HP - ", vidaPersonagem, "\n")
      escreva("═════════════════════════════════════════\n")
      escreva(" ",nomeInimigo, " - ❤️ HP  - ", vidaInimigo, "\n\n")


      escreva("O QUE VOCÊ DESEJA FAZER?\n")
      escreva("═════════════════════════\n ")
      escreva("     1 → ATACAR ⚔️      \n")  
      escreva("═════════════════════════\n")
      escreva("ESCOLHA SUA AÇÃO: \n")
      leia(opcaoBatalha)
      limpa()

      se(opcaoBatalha == 1) {
        inteiro danoCausado = ataquePersonagem - defesaInimigo
        
        vidaInimigo = vidaInimigo - danoCausado

        escreva("💥 VOCÊ ATACA ", nomeInimigo, " CAUSANDO ", danoCausado, " DE DANO! 💥\n")
        u.aguarde(2000)
      }
      
      senao {
        escreva("❌ - OPÇÃO INVÁLIDA! Você hesita e perde o turno...\n")
        u.aguarde(2000)
      }
      limpa()
      se (vidaInimigo <= 0) {
        escreva(nomeInimigo, " FOI DERROTADO COM SUCESSO 🏆!\n")
        xpPersonagem = xpPersonagem + xpInimigo
        escreva("✨ VOCÊ GANHOU ", xpInimigo, " DE XP ! ✨\n\n✨ XP Total: ", xpPersonagem, " ✨\n")
        u.aguarde(3000)
        nivelDoJogador()
        contadorDeMonstros++
      }
      senao {
      escreva("╔════════════════════════════════════════╗\n")
      escreva("    TURNO DE ", nomeInimigo, "!        \n")
      escreva("╚════════════════════════════════════════╝\n\n")
      u.aguarde(1000)
      inteiro danoSofrido = ataqueInimigo - defesaPersonagem
      escreva("💥 ",nomeInimigo, " ATACA VOCÊ, CAUSANDO ", danoSofrido, " DE DANO! 💥\n")
      vidaPersonagem = vidaPersonagem - danoSofrido
      u.aguarde(2500)
      limpa()
      }
      se(vidaPersonagem<=0){
        fimDeJogo() //morte personagem caraio 
        jogoRodando=falso
        retorne
      }
      limpa()
    }
    cadeia opcaoEscolhidaHistoria3
    escreva("Após sobreviver o confronto, você segue pela floresta...\n")
    u.aguarde(2000)
    escreva("No silêncio da estrada, um comerciante emerge das sombras. Ele lhe oferece três bênçãos... 💫🧿🌟\n\n")
    u.aguarde(3000)
    enquanto(opcaoEscolhidaHistoria3!=1 e opcaoEscolhidaHistoria3!=2){

      escreva("     ╔══════════════════════════════╗", "\n")
      escreva("     ║      OQUE DESEJA FAZER?      ║", "\n")
      escreva("     ╚══════════════════════════════╝", "\n")
      escreva("DIGITE 1 - ACEITAR A PROPOSTA DO COMERCIANTE 🤝\n")
      escreva("DIGITE 2 - NÃO ACEITAR A PROPOSTA DO COMERCIANTE ❌🤝\n")
      leia(opcaoEscolhidaHistoria3)
      limpa()
    
      se(opcaoEscolhidaHistoria3==1){
        cadeia opcaoLojaComerciante
        enquanto(opcaoLojaComerciante!=1 e opcaoLojaComerciante!=2 e opcaoLojaComerciante!=3){
          escreva("╔══════════════════════════════╗", "\n")
          escreva("║    SEJA BEM-VINDO A LOJA     ║", "\n")
          escreva("╚══════════════════════════════╝", "\n")
          escreva("       ❤️     🛡️      ⚔️  \n")
          escreva("     ━━━━━━  ━━━━━━  ━━━━━━\n")
          escreva("     HP MÁX   +3DEF  +5ATK \n")
          escreva("     ━━━━━━  ━━━━━━  ━━━━━━\n") 

          escreva("╔══════════════════════════════╗", "\n")
          escreva("║      QUAL SUA ESCOLHA?       ║", "\n")
          escreva("╚══════════════════════════════╝", "\n\n")
          escreva("DIGITE 1 - HP MÁX ❤️\n")
          escreva("DIGITE 2 - +3DEF 🛡️\n")
          escreva("DIGITE 3 - +5ATK ⚔️\n")
          leia(opcaoLojaComerciante)
          limpa()

          se(opcaoLojaComerciante==1){ // vida nessa merda
            escreva("PARABÉNS, VOCÊ ADQUIRIU 100% DA SUA VIDA! ❤️\n")
            se(classePersonagem==1){
              vidaPersonagem = 200
              escreva("SEU HP SE TORNOU ", vidaPersonagem, " NOVAMENTE! ❤️\n")
            }
            se(classePersonagem==2){
              vidaPersonagem = 250
              escreva("SEU HP SE TORNOU ", vidaPersonagem, " NOVAMENTE! ❤️\n")
            }
            se(classePersonagem==3){
              vidaPersonagem = 230
              escreva("SEU HP SE TORNOU ", vidaPersonagem, " NOVAMENTE! ❤️\n")
            }
          }
          se(opcaoLojaComerciante==2){ //
            escreva("PARABÉNS, VOCÊ ADQUIRIU +3 DE DEFESA! 🛡️\n")
            defesaPersonagem = defesaPersonagem + 3
            escreva("SUA DEFESA SE TORNOU ", defesaPersonagem, "! 🛡️\n")
                      
          }
          se(opcaoLojaComerciante==3){  
            escreva("PARABÉNS, VOCÊ ADQUIRIU +5 DE ATAQUE! ⚔️\n")
            ataquePersonagem = ataquePersonagem + 5
            escreva("SEU ATAQUE SE TORNOU ", ataquePersonagem, "! ⚔️\n") 
          }
          u.aguarde(5000)
        }
      }
      se(opcaoEscolhidaHistoria3==2){
        escreva("❌ VOCÊ ACABA DE PERDER UMA GRANDE OPORTUNIDADE... ❌\n")
        escreva("FICA PRA PRÓXIMA...\n ")
        u.aguarde(3000)
      }
      limpa()
    } 
    cadeia teclaTerminarFase1
    escreva("   ╔═══════════════════════════════════════════════════╗", "\n")
    escreva("   ║     PARABÉNS, VOCÊ TERMINOU A PRIMEIRA FASE!      ║", "\n")
    escreva("   ╚═══════════════════════════════════════════════════╝", "\n\n")
    u.aguarde(2000)
    escreva("╔═════════════════════════════════════════════════════════╗", "\n")
    escreva("║  PRESSIONE QUALQUER TECLA PRA PROSSEGUIR PRA FASE DOIS  ║", "\n")
    escreva("╚═════════════════════════════════════════════════════════╝", "\n\n")
    leia(teclaTerminarFase1)
    indiceRegioes = 1
    limpa()
  }

  funcao segundaFaseJogo(){
    escreva("Você chegou a região: ", regioes[1], " 🏚️🪦🌫️🕯️👻")
    u.aguarde(3000)
    limpa()
    para(inteiro i = 0; i<5; i++){
      escreva("Silêncio absoluto...\n")
      u.aguarde(450)
    }

    limpa()
    escreva("Nem o vento ousa soprar.\n")
    u.aguarde(2000)
    escreva("As casas apodrecem sob o peso de maldições antigas, ")
    u.aguarde(1500)
    escreva("enquanto ladrões enlouquecidos dividem espaço com almas famintas por vingança.\n\n")
    u.aguarde(1500)
    escreva("Entre apenas se tiver coragem...")
    u.aguarde(1800)
    escreva(" e nunca abaixe a guarda.")
    u.aguarde(3000)
    limpa()

    cadeia opcaoEscolhidaHistoria4
    escreva("Você avança com cautela entre os escombros.\n")
    u.aguarde(1500)
    escreva("Duas trilhas se revelam entre as sombras:\n")
    u.aguarde(1800)
    escreva("Um rastro espesso de sangue serpenteia pelo chão, como se algo tivesse sido arrastado à força...\n\n")
    u.aguarde(2500)
    enquanto(opcaoEscolhidaHistoria4 != 1 e opcaoEscolhidaHistoria4 != 2){
      escreva("     ╔══════════════════════════════╗", "\n")
      escreva("     ║      OQUE DESEJA FAZER?      ║", "\n")
      escreva("     ╚══════════════════════════════╝", "\n\n")      
      escreva("DIGITE 1 - SEGUIR O CAMINHO DE SANGUE 🩸\n")
      escreva("DIGITE 2 - SEGUIR OUTRO CAMINHO  \n")
      leia(opcaoEscolhidaHistoria4)
      limpa()
    }
    se(opcaoEscolhidaHistoria4==1){
      escreva("🩸       \n")
      u.aguarde(300)
      escreva("     🩸\n")
      u.aguarde(300)
      escreva("  \n")
      u.aguarde(300)
      escreva("  🩸\n")
      u.aguarde(300)
      escreva("       🩸\n")
      u.aguarde(300)
      escreva("         🩸\n")
      u.aguarde(300)
      escreva("           🩸\n")
      u.aguarde(300)
      escreva("       \n")
      u.aguarde(300)
      escreva("         🩸\n")
      u.aguarde(300)
      escreva("     \n")
      u.aguarde(300)
      escreva("        🩸\n")
      u.aguarde(300)
      escreva("     🩸\n")
      u.aguarde(300)
      escreva("\n")
      u.aguarde(300)
      escreva("       🩸\n")
      u.aguarde(300)
      escreva("    🩸\n\n")
      u.aguarde(300)
      escreva("???????????????")
      u.aguarde(2000)
      limpa()
      escreva("Um ladrão é encontrado após o caminho de sangue, mas já sem vida...\n")
      u.aguarde(1000)
      escreva("O mesmo possui em suas mãos um estranho aumuleto.\n\n")
      u.aguarde(2300)
      cadeia opcaoAumuleto
      enquanto(opcaoAumuleto!=1 e opcaoAumuleto!=2){
        escreva("     ╔══════════════════════════════╗", "\n")
        escreva("     ║      OQUE DESEJA FAZER?      ║", "\n")
        escreva("     ╚══════════════════════════════╝", "\n\n")
        escreva("DIGITE 1 - PEGAR O AUMULETO 🧿\n")
        escreva("DIGITE 2 - SEGUIR SEU CAMINHO 🧭\n")
        leia(opcaoAumuleto)
        limpa()
      }
      se(opcaoAumuleto==1){
        cadeia opcaoEscolhaBonusAumuleto
        enquanto(opcaoEscolhaBonusAumuleto != 1 e opcaoEscolhaBonusAumuleto != 2 e opcaoEscolhaBonusAumuleto != 3 e opcaoEscolhaBonusAumuleto != 4){
          escreva("Você sente uma energia estranha percorrer seu corpo...\n\n")
          u.aguarde(2000)
          escreva("        💠 ESCOLHA UM BÔNUS! 💠\n\n")
          escreva("═══════════════════════════════════════\n")
          escreva(" +10XP      +10HP     +5DEF     +5ATK\n")
          escreva("═══════════════════════════════════════\n")
          escreva("   ✨        ❤️        🛡️        ⚔️\n\n")
          escreva("   ╔══════════════════════════════╗", "\n")
          escreva("   ║       QUAL SUA ESCOLHA?      ║", "\n")
          escreva("   ╚══════════════════════════════╝", "\n\n")
          escreva("DIGITE 1 - +10XP ✨\n")
          escreva("DIGITE 2 - +10HP ❤️\n")
          escreva("DIGITE 3 - +5DEF 🛡️\n")
          escreva("DIGITE 4 - +5ATK ⚔️\n")
          leia(opcaoEscolhaBonusAumuleto)
          limpa()
        }
        se(opcaoEscolhaBonusAumuleto==1){
          escreva("✨PARABÉNS, VOCÊ ADQUIRIU +10 DE XP! ✨\n\n")
          escreva("SEU XP ANTES - ", xpPersonagem, "✨\n")
          xpPersonagem = xpPersonagem + 10
          escreva("SEU XP AGORA - ", xpPersonagem, "✨\n")
          u.aguarde(4000)
          nivelDoJogador()
          u.aguarde(4000)
          limpa()
        }
        se(opcaoEscolhaBonusAumuleto==2){
          escreva("❤️ PARABÉNS, VOCÊ ADQUIRIU +10 DE VIDA! ❤️\n\n")
          escreva("SUA VIDA ANTES - ", vidaPersonagem, "❤️\n")
          vidaPersonagem = vidaPersonagem + 10
          escreva("SUA VIDA AGORA - ", vidaPersonagem, "❤️\n")
          u.aguarde(4000)
        }
        se(opcaoEscolhaBonusAumuleto==3){
          escreva("🛡️ PARABÉNS, VOCÊ ADQUIRIU +5 DE DEFESA! 🛡️\n\n")
          escreva("SUA DEFESA ANTES - ", defesaPersonagem, "🛡️\n")
          defesaPersonagem = defesaPersonagem + 5
          escreva("SUA DEFESA AGORA - ", defesaPersonagem, "🛡️\n")
          u.aguarde(4000)
        }
          se(opcaoEscolhaBonusAumuleto==4){
          escreva("⚔️ PARABÉNS, VOCÊ ADQUIRIU +5 DE ATAQUE! ⚔️\n\n")
          escreva("SEU ATAQUE ANTES - ", ataquePersonagem, "⚔️\n")
          ataquePersonagem = ataquePersonagem + 5
          escreva("SEU ATAQUE AGORA - ", ataquePersonagem, "⚔️\n")
          u.aguarde(4000)
        }
        limpa()
      }
    }
    escreva("Você segue seu rumo...\n")
    u.aguarde(1200)
    limpa()
    para(inteiro i = 0; i<5; i++){
      escreva("Silêncio absoluto...\n")
      u.aguarde(450)
    }
    limpa()
    escreva("POOOOOOOOOOOOOOOOWWWWWWWWWWWWWWWWWWW! 💥\n")
    u.aguarde(1300)
    escreva("UM LADRÃO CAI DE UMA ÁRVORE NA SUA FRENTE! 🧍‍♀️🌲💨\n")
    u.aguarde(1200)
    escreva("O MESMO CLAMA POR PIEDADE 🙏🥺\n")
    u.aguarde(1800)
    cadeia opcaoLadraoArvoreEscolhida
    enquanto(opcaoLadraoArvoreEscolhida!=1 e opcaoLadraoArvoreEscolhida!= 2){
      escreva("     ╔══════════════════════════════╗", "\n")
      escreva("     ║      OQUE DESEJA FAZER?      ║", "\n")
      escreva("     ╚══════════════════════════════╝", "\n\n")
      escreva("DIGITE 1 - ATACAR O LADRÃO ⚔️\n")
      escreva("DIGITE 2 - IR EMBORA, TENDO PIEDADE DO LADRÃO ❌⚔️\n")
      leia(opcaoLadraoArvoreEscolhida)
    }
    se(opcaoLadraoArvoreEscolhida==2){   
      escreva("Você vira as costar e começa a caminhar...\n")
      u.aguarde(1700)
      para(inteiro i=0; i<5; i++){
      escreva("...")
      limpa()
      u.aguarde(300)
      limpa()
      }
      escreva("POOOOOOOOOOOOOOOOWWWWWWWWWWWWWWWWWWW 💥🪓💥\n\n")
      u.aguarde(1500)
      escreva("O LADRÃO TE DA UMA PAULADA NA CABEÇA!\n")
      u.aguarde(1200)
      escreva("VOCÊ ACABA DE TOMAR 25 DE DANO!  ❤️ ➝ 💔 \n")
      vidaPersonagem = vidaPersonagem - 25
      escreva("❤️ HP - ", vidaPersonagem, "\n")
      u.aguarde(3000)
    }
    cadeia nomeInimigo = "LADRÃO CAI-CAI"
    inteiro vidaInimigo = 100
    inteiro ataqueInimigo = 35
    inteiro defesaInimigo = 8
    inteiro xpInimigo = 25
    cadeia opcaoBatalha 
    escreva("╔════════════════════════════════════════════╗\n")
    escreva("           SEU ADVERSÁRIO SERÁ:         ", "\n")
    escreva("          ", nomeInimigo, "                 ", "\n")
    escreva("╚════════════════════════════════════════════╝", "\n")
    u.aguarde(2500)
    limpa()
    escreva("╔═══════════════════════════════════╗", "\n")
    escreva("      ", nomeInimigo, "        ",       "\n")
    escreva("╠═══════════════════════════════════╣", "\n")
    escreva("        VIDA   → ", vidaInimigo," ❤️                ", "\n") 
    escreva("        ATAQUE → ", ataqueInimigo," ⚔️                 ", "\n")
    escreva("        DEFESA → ", defesaInimigo," 🛡️                   ", "\n")
    escreva("╚═══════════════════════════════════╝", "\n")
    u.aguarde(5000)
    limpa()
    enquanto (vidaInimigo > 0) {
      escreva("╔════════════════════════════════════════╗\n")
      escreva("   SEU TURNO, ", nomePersonagem, "!        \n")
      escreva("╚════════════════════════════════════════╝\n\n")
      escreva(" ",nomePersonagem, " - ❤️ HP - ", vidaPersonagem, "\n")
      escreva("═════════════════════════════════════════\n")
      escreva(" ",nomeInimigo, " - ❤️ HP  - ", vidaInimigo, "\n\n")
      escreva("O QUE VOCÊ DESEJA FAZER?\n")
      escreva("═════════════════════════\n ")
      escreva("     1 → ATACAR ⚔️      \n")  
      escreva("═════════════════════════\n")
      escreva("ESCOLHA SUA AÇÃO: \n")
      leia(opcaoBatalha)
      limpa()
      se(opcaoBatalha == 1) {
        inteiro danoCausado = ataquePersonagem - defesaInimigo
        vidaInimigo = vidaInimigo - danoCausado
        escreva("💥 VOCÊ ATACA ", nomeInimigo, " CAUSANDO ", danoCausado, " DE DANO! 💥\n")
        u.aguarde(2000)
      }
      senao {
        escreva("❌ - OPÇÃO INVÁLIDA! Você hesita e perde o turno...\n")
        u.aguarde(2000)
      }
      limpa()
      se (vidaInimigo <= 0) {
        escreva(nomeInimigo, " FOI DERROTADO COM SUCESSO 🏆!\n")
        xpPersonagem = xpPersonagem + xpInimigo
        escreva("✨ VOCÊ GANHOU ", xpInimigo, " DE XP ! ✨\n\n✨ XP Total: ", xpPersonagem, " ✨\n")
        u.aguarde(3000)
        nivelDoJogador()
        u.aguarde(4000)
        limpa()
        contadorDeMonstros++
      }
      senao {
      escreva("╔════════════════════════════════════════╗\n")
      escreva("    TURNO DE ", nomeInimigo, "!        \n")
      escreva("╚════════════════════════════════════════╝\n\n")
        u.aguarde(1000)
        inteiro danoSofrido = ataqueInimigo - defesaPersonagem
        escreva("💥 ",nomeInimigo, " ATACA VOCÊ, CAUSANDO ", danoSofrido, " DE DANO! 💥\n")
        vidaPersonagem = vidaPersonagem - danoSofrido
        u.aguarde(2500)
        limpa()
      }
      se(vidaPersonagem<=0){
        fimDeJogo() 
        jogoRodando=falso
        retorne
        
      }
      limpa()
    }
    escreva("Após esse confronto, você caminha por entre a Vila Abandonada...\n")
    u.aguarde(1000)
    escreva("Você resolve entrar em uma casa coberta de musgo\n")
    u.aguarde(1200)
    escreva("O ar é frio, úmido, e algo parece observar você.\n")
    u.aguarde(1900)
    escreva("No centro, uma pequena fonte de água brilha com uma luz verde suave.\n\n")
    u.aguarde(1800)
    cadeia opcaoAguaFonte
    enquanto(opcaoAguaFonte!=1 e opcaoAguaFonte!=2){
      escreva("     ╔══════════════════════════════╗", "\n")
      escreva("     ║      OQUE DESEJA FAZER?      ║", "\n")
      escreva("     ╚══════════════════════════════╝", "\n\n")
      escreva("DIGITE 1 - BEBER A ÁGUA DA FONTE 💧\n")
      escreva("DIGITE 2 - NÃO BEBER A ÁGUA ❌💧\n")
      leia(opcaoAguaFonte)
      limpa()
    }
    se(opcaoAguaFonte==1){
      escreva("Você bebe a água... Ela é surpreendentemente doce e fresca.\n\n")
      escreva("VOCÊ ACABA DE RECUPERAR 100% DA SUA VIDA! ❤️ \n")
      escreva("SUA VIDA ANTES - ", vidaPersonagem, " 💔 \n")
        se(classePersonagem==1){
          vidaPersonagem = 200
        }
        se(classePersonagem==2){
          vidaPersonagem = 250
        }
        se(classePersonagem==3){
          vidaPersonagem = 230  
        }
        escreva("SUA VIDA AGORA - ", vidaPersonagem, " ❤️ \n")
        u.aguarde(6000)
        limpa()
    }
    se(opcaoAguaFonte==2){
      escreva("Você segue seu rumo...\n")
      u.aguarde(1200)
      limpa()
    }
    para(inteiro i = 0; i<5; i++){
      escreva("Silêncio absoluto...\n")
      u.aguarde(450)
      limpa()
    }
    escreva("Você deixa a casa em silêncio e segue por uma trilha estreita até encontrar uma ponte antiga\n")
    u.aguarde(1400)
    escreva("Ao atravessá-la, a Vila Abandonada fica para trás\n")
    u.aguarde(1000)
    escreva("Porém, o ar ainda carrega um estranho presságio...\n")
    u.aguarde(4000)
    limpa()
    
    cadeia teclaTerminarFase2
    enquanto(teclaTerminarFase2!=1 e teclaTerminarFase2!=2){
      escreva(" ╔═══════════════════════════════════════════════════╗", "\n")
      escreva(" ║     PARABÉNS, VOCÊ TERMINOU A SEGUNDA FASE!       ║", "\n")
      escreva(" ╚═══════════════════════════════════════════════════╝", "\n\n")
      u.aguarde(2000)
      escreva("       ╔════════════════════════════════════╗", "\n")
      escreva("       ║     O QUE VOCÊ DESEJA FAZER?       ║", "\n")
      escreva("       ╚════════════════════════════════════╝", "\n\n")
      escreva("1 - VOLTAR PARA A ", regioes[0], " 🌲🌫️🦉🕸️🌑\n")
      escreva("2 - SEGUIR PARA A ", regioes[2], " 🕳️🪨🕸️🗡️☠️\n")
      leia(teclaTerminarFase2)
      limpa()
    }
    se(teclaTerminarFase2==1){
      indiceRegioes=0
    }
    se(teclaTerminarFase2==2){
      indiceRegioes=2
    }
  }
  funcao terceiraFaseJogo(){
    escreva("Você chegou a região: ", regioes[2], " 🕳️🪨🕸️🗡️☠️")
    u.aguarde(3000)
    limpa()
    escreva("Você se aproxima da entrada da caverna.\n")
    u.aguarde(1300)
    escreva("O teto da caverna parece desabar sobre você, e cada passo ecoa como um grito distante.\n")
    u.aguarde(2000)
    escreva("O cheiro de mofo e carne podre mistura-se com o som gotejante da água...")
    u.aguarde(1900)
    escreva(" Ou seria sangue???\n")
    u.aguarde(3000)
    escreva("Cuidado onde pisa. Nem toda pedra está morta.\n")
    u.aguarde(2800)
    limpa()
    escreva("Se decidir continuar, faça isso em silêncio.\n")
    u.aguarde(1300)
    escreva("A caverna ouve.\n")
    u.aguarde(700)
    escreva("E ela tem fome.\n")
    u.aguarde(3200)
    limpa()
    escreva("Uma voz sussurra em sua mente: 👁️‍🗨️\n\n")
    u.aguarde(1800)
    escreva("\"Escolha... mas o preço será seu.\"\n\n")
    u.aguarde(1800)
    escreva("À esquerda, um cheiro de enxofre. 💨\n")
    u.aguarde(1800)
    escreva("À direita, o som de ossos estalando. 🦴\n\n") 
    u.aguarde(1800)  
    cadeia opcaoEscolhidaCaverna
    enquanto(opcaoEscolhidaCaverna!=1 e opcaoEscolhidaCaverna!=2){ 
      escreva("╔════════════════════════════════════╗", "\n")
      escreva("║     O QUE VOCÊ DESEJA FAZER?       ║", "\n")
      escreva("╚════════════════════════════════════╝", "\n\n")
      escreva("1 - ENTRAR NA PASSAGEM DA ESQUERDA ☠️💨\n")
      escreva("2 - ENTRAR NA PASSAGEM DA DIREITA 🦴💥\n")
      leia(opcaoEscolhidaCaverna)
      limpa()
    }
    se(opcaoEscolhidaCaverna==1){
      escreva("VOCÊ PISA EM BRASAS ESCONDIDAS SOB A POEIRA. \n")  
      u.aguarde(1400)
      escreva("A DOR É INSUPORTÁVEL! 🔥\n")
      u.aguarde(1200)
      escreva("VOCÊ PERDE 25 DE VIDA! 💔\n\n")
      u.aguarde(1300)
      escreva("SUA VIDA ANTES - ", vidaPersonagem, " 💔 \n")
      vidaPersonagem = vidaPersonagem - 25
      escreva("SUA VIDA AGORA - ", vidaPersonagem, " ❤️ \n")
      u.aguarde(4000)
      limpa()
    }
    se(opcaoEscolhidaCaverna==2){
      escreva("VOCÊ AVANÇA PELA PASSAGEM ESCURA...\n")
      u.aguarde(3000)
      escreva("VOCÊ TROPEÇA EM ALGO, UM OSSO AINDA MORNO. 🦴\n")
      u.aguarde(2000)
      escreva("UMA PRESENÇA PARECE TOCAR SUA NUCA, MAS NÃO HÁ NADA LÁ.\n")
      u.aguarde(2000)
      escreva("ALGO DENTRO DE VOCÊ MUDA... 👁️‍🗨️\n")
      u.aguarde(3500)
      limpa()
      escreva("❤️ PARABÉNS, VOCÊ ADQUIRIU +10 DE VIDA! ❤️\n\n")
      escreva("SUA VIDA ANTES - ", vidaPersonagem, " ❤️\n")
      vidaPersonagem = vidaPersonagem + 10
      escreva("SUA VIDA AGORA - ", vidaPersonagem, " ❤️\n")
      u.aguarde(4000)
      limpa()
    }
    escreva("Você segue seu caminho...\n")
    u.aguarde(2000)
    escreva("No fundo da caverna, você encontra um altar de pedra com símbolos que brilham em vermelho fraco 🕯️👁️‍🗨️🗿👁️‍🗨️🕯️\n")
    u.aguarde(3000)
    escreva("Três marcas circulares estão gravadas no chão, lacres antigos...\n\n")
    u.aguarde(1900)
    escreva("Uma voz sussurra, vinda de todos os lados:\n\n")
    u.aguarde(1900)
    escreva("📜 \"Quebre os cadeados. Se sobreviver... ME ENFRENTE!\" 📜")
    u.aguarde(4000)
    limpa()
    escreva("⚠️ O PRIMEIRO CADEADO TREME COM UM SOM AGUDO. ⚠️\n\n") //PUZZLE 1 CAVERNA
    u.aguarde(1200)
    escreva("Uma voz ecoa na caverna: \n\n\"Sou dito por muitos, guardado por poucos... e quebro quando mais importa.\"\n\n")
    u.aguarde(1800)
    cadeia respostaPuzzle1
    enquanto(respostaPuzzle1 != 1 e respostaPuzzle1 != 2 e respostaPuzzle1 != 3){
      escreva("╔═════════════════════╗", "\n")
      escreva("║      O QUE É?       ║", "\n")
      escreva("╚═════════════════════╝", "\n\n")
      escreva("1 - SILÊNCIO 🤫\n")
      escreva("2 - SEGREDO 🤐\n")
      escreva("3 - PROMESSA 🤝\n")
      leia(respostaPuzzle1)
      limpa()
    }
    se(respostaPuzzle1==3){
      escreva("✅ RESPOSTA CORRETA! ✅\n")
      u.aguarde(1500)
      escreva("✨ O CADEADO DO SUSSURRO SE PARTE EM CINZAS.\n") 
      u.aguarde(3000)
      limpa()
    }
    senao{
      escreva("❌ VOCÊ OUVE GRITOS INVISÍVEIS DENTRO DA SUA MENTE! -10 DE VIDA 💔\n\n")
      u.aguarde(2800)
      escreva("SUA VIDA ANTES - ", vidaPersonagem, " ❤️\n")
      vidaPersonagem = vidaPersonagem - 10
      escreva("SUA VIDA AGORA - ", vidaPersonagem, " 💔\n")
      u.aguarde(4000)
      limpa()
    }
    escreva("⚠️ O SEGUNDO CADEADO FAZ UM BARULHO ESTRONDECEDOR PELA CAVERNA! ⚠️\n\n")
    u.aguarde(1900)
    escreva("UM ALTAR VIVO RESPIRA DIANTE DE VOCÊ... \n")
    u.aguarde(1900)
    escreva("UMA VOZ INVADE SUA MENTE: 🗯️\n\n")
    u.aguarde(1900)
    escreva("\"SÓ UM DEVE CAIR. O CAMINHO SE ABRIRÁ... OU SANGRARÁ. 🩸\"\n")
    u.aguarde(4000)
    cadeia respostaPuzzle2
    enquanto(respostaPuzzle2 != 1 e respostaPuzzle2 != 2 e respostaPuzzle2 !=3 ){
      escreva("╔═════════════════════════════════════╗", "\n")
      escreva("║    QUEM VOCÊ ESCOLHE SACRIFICAR?    ║", "\n")
      escreva("╚═════════════════════════════════════╝", "\n\n")
      escreva("1 - AQUELE QUE CHORA EM SILÊNCIO. 🤫\n")
      escreva("2 - AQUELE QUE MURMURRA PRECES. 🙏\n")
      escreva("3 - AQUELE QUE NADA FAZ. 😶\n")
      leia(respostaPuzzle2)
      limpa()
    }
    se(respostaPuzzle2==3){
      escreva("✅ RESPOSTA CORRETA! ✅\n")
      u.aguarde(2000)
      escreva("✨ O CADEADO DO SACRIFÍCIO SE ROMPE. O CAMINHO ESTÁ LIVRE...\n")
      u.aguarde(3000)
      limpa()
    }
    senao{
      escreva("VOCÊ SENTE ALGO ARRANHANDO SUA ALMA... 🕯️\n")
      u.aguarde(2000)
      escreva("VOCÊ PERDE 10 DE VIDA! 💔\n\n")
      escreva("SUA VIDA ANTES - ", vidaPersonagem, " ❤️\n")
      vidaPersonagem = vidaPersonagem - 10
      escreva("SUA VIDA AGORA - ", vidaPersonagem, " 💔\n")
      u.aguarde(4000)
      limpa()
    }
    escreva("⚠️ O ÚLTIMO CADEADO ESTÁ ESCONDIDO ATRÁS DE TRÊS PASSAGENS ESCURAS... ⚠️\n\n")
    u.aguarde(2000)
    escreva("Você sente o ar diferente em cada uma:\n\n")
    cadeia respostaPuzzle3
    enquanto(respostaPuzzle3!=1 e respostaPuzzle3!=2 e respostaPuzzle3!=3){
      escreva("╔═════════════════════════════════════╗", "\n")
      escreva("║       QUEM VOCÊ DESEJA SEGUIR?      ║", "\n")
      escreva("╚═════════════════════════════════════╝", "\n\n")
      escreva("1 - UM VENTO GELADO, COMO DE UM TÚMULO RECÉM-ABERTO. ❄️\n")
      escreva("2 - UM CHEIRO DOCE, COMO FRUTAS APODRECIDAS. 🍇\n")
      escreva("3 - NENHUM SOM, NENHUM CHEIRO, APENAS VAZIO. ⚫\n")
      leia(respostaPuzzle3)
      limpa()
    }
    se(respostaPuzzle3==3){
      escreva("✅ RESPOSTA CORRETA! ✅\n")
      u.aguarde(2000)
      escreva("✨ VOCÊ CAMINHA PELO SILÊNCIO ATÉ O SELO FINAL, QUE SE APAGA AOS SEUS PÉS.\n")
      u.aguarde(4000)
      limpa()
    }senao {
      escreva("💀 VOCÊ É ENVOLVIDO POR SOMBRAS E ARRANHÕES INVISÍVEIS. -10 DE VIDA\n\n")
      escreva("SUA VIDA ANTES - ", vidaPersonagem, " ❤️\n")
      vidaPersonagem = vidaPersonagem - 10
      escreva("SUA VIDA AGORA - ", vidaPersonagem, " 💔\n")
      u.aguarde(4000)
      limpa()
    }
    escreva("╔═════════════════════════════════════╗", "\n")
    escreva("  ❤️ VIDA TOTAL APÓS OS PUZZLES - ", vidaPersonagem, "\n")
    escreva("╚═════════════════════════════════════╝", "\n\n")
    u.aguarde(5000)
    limpa()

    escreva("VOCÊ SOBREVIVEU AOS TRÊS PRIMEIROS DESAFIOS...\n")
    u.aguarde(2000)
    escreva("MAS AGORA, CHEGOU O MOMENTO QUE SELARÁ SEU DESTINO! 🔥💀\n")
    u.aguarde(2000)
    escreva("PREPARE-SE PARA ENCARAR O SEU VERDADEIRO TERROR... 👁️🩸👿\n")
    u.aguarde(5000)
    limpa()

    cadeia nomeInimigo = "ESTALADOR DE OSSOS"
    inteiro vidaInimigo = 140
    inteiro ataqueInimigo = 40
    inteiro defesaInimigo = 15
    inteiro xpInimigo = 20
    cadeia opcaoBatalha 
    escreva("╔════════════════════════════════════════════╗\n")
    escreva("           SEU ADVERSÁRIO SERÁ:         ", "\n")
    escreva("          ", nomeInimigo, "                 ", "\n")
    escreva("╚════════════════════════════════════════════╝", "\n")
    u.aguarde(2500)
    limpa()
    escreva("╔═══════════════════════════════════╗", "\n")
    escreva("      ", nomeInimigo, "        ",       "\n")
    escreva("╠═══════════════════════════════════╣", "\n")
    escreva("        VIDA   → ", vidaInimigo," ❤️                ", "\n") 
    escreva("        ATAQUE → ", ataqueInimigo," ⚔️                 ", "\n")
    escreva("        DEFESA → ", defesaInimigo," 🛡️                   ", "\n")
    escreva("╚═══════════════════════════════════╝", "\n")
    u.aguarde(5000)
    limpa()
    enquanto (vidaInimigo > 0) {
      escreva("╔════════════════════════════════════════╗\n")
      escreva("   SEU TURNO, ", nomePersonagem, "!        \n")
      escreva("╚════════════════════════════════════════╝\n\n")
      escreva(" ",nomePersonagem, " - ❤️ HP - ", vidaPersonagem, "\n")
      escreva("═════════════════════════════════════════\n")
      escreva(" ",nomeInimigo, " - ❤️ HP  - ", vidaInimigo, "\n\n")
      escreva("O QUE VOCÊ DESEJA FAZER?\n")
      escreva("═════════════════════════\n ")
      escreva("     1 → ATACAR ⚔️      \n")  
      escreva("═════════════════════════\n")
      escreva("ESCOLHA SUA AÇÃO: \n")
      leia(opcaoBatalha)
      limpa()
      se(opcaoBatalha == 1) {
        inteiro danoCausado = ataquePersonagem - defesaInimigo
        vidaInimigo = vidaInimigo - danoCausado
        escreva("💥 VOCÊ ATACA ", nomeInimigo, " CAUSANDO ", danoCausado, " DE DANO! 💥\n")
        u.aguarde(2000)
      }
      senao {
        escreva("❌ - OPÇÃO INVÁLIDA! Você hesita e perde o turno...\n")
        u.aguarde(2000)
      }
      limpa()
      se (vidaInimigo <= 0) {
        escreva(nomeInimigo, " FOI DERROTADO COM SUCESSO 🏆!\n")
        xpPersonagem = xpPersonagem + xpInimigo
        escreva("✨ VOCÊ GANHOU ", xpInimigo, " DE XP ! ✨\n\n✨ XP Total: ", xpPersonagem, " ✨\n")
        u.aguarde(3000)
        nivelDoJogador()
        u.aguarde(4000)
        limpa()
        contadorDeMonstros++
      }
      senao {
      escreva("╔════════════════════════════════════════╗\n")
      escreva("    TURNO DE ", nomeInimigo, "!        \n")
      escreva("╚════════════════════════════════════════╝\n\n")
        u.aguarde(1000)
        inteiro danoSofrido = ataqueInimigo - defesaPersonagem
        escreva("💥 ",nomeInimigo, " ATACA VOCÊ, CAUSANDO ", danoSofrido, " DE DANO! 💥\n")
        vidaPersonagem = vidaPersonagem - danoSofrido
        u.aguarde(2500)
        limpa()
      }
      se(vidaPersonagem<=0){
        fimDeJogo() 
        retorne
        jogoRodando=falso
      }
      limpa()
    }
    escreva("Após essa batalha, você segue seu rumo...\n")
    u.aguarde(2800)
    limpa()
    escreva("APÓS DERROTAR O TEMIDO INIMIGO, SEU CORPO CAI AO CHÃO...\n\n")
    u.aguarde(4000)
    escreva("AS UM CÍRCULO RÚNICO COMEÇA A BRILHAR SOB ELE. UMA ESCOLHA SURGE DIANTE DE VOCÊ: \n\n")
    cadeia respostaSangueMorto
    enquanto(respostaSangueMorto!= 1 e respostaSangueMorto !=2){
      escreva("╔══════════════════════════════════════════════════════════════════╗", "\n")
      escreva("║  ABSORVER O SANGUE DO VENCIDO PARA RECUPERAR 100% DA SUA VIDA?   ║", "\n")
      escreva("╚══════════════════════════════════════════════════════════════════╝", "\n\n")
      escreva("DIGITE 1 - ABSORVER O SANGUE 🩸\n")
      escreva("DIGITE 2 - NÃO ABSORVER O SANGUE 🩸❌\n")
      leia(respostaSangueMorto)
      limpa()
    }
    se(respostaSangueMorto==1){
      escreva("VOCÊ SE CURVA SOBRE O CORPO DO INIMIGO... 🩸\n\n")
      escreva(" SEU HP ANTES - ", vidaPersonagem , " ❤️\n")
      se(classePersonagem==1){
        vidaPersonagem = 200
        escreva("SEU HP ATUAL - ", vidaPersonagem, "! ❤️\n")
      }
      se(classePersonagem==2){
        vidaPersonagem = 250
        escreva("SEU HP SE ATUAL - ", vidaPersonagem, "! ❤️\n")
      }
      se(classePersonagem==3){
        vidaPersonagem = 230
        escreva("SEU HP SE ATUAL - ", vidaPersonagem, "! ❤️\n")
      }
      u.aguarde(5000) 
    }
    se(respostaSangueMorto==1){
      escreva("VOCÊ SE AFASTA DO CORPO DO INIMIGO, RECUSANDO A TENTAÇÃO... \n")
      u.aguarde(1300) 
      escreva("O SANGUE ESCORRE NO CHÃO 🩸☠️\n") 
      u.aguarde(1300) 
      escreva("VOCÊ SEGUE EM FRENTE, FERIDO... MAS COM SUA ALMA INTACTA ⚔️\n") 
      u.aguarde(1600) 
      escreva("VIDA NÃO RECUPERADA. O DESAFIO CONTINUA.\n\n")
      u.aguarde(1600) 
      escreva(" SEU HP ATUAL - ", vidaPersonagem , " ❤️\n")
      u.aguarde(5000)

    }
    limpa()
    escreva("Você segue seu rumo...")
    u.aguarde(3000)
    limpa()
    escreva("VOCÊ CAMINHA PELA ESCURIDÃO DA CAVERNA, CADA PASSO ECOANDO COMO UM SUSSURRO FÚNEBRE... 🌑\n")
    u.aguarde(2000)
    escreva("DE REPENTE, UM FRIO PERCORRE SUA ESPINHA.\n")
    u.aguarde(1800)
    escreva("VOCÊ SENTE UMA DOR AGUDA NO PESCOÇO \n")
    u.aguarde(1800)
    escreva("ALGO MORDENDO, PERFURANDO SUA PELE. ☠️💀\n")
    u.aguarde(1800)
    escreva("UMA ARANHA GIGANTESCA, ESCONDIDA NAS SOMBRAS, INJETOU SEU VENENO SILENCIOSO 🕷️🩸\n\n")
    u.aguarde(1800)

    escreva("VOCÊ PERDE -5 DE HP ❤️ ➝ 💔\n\n")
    u.aguarde(1800)
    escreva("SEU HP ANTES", vidaPersonagem, " ❤️\n")
    vidaPersonagem = vidaPersonagem - 5
    escreva("SEU HP AGORA", vidaPersonagem, " 💔\n")
    u.aguarde(4000)
    limpa()

    cadeia nomeInimigo = "DONA TEIA DA SILVA"
    inteiro vidaInimigo = 1
    inteiro ataqueInimigo = 1
    inteiro defesaInimigo = 1
    inteiro xpInimigo = 3
    cadeia opcaoBatalha 
    escreva("╔════════════════════════════════════════════╗\n")
    escreva("           SEU ADVERSÁRIO SERÁ:         ", "\n")
    escreva("          ", nomeInimigo, "                 ", "\n")
    escreva("╚════════════════════════════════════════════╝", "\n")
    u.aguarde(2500)
    limpa()
    escreva("╔═══════════════════════════════════╗", "\n")
    escreva("      ", nomeInimigo, "        ",       "\n")
    escreva("╠═══════════════════════════════════╣", "\n")
    escreva("        VIDA   → ", vidaInimigo," ❤️                ", "\n") 
    escreva("        ATAQUE → ", ataqueInimigo," ⚔️                 ", "\n")
    escreva("        DEFESA → ", defesaInimigo," 🛡️                   ", "\n")
    escreva("╚═══════════════════════════════════╝", "\n")
    u.aguarde(5000)
    limpa()
    enquanto (vidaInimigo > 0) {
      escreva("╔════════════════════════════════════════╗\n")
      escreva("   SEU TURNO, ", nomePersonagem, "!        \n")
      escreva("╚════════════════════════════════════════╝\n\n")
      escreva(" ",nomePersonagem, " - ❤️ HP - ", vidaPersonagem, "\n")
      escreva("═════════════════════════════════════════\n")
      escreva(" ",nomeInimigo, " - ❤️ HP  - ", vidaInimigo, "\n\n")
      escreva("O QUE VOCÊ DESEJA FAZER?\n")
      escreva("═════════════════════════\n ")
      escreva("     1 → ATACAR ⚔️      \n")  
      escreva("═════════════════════════\n")
      escreva("ESCOLHA SUA AÇÃO: \n")
      leia(opcaoBatalha)
      limpa()
      se(opcaoBatalha == 1) {
        inteiro danoCausado = ataquePersonagem - defesaInimigo
        vidaInimigo = vidaInimigo - danoCausado
        escreva("💥 VOCÊ ATACA ", nomeInimigo, " CAUSANDO ", danoCausado, " DE DANO! 💥\n")
        u.aguarde(2000)
      }
      senao {
        escreva("❌ - OPÇÃO INVÁLIDA! Você hesita e perde o turno...\n")
        u.aguarde(2000)
      }
      limpa()
      se (vidaInimigo <= 0) {
        escreva(nomeInimigo, " FOI DERROTADO COM SUCESSO 🏆!\n")
        xpPersonagem = xpPersonagem + xpInimigo
        escreva("✨ VOCÊ GANHOU ", xpInimigo, " DE XP ! ✨\n\n✨ XP Total: ", xpPersonagem, " ✨\n")
        u.aguarde(3000)
        nivelDoJogador()
        u.aguarde(4000)
        limpa()
        contadorDeMonstros++
      }
      senao {
      escreva("╔════════════════════════════════════════╗\n")
      escreva("    TURNO DE ", nomeInimigo, "!        \n")
      escreva("╚════════════════════════════════════════╝\n\n")
        u.aguarde(1000)
        inteiro danoSofrido = ataqueInimigo - defesaPersonagem
        escreva("💥 ",nomeInimigo, " ATACA VOCÊ, CAUSANDO ", danoSofrido, " DE DANO! 💥\n")
        vidaPersonagem = vidaPersonagem - danoSofrido
        u.aguarde(2500)
        limpa()
      }
      se(vidaPersonagem<=0){ 
        fimDeJogo()
        jogoRodando=falso
        retorne
      }
      limpa()
    }
    escreva("VOCÊ DÁ UM PISÃO SECO NA ARANHA 🦶🕷️\n")
    u.aguarde(1800)
    escreva("UM ESTALO SURDO... GOSMA ESCURA SE ESPALHA PELO CHÃO 💥🩸\n\n")
    u.aguarde(5000)
    limpa()
    escreva("UMA VOZ SUSSURRA DENTRO DA SUA MENTE... 👁️🖤\n")
    u.aguarde(1800)
    escreva("UM DESEJO OBSCURO SURGE: BEBER A GOSMA ESCURA 🩸🕷️\n")
    u.aguarde(1800)
    escreva("TALVEZ... ISSO CURE SUAS FERIDAS. OU PIOR.\n\n")
    u.aguarde(1800)
    cadeia respostaAranhaGosma
    enquanto(respostaAranhaGosma!=1 e respostaAranhaGosma!=2){
      escreva("╔════════════════════════╗", "\n")
      escreva("║  O QUE DESEJA FAZER?   ║", "\n")
      escreva("╚════════════════════════╝", "\n\n")
      escreva("DIGITE 1 - BEBER A GOSMA ESCURA 🩸🕷️\n")
      escreva("DIGITE 2 - NÃO BEBER A GOSMA ESCURA ❌🩸🕷️\n")
      leia(respostaAranhaGosma)
      limpa()
    }
    se(respostaAranhaGosma==1){
      escreva("VOCÊ LEVA A GOSMA ESCURA À BOCA... O SABOR É AMARGO, PODRE. 🩸🕷️\n")
      u.aguarde(2000)
      escreva("SUAS FERIDAS SE FECHAM. SUA VIDA É 100% RESTAURADA! 💀🔥\n\n")
      u.aguarde(1800)
      escreva("SEU HP ANTES - ", vidaPersonagem, " 💔\n")
      se(classePersonagem==1){
        vidaPersonagem = 200
      }
      se(classePersonagem==2){
        vidaPersonagem = 250
      }
      se(classePersonagem==3){
        vidaPersonagem = 230  
      }
      escreva("SUA HP ATUAL - ", vidaPersonagem, " ❤️ \n")
      u.aguarde(6000)
      limpa()
    }
    escreva("VOCÊ CONTINUA CAMINHANDO... 🕸️\n")
    u.aguarde(1800)
    escreva("UMA LUZ SURGE AO LONGE 🌕\n")
    u.aguarde(1800)
    escreva("A SAÍDA DA CAVERNA ESTÁ PRÓXIMA.\n")
    u.aguarde(2800)
    limpa()

    cadeia teclaTerminarFase3
    enquanto(teclaTerminarFase3!=1 e teclaTerminarFase3!=2){
      escreva(" ╔═══════════════════════════════════════════════════╗", "\n")
      escreva(" ║     PARABÉNS, VOCÊ TERMINOU A TERCEIRA FASE!      ║", "\n")
      escreva(" ╚═══════════════════════════════════════════════════╝", "\n\n")
      u.aguarde(2000)
      escreva("       ╔════════════════════════════════════╗", "\n")
      escreva("       ║     O QUE VOCÊ DESEJA FAZER?       ║", "\n")
      escreva("       ╚════════════════════════════════════╝", "\n\n")
      escreva("1 - VOLTAR PARA A ", regioes[1], " 🏚️🪦🌫️🕯️👻\n")
      escreva("2 - SEGUIR PARA A ", regioes[3], " 🌲🌫️🐸💧🕸️\n")
      leia(teclaTerminarFase3)
      limpa()
    }
    se(teclaTerminarFase3==1){
      indiceRegioes=1
    }
    se(teclaTerminarFase3==2){
      indiceRegioes=3
    }
  }
  funcao quartaFaseJogo(){
    escreva("Você chegou a região: ", regioes[3], " 🌲🌫️🐸💧🕸️")
    u.aguarde(3000)
    limpa()
    escreva("A névoa cobre cadáveres que ainda sussurram.\n")
    u.aguarde(1800)
    escreva("Criaturas rastejam entre os galhos, famintas por carne viva.\n")
    u.aguarde(1800)
    escreva("No Pântano dos Lamentos, até a esperança se afoga.\n")
    u.aguarde(2500)
    escreva("A escuridão aqui tem olhos...")
    u.aguarde(2000)
    escreva(" e eles estão famintos.\n")
    u.aguarde(1800)
    escreva("Passos errados não ecoam, eles somem.\n")
    u.aguarde(1800)
    limpa()
    escreva("Você está diante do Pântano dos Lamentos.\n")
    u.aguarde(2500)
    escreva("À sua frente, um riacho negro e lamacento corta a paisagem.\n")
    u.aguarde(2000)
    escreva("A névoa espessa abraça tudo, e um silêncio opressor pesa no ar.\n")
    u.aguarde(2500)
    escreva("Você precisa atravessar, mas o caminho não é claro...\n")
    u.aguarde(2300)
    escreva("Pode tentar, a margem esquerda ou a da direita.\n\n")
    u.aguarde(4000)

    cadeia opcaoEscolhidaPantano
    enquanto(opcaoEscolhidaPantano!=1 e opcaoEscolhidaPantano!=2){
      escreva("╔════════════════════════════════════╗", "\n")
      escreva("║     O QUE VOCÊ DESEJA FAZER?       ║", "\n")
      escreva("╚════════════════════════════════════╝", "\n\n")
      escreva("DIGITE 1 - SEGUIR O CAMINHO DA ESQUERDA ◀️\n")
      escreva("DIGITE 2 - SEGUIR O CAMINHO DA DIREITA ▶️\n")
      leia(opcaoEscolhidaPantano)
      limpa()
    }
    se(opcaoEscolhidaPantano==1){
      escreva("Você escolhe a trilha pela margem esquerda... 🌿◀️\n")
      u.aguarde(2000)
      escreva("A névoa fica mais densa. Seus pés afundam na lama espessa... 🟫💧\n")
      u.aguarde(2500)
      escreva("Algo se move sob a água. Você sente uma mordida! 🐍🩸\n")
      u.aguarde(2500)
      escreva("Espinhos ocultos rasgam sua pele enquanto você força passagem... 🌑🕸️\n")
      u.aguarde(2500)
      limpa()
      escreva("⚠️ VOCÊ SOFREU 15 DE DANO! ⚠️\n\n")
      escreva("SUA VIDA ANTES - ", vidaPersonagem, " ❤️\n")
      vidaPersonagem = vidaPersonagem - 15
      escreva("SUA VIDA ATUAL - ", vidaPersonagem, " 💔\n")
      u.aguarde(4000)
    }
    se(opcaoEscolhidaPantano==2){
      escreva("Você segue pela margem direita... 🌿▶️\n")
      u.aguarde(2000)
      escreva("O nevoeiro parece observar cada passo seu... 🌫️👁️\n")
      u.aguarde(2000)
      escreva("A lama aqui é mais firme. Nenhuma criatura se aproxima.\n")
      u.aguarde(2000)
      escreva("Mesmo assim, o silêncio pesa como mil vozes caladas. 🤫⚰️\n")
      u.aguarde(2500)
      escreva("Você atravessa o trecho... sem ferimentos. 🕯️\n")
      u.aguarde(2000)
    }
    limpa()

    escreva("A névoa fica mais densa... você mal vê os próprios pés. 🌫️🦶\n")
    u.aguarde(1800)
    escreva("Uma voz doce e distante ecoa pelo pântano:\n")
    u.aguarde(1800)
    escreva("\"Volte... antes que ele acorde...\"\n")
    u.aguarde(2000)
    escreva("Mas não há ninguém.\n")
    u.aguarde(1500)
    escreva("A névoa engole tudo ao redor... seu corpo fica frio. ❄️\n")
    u.aguarde(2000)
    escreva("A voz retorna, mais próxima:\n\n")
    u.aguarde(1800)
    escreva("\'Você já esteve aqui antes... lembra de mim?\'\n\n")
    u.aguarde(2500)
    u.aguarde(2000)
    escreva("Você ouve algo respirando bem atrás de você...\n\n")
    u.aguarde(2500)
    cadeia opcaoAssombracao
    enquanto(opcaoAssombracao!=1 e opcaoAssombracao!=2){
      escreva("╔════════════════════════════════════════════════════════╗", "\n")
      escreva("║    VOCÊ DESEJA VIRAR PRA TRÁS OU CONTINUAR ANDANDO?    ║", "\n")
      escreva("╚════════════════════════════════════════════════════════╝", "\n\n")
      escreva("DIGITE 1 - VIRAR 🔁\n")
      escreva("DIGITE 2 - CONTINUAR ⏩\n")
      leia(opcaoAssombracao)
      limpa()
    }
    se(opcaoAssombracao==1){
      escreva("Você se vira lentamente...\n")
      u.aguarde(2000)
      escreva("Nada. Só névoa. E silêncio.\n")
      u.aguarde(2000)
      escreva("Mas no chão, onde antes havia lama, está uma máscara antiga, sorrindo. 🎭\n")
      u.aguarde(2500)
      escreva("Você a recolhe, sentindo-se mais... resistente.\n\n")
      u.aguarde(2000)
      escreva("🛡️ PARABÉNS, VOCÊ ADQUIRIU +3 DE DEFESA! 🛡️\n\n")
      u.aguarde(2000)
      escreva("SUA DEFESA ANTES - ", defesaPersonagem, "! 🛡️\n")
      defesaPersonagem = defesaPersonagem + 3
      escreva("SUA DEFESA SE TORNOU - ", defesaPersonagem, "! 🛡️\n")
      u.aguarde(4000)              
    }
    se(opcaoAssombracao==2){
      escreva("Você ignora a presença e segue firme.\n")
      u.aguarde(2000)
      escreva("Algo sussurra um elogio em sua mente...\n")
      u.aguarde(2000)
      escreva("Você sente uma centelha de poder crescendo em suas veias. \n\n")
      u.aguarde(2000)
      escreva("⚔️ PARABÉNS, VOCÊ ADQUIRIU +3 DE ATAQUE! ⚔️\n\n")
      u.aguarde(2000)
      escreva("SUA ATAQUE ANTES - ", ataquePersonagem, "! ⚔️\n")
      ataquePersonagem = ataquePersonagem + 3
      escreva("SEU ATAQUE SE TORNOU ", ataquePersonagem, "! ⚔️\n")
      u.aguarde(4000)
    }
    limpa()
    escreva("Enquanto avança, sussurros ecoam pela névoa... 🕸️🌫️\n\n")
    u.aguarde(2500)

    escreva("\"O caminho seguro é pela esquerda.\"\n")
    u.aguarde(1500)
    escreva("\"A direita leva a destruição.\"\n")
    u.aguarde(1500)
    escreva("\"Mas cuidado, a verdade está na margem oposta.\"\n")
    u.aguarde(4000)

    limpa()
    escreva("Um sussurro final corta o silêncio:\n\n")
    escreva("\"Ignore o que você ouviu e escolha o caminho certo para sobreviver.\"\n\n")
    u.aguarde(3000)
    cadeia opcaoEscolhidaDirecao
    enquanto(opcaoEscolhidaDirecao!= 1 e opcaoEscolhidaDirecao!=2){
      escreva("╔══════════════════════════════════════════╗", "\n")
      escreva("║    QUAL CAMINHO VOCÊ DESEJA ESCOLHER?    ║", "\n")
      escreva("╚══════════════════════════════════════════╝", "\n\n")
      escreva("DIGITE 1 - SEGUIR O CAMINHO DA ESQUERDA\n")
      escreva("DIGITE 2 - SEGUIR O CAMINHO DA DIREITA\n")
      leia(opcaoEscolhidaDirecao)
      limpa()
    }
    se(opcaoEscolhidaDirecao==1){
      escreva("Você avança pela margem esquerda, ignorando o frio na espinha... ❌🌫️\n")
      u.aguarde(2000)
      escreva("A lama sobe até a cintura, algo agarra sua perna por baixo... 💀\n")
      u.aguarde(2000)
      escreva("Você se solta, mas perde energia tentando escapar do atoleiro.\n\n")
      u.aguarde(2000)
      escreva("🩸  VOCÊ PERDEU -15 DE VIDA! 🩸 \n\n")
      u.aguarde(2000)
      escreva("SUA VIDA ANTES - ", vidaPersonagem, "! 🩸 \n")
      vidaPersonagem = vidaPersonagem - 15
      escreva("SUA VIDA ATUAL - ", vidaPersonagem, "! 🩸 \n")
      u.aguarde(4000)

    }
    se(opcaoEscolhidaDirecao==2){
      escreva("Você segue pela margem direita, mesmo sem confiar nos sussurros... ✅🌫️\n")
      u.aguarde(2000)
      escreva("A trilha é instável, mas você evita as armadilhas ocultas no brejo.\n")
      u.aguarde(2000)
      escreva("Uma energia estranha envolve seu corpo, como se o pântano reconhecesse sua decisão...\n\n")
      u.aguarde(2000)
      escreva("🩸 PARABÉNS, VOCÊ ADQUIRIU +5 DE VIDA! 🩸\n\n")
      u.aguarde(2000)
      escreva("SUA VIDA ANTES - ", vidaPersonagem, "! 🩸\n")
      vidaPersonagem = vidaPersonagem + 3
      escreva("SEU VIDA ATUAL - ", vidaPersonagem, "! 🩸⚔️\n")
      u.aguarde(4000)
    }
    limpa()
    escreva("As vozes que antes sussurravam agora gritam dentro da sua mente. 🧠🩸\n")
    u.aguarde(2800)
    escreva("Da água turva, algo se ergue. Não tem olhos. Apenas... bocas.\n")
    u.aguarde(2800)
    escreva("Bocas que repetem as suas escolhas... os seus erros.\n")
    u.aguarde(2500)

    cadeia nomeInimigo = "NEVOEIRO SOMBRIO"
    inteiro vidaInimigo = 130
    inteiro ataqueInimigo = 38
    inteiro defesaInimigo = 15
    inteiro xpInimigo = 25
    cadeia opcaoBatalha 
    escreva("╔════════════════════════════════════════════╗\n")
    escreva("           SEU ADVERSÁRIO SERÁ:         ", "\n")
    escreva("          ", nomeInimigo, "                 ", "\n")
    escreva("╚════════════════════════════════════════════╝", "\n")
    u.aguarde(2500)
    limpa()
    escreva("╔═══════════════════════════════════╗", "\n")
    escreva("      ", nomeInimigo, "        ",       "\n")
    escreva("╠═══════════════════════════════════╣", "\n")
    escreva("        VIDA   → ", vidaInimigo," ❤️                ", "\n") 
    escreva("        ATAQUE → ", ataqueInimigo," ⚔️                 ", "\n")
    escreva("        DEFESA → ", defesaInimigo," 🛡️                   ", "\n")
    escreva("╚═══════════════════════════════════╝", "\n")
    u.aguarde(5000)
    limpa()
    enquanto(vidaInimigo > 0){
      escreva("╔════════════════════════════════════════╗\n")
      escreva("   SEU TURNO, ", nomePersonagem, "!        \n")
      escreva("╚════════════════════════════════════════╝\n\n")
      escreva(" ",nomePersonagem, " - ❤️ HP - ", vidaPersonagem, "\n")
      escreva("═════════════════════════════════════════\n")
      escreva(" ",nomeInimigo, " - ❤️ HP  - ", vidaInimigo, "\n\n")
      escreva("O QUE VOCÊ DESEJA FAZER?\n")
      escreva("═════════════════════════\n ")
      escreva("     1 → ATACAR ⚔️      \n")  
      escreva("═════════════════════════\n")
      escreva("ESCOLHA SUA AÇÃO: \n")
      leia(opcaoBatalha)
      limpa()
      se(opcaoBatalha == 1) {
        inteiro danoCausado = ataquePersonagem - defesaInimigo
        vidaInimigo = vidaInimigo - danoCausado
        escreva("💥 VOCÊ ATACA ", nomeInimigo, " CAUSANDO ", danoCausado, " DE DANO! 💥\n")
        u.aguarde(2000)
      }
      senao {
        escreva("❌ - OPÇÃO INVÁLIDA! Você hesita e perde o turno...\n")
        u.aguarde(2000)
      }
      limpa()
      se (vidaInimigo <= 0) {
        escreva(nomeInimigo, " FOI DERROTADO COM SUCESSO 🏆!\n")
        xpPersonagem = xpPersonagem + xpInimigo
        escreva("✨ VOCÊ GANHOU ", xpInimigo, " DE XP ! ✨\n\n✨ XP Total: ", xpPersonagem, " ✨\n")
        u.aguarde(3000)
        nivelDoJogador()
        u.aguarde(4000)
        limpa()
        contadorDeMonstros++
      }
      senao {
      escreva("╔════════════════════════════════════════╗\n")
      escreva("    TURNO DE ", nomeInimigo, "!        \n")
      escreva("╚════════════════════════════════════════╝\n\n")
        u.aguarde(1000)
        inteiro danoSofrido = ataqueInimigo - defesaPersonagem
        escreva("💥 ",nomeInimigo, " ATACA VOCÊ, CAUSANDO ", danoSofrido, " DE DANO! 💥\n")
        vidaPersonagem = vidaPersonagem - danoSofrido
        u.aguarde(2500)
        limpa()
      }
      se(vidaPersonagem<=0){ 
        fimDeJogo()
        jogoRodando=falso
        retorne
      }
    }
    escreva("Você caminha entre os destroços da batalha, o sangue ainda quente no chão encharcado. 🌫️\n")
    u.aguarde(2000)
    escreva("À frente, a névoa se abre lentamente, revelando um pequeno espelho de água.\n")
    u.aguarde(2200)
    escreva("Msas esa água não reflete o agora...\n")
    u.aguarde(1800)
    escreva("Ela mostra você... como era, antes de entrar no pântano.\n")
    u.aguarde(2500)
    escreva(" Uma voz sussurra atrás de você: 🌑\n\n")
    escreva("“Beba… e esqueça…”\n\n")
    u.aguarde(2000)
    cadeia opcaoEscolhidaAgua
    enquanto(opcaoEscolhidaAgua!=1 e opcaoEscolhidaAgua!=2){
      escreva("╔════════════════════════════════╗", "\n")
      escreva("║    O QUE VOCÊ DESEJA FAZER?    ║", "\n")
      escreva("╚════════════════════════════════╝", "\n\n")
      escreva("DIGITE 1 - BEBER A ÁGUA MORTA 💧\n")
      escreva("DIGITE 2 - PARA NÃO BEBER A ÁGUA MORTA ❌💧\n")
      leia(opcaoEscolhidaAgua)
      limpa()
    }
    se(opcaoEscolhidaAgua==1){
      escreva("Um reflexo distorcido se forma diante de você, quase como se a água tivesse vida própria. 🌊\n")
      u.aguarde(2200)
      escreva("Você se inclina para beber, a água fria tocando seus lábios. 💧\n")
      u.aguarde(2000)
      escreva("Uma sensação de alívio invade seu corpo. Sua mente, antes turva e cheia de lembranças dolorosas, se esvazia. 😌\n\n")
      u.aguarde(2500)
      escreva("VOCÊ ADQUIRIU 100% DA SUA VIDA NOVAMENTE! ❤️\n\n")
      se(classePersonagem==1){
        vidaPersonagem = 200
        escreva("SEU HP SE TORNOU ", vidaPersonagem, " NOVAMENTE! ❤️\n")
      }
      se(classePersonagem==2){
        vidaPersonagem = 250
        escreva("SEU HP SE TORNOU ", vidaPersonagem, " NOVAMENTE! ❤️\n")
      }
      se(classePersonagem==3){
        vidaPersonagem = 230
        escreva("SEU HP SE TORNOU ", vidaPersonagem, " NOVAMENTE! ❤️\n")
      }
    }
    se(opcaoEscolhidaAgua==2){
       escreva("Você se afasta da água, a voz ecoando na sua mente.\n")
        u.aguarde(1800)
        escreva("O pântano parece ainda mais denso, mas você segue em frente, sem olhar para trás. 🌫️\n")
    }
    u.aguarde(3000)
    limpa()
    escreva("Você desce.\n")
    u.aguarde(1200)
    escreva("O ar fica mais seco... mas há algo errado com o tempo aqui. ⏳\n")
    u.aguarde(2000)
    escreva("Relógios quebrados flutuam no ar. A luz vem de tochas apagadas que... queimam ao contrário? ⏰🔥\n")
    u.aguarde(2500)
    escreva("Você chegou à Torre Invertida. Um lugar fora do tempo.\n")
    u.aguarde(2000)
    limpa()
    escreva("Quatro tochas, uma em cada ponto cardeal, esperam por sua decisão. 🕯️🕯️🕯️🕯️\n")
    u.aguarde(2000)
    escreva("Uma voz ecoa nas paredes da torre:\n\n\"A ordem da chama é o reflexo do que foi perdido...\"\n\n")
    u.aguarde(3000) 
    cadeia tocha1 
    cadeia tocha2 
    cadeia tocha3 
    cadeia tocha4 

    escreva("No centro da sala, quatro tochas se erguem em pedestais antigos. 🔥\n")
    u.aguarde(2000)
    escreva("Você sente que há uma ordem correta para acendê-las... 🧩\n")
    u.aguarde(2000)
    escreva("Caso erre, o enigma se reinicia. 🔄\n\n")
    u.aguarde(4000)
    limpa()

    enquanto(tocha1 != "3" ou tocha2 != "1" ou tocha3 != "2" ou tocha4 != "4"){ //tocha 1
      tocha1 = "0"
      tocha2 = "0"
      tocha3 = "0"
      tocha4 = "0"
      escreva("╔══════════════════════╗", "\n")
      escreva("║    TOCHA NÚMERO 1    ║", "\n")
      escreva("╚══════════════════════╝", "\n\n")
      escreva("VOCÊ DESEJA INSERIR A TOCHA NÚMERO 1 EM QUAL POSIÇÃO? 🕯️\n")
      escreva("DIGITE 1 - POSIÇÃO 1\n")
      escreva("DIGITE 2 - POSIÇÃO 2\n")
      escreva("DIGITE 3 - POSIÇÃO 3\n")
      escreva("DIGITE 4 - POSIÇÃO 4\n")
      leia(tocha1)
      limpa()
      se(tocha1 != 3){
        escreva("╔═══════════════════════════════════╗", "\n")
        escreva("║ OPÇÃO ERRADA, REINICIANDO ENIGMA! ║", "\n")
        escreva("╚═══════════════════════════════════╝", "\n\n") 
        u.aguarde(2000)
        limpa()
      }
      se(tocha1 == 3){
        escreva("✅ OPÇÃO CORRETA! ✅\n\n") // botar emojo
        escreva("╔═══════════════════════════╗", "\n")
        escreva("║ ORDEM ATUAL DAS POSIÇÕES: ║", "\n")
        escreva("╚═══════════════════════════╝", "\n\n")
        escreva("TOCHA 1 - POSIÇÃO ", tocha1, "! 🔥\n")
        escreva("TOCHA 2 - POSIÇÃO ???\n")
        escreva("TOCHA 3 - POSIÇÃO ???\n")
        escreva("TOCHA 4 - POSIÇÃO ???\n")
        u.aguarde(2000)
        limpa()
        escreva("╔══════════════════════╗", "\n")
        escreva("║    TOCHA NÚMERO 2    ║", "\n")
        escreva("╚══════════════════════╝", "\n\n")
        escreva("VOCÊ DESEJA INSERIR A TOCHA NÚMERO 2 EM QUAL POSIÇÃO? 🕯️\n")
        escreva("DIGITE 1 - POSIÇÃO 1\n")
        escreva("DIGITE 2 - POSIÇÃO 2\n")
        escreva("DIGITE 3 - POSIÇÃO 3\n")
        escreva("DIGITE 4 - POSIÇÃO 4\n")
        leia(tocha2)
        limpa()
        se(tocha2 != 1){
          escreva("╔═══════════════════════════════════╗", "\n")
          escreva("║ OPÇÃO ERRADA, REINICIANDO ENIGMA! ║", "\n")
          escreva("╚═══════════════════════════════════╝", "\n\n") 
          u.aguarde(2000)
          limpa()
        }
        se(tocha2 == 1){
          escreva("✅ OPÇÃO CORRETA! ✅\n\n") // botar emojo
          escreva("╔═══════════════════════════╗", "\n")
          escreva("║ ORDEM ATUAL DAS POSIÇÕES: ║", "\n")
          escreva("╚═══════════════════════════╝", "\n\n")
          escreva("TOCHA 1 - POSIÇÃO " , tocha1, "! 🔥\n")
          escreva("TOCHA 2 - POSIÇÃO " , tocha2, "! 🔥\n")
          escreva("TOCHA 3 - POSIÇÃO ???\n")
          escreva("TOCHA 4 - POSIÇÃO ???\n")
          u.aguarde(3000)
          limpa()
          escreva("╔══════════════════════╗", "\n")
          escreva("║    TOCHA NÚMERO 3    ║", "\n")
          escreva("╚══════════════════════╝", "\n\n")
          escreva("VOCÊ DESEJA INSERIR A TOCHA NÚMERO 3 EM QUAL POSIÇÃO? 🕯️\n")
          escreva("DIGITE 1 - POSIÇÃO 1\n")
          escreva("DIGITE 2 - POSIÇÃO 2\n")
          escreva("DIGITE 3 - POSIÇÃO 3\n")
          escreva("DIGITE 4 - POSIÇÃO 4\n")
          leia(tocha3)
          limpa()
          se(tocha3 != 2){
            escreva("╔═══════════════════════════════════╗", "\n")
            escreva("║ OPÇÃO ERRADA, REINICIANDO ENIGMA! ║", "\n")
            escreva("╚═══════════════════════════════════╝", "\n\n") 
            u.aguarde(2000)
            limpa()
          }
          se(tocha3 == 2){
            escreva("✅ OPÇÃO CORRETA! ✅\n\n")
            escreva("╔═══════════════════════════╗", "\n")
            escreva("║ ORDEM ATUAL DAS POSIÇÕES: ║", "\n")
            escreva("╚═══════════════════════════╝", "\n\n")
            escreva("TOCHA 1 - POSIÇÃO ", tocha1, "! 🔥\n")
            escreva("TOCHA 2 - POSIÇÃO ", tocha2, "! 🔥\n")
            escreva("TOCHA 3 - POSIÇÃO ", tocha3, "! 🔥\n")
            escreva("TOCHA 4 - POSIÇÃO ???\n")
            u.aguarde(2000)
            limpa()
            escreva("╔══════════════════════╗", "\n")
            escreva("║    TOCHA NÚMERO 4    ║", "\n")
            escreva("╚══════════════════════╝", "\n\n")
            escreva("VOCÊ DESEJA INSERIR A TOCHA NÚMERO 4 EM QUAL POSIÇÃO? 🕯️\n")
            escreva("DIGITE 1 - POSIÇÃO 1\n")
            escreva("DIGITE 2 - POSIÇÃO 2\n")
            escreva("DIGITE 3 - POSIÇÃO 3\n")
            escreva("DIGITE 4 - POSIÇÃO 4\n")
            leia(tocha4)
            limpa()
            se(tocha4 != 4){
              escreva("╔═══════════════════════════════════╗", "\n")
              escreva("║ OPÇÃO ERRADA, REINICIANDO ENIGMA! ║", "\n")
              escreva("╚═══════════════════════════════════╝", "\n\n") 
              u.aguarde(2000)
              limpa()
            }
            se(tocha4 == 4){
              escreva("✅OPÇÃO CORRETA! ✅\n\n") 
              escreva("╔═══════════════════════════╗", "\n")
              escreva("║ ORDEM ATUAL DAS POSIÇÕES: ║", "\n")
              escreva("╚═══════════════════════════╝", "\n\n")
              escreva("TOCHA 1 - POSIÇÃO ", tocha1, "! 🔥\n")
              escreva("TOCHA 2 - POSIÇÃO ", tocha2, "! 🔥\n")
              escreva("TOCHA 3 - POSIÇÃO ", tocha3, "! 🔥\n")
              escreva("TOCHA 4 - POSIÇÃO ", tocha4, "! 🔥\n")
              u.aguarde(3000)
              limpa()
            }
          }
        }
      }
    } 
    escreva("As tochas brilham intensamente por um breve instante, iluminando detalhes esquecidos nas paredes. ✨\n")
    u.aguarde(2000)
    escreva("Um som suave, como passos sobre folhas secas, ecoa no salão silencioso. 🍂\n")
    u.aguarde(2500)
    escreva("Uma figura serena, envolta em um manto desgastado pelo tempo, surge da penumbra.\n")
    u.aguarde(3500)
    limpa()

    cadeia nomeInimigo = "CURUPIRA"
    inteiro vidaInimigo = 150
    inteiro ataqueInimigo = 40
    inteiro defesaInimigo = 18
    inteiro xpInimigo = 25
    cadeia opcaoBatalha 
    escreva("╔════════════════════════════════════════════╗\n")
    escreva("           SEU ADVERSÁRIO SERÁ:         ", "\n")
    escreva("          ", nomeInimigo, "                 ", "\n")
    escreva("╚════════════════════════════════════════════╝", "\n")
    u.aguarde(2500)
    limpa()
    escreva("╔═══════════════════════════════════╗", "\n")
    escreva("      ", nomeInimigo, "        ",       "\n")
    escreva("╠═══════════════════════════════════╣", "\n")
    escreva("        VIDA   → ", vidaInimigo," ❤️                ", "\n") 
    escreva("        ATAQUE → ", ataqueInimigo," ⚔️                 ", "\n")
    escreva("        DEFESA → ", defesaInimigo," 🛡️                   ", "\n")
    escreva("╚═══════════════════════════════════╝", "\n")
    u.aguarde(5000)
    limpa()
    enquanto(vidaInimigo > 0){
      escreva("╔════════════════════════════════════════╗\n")
      escreva("   SEU TURNO, ", nomePersonagem, "!        \n")
      escreva("╚════════════════════════════════════════╝\n\n")
      escreva(" ",nomePersonagem, " - ❤️ HP - ", vidaPersonagem, "\n")
      escreva("═════════════════════════════════════════\n")
      escreva(" ",nomeInimigo, " - ❤️ HP  - ", vidaInimigo, "\n\n")
      escreva("O QUE VOCÊ DESEJA FAZER?\n")
      escreva("═════════════════════════\n ")
      escreva("     1 → ATACAR ⚔️      \n")  
      escreva("═════════════════════════\n")
      escreva("ESCOLHA SUA AÇÃO: \n")
      leia(opcaoBatalha)
      limpa()
      se(opcaoBatalha == 1) {
        inteiro danoCausado = ataquePersonagem - defesaInimigo
        vidaInimigo = vidaInimigo - danoCausado
        escreva("💥 VOCÊ ATACA ", nomeInimigo, " CAUSANDO ", danoCausado, " DE DANO! 💥\n")
        u.aguarde(2000)
      }
      senao {
        escreva("❌ - OPÇÃO INVÁLIDA! Você hesita e perde o turno...\n")
        u.aguarde(2000)
      }
      limpa()
      se (vidaInimigo <= 0) {
        escreva(nomeInimigo, " FOI DERROTADO COM SUCESSO 🏆!\n")
        xpPersonagem = xpPersonagem + xpInimigo
        escreva("✨ VOCÊ GANHOU ", xpInimigo, " DE XP ! ✨\n\n✨ XP Total: ", xpPersonagem, " ✨\n")
        u.aguarde(3000)
        nivelDoJogador()
        u.aguarde(4000)
        limpa()
        contadorDeMonstros++
      }
      senao {
      escreva("╔════════════════════════════════════════╗\n")
      escreva("    TURNO DE ", nomeInimigo, "!        \n")
      escreva("╚════════════════════════════════════════╝\n\n")
        u.aguarde(1000)
        inteiro danoSofrido = ataqueInimigo - defesaPersonagem
        escreva("💥 ",nomeInimigo, " ATACA VOCÊ, CAUSANDO ", danoSofrido, " DE DANO! 💥\n")
        vidaPersonagem = vidaPersonagem - danoSofrido
        u.aguarde(2500)
        limpa()
      }
      se(vidaPersonagem<=0){ 
        fimDeJogo()
        jogoRodando=falso
        retorne
      }
    }
    escreva("Você respira fundo, sentindo o peso da batalha se dissipar lentamente. 😮‍💨\n")
    u.aguarde(2500)
    escreva(nomeInimigo," cai, derrotado, e a sensação de triunfo preenche o ambiente.\n")
    u.aguarde(2500)
    escreva("Mas algo dentro de você sabe... essa vitória é apenas o começo... 🔮\n\n")
    u.aguarde(4300)
    limpa()

    cadeia teclaTerminarFase4
    enquanto(teclaTerminarFase4!=1 e teclaTerminarFase4!=2){
      escreva(" ╔═══════════════════════════════════════════════════╗", "\n")
      escreva(" ║     PARABÉNS, VOCÊ TERMINOU A QUARTA FASE!        ║", "\n")
      escreva(" ╚═══════════════════════════════════════════════════╝", "\n\n")
      u.aguarde(2000)
      escreva("       ╔════════════════════════════════════╗", "\n")
      escreva("       ║     O QUE VOCÊ DESEJA FAZER?       ║", "\n")
      escreva("       ╚════════════════════════════════════╝", "\n\n")
      escreva("1 - VOLTAR PARA A ", regioes[2], " 🕳️🪨🕸️🗡️☠️\n")
      escreva("2 - SEGUIR PARA A ", regioes[4], " 🏰👑✨⚔️🛡️\n")
      leia(teclaTerminarFase4)
      limpa()
    }
    se(teclaTerminarFase4==1){
      indiceRegioes=2
    }
    se(teclaTerminarFase4==2){
      indiceRegioes=4
    }
    u.aguarde(1000)
    limpa()
  }
  
  funcao quintaFaseJogo(){
    escreva("Você chegou a região: ", regioes[4], "🏰👑✨⚔️🛡️")
    u.aguarde(3000)
    limpa()
    escreva("Você atravessa o grande portão dourado e adentra o imponente Castelo Dourado. 🏰\n")
    u.aguarde(2000)
    escreva("Paredes de ouro brilham sob a luz do sol. 👑\n")
    u.aguarde(2000)
    escreva("Escudos e espadas antigos estão por toda parte. 🛡️⚔️\n")
    u.aguarde(2000)
    escreva("O DESAFIO FINAL o espera no coração do castelo...\n\n")
    u.aguarde(3500)
    limpa()
    escreva("Para avançar pelo Castelo Dourado, você deve escolher qual brasão erguer.\n\n")
    u.aguarde(2000)
    cadeia opcaoEscolhidaBrasao
    enquanto(opcaoEscolhidaBrasao!=1 e opcaoEscolhidaBrasao!=2 e opcaoEscolhidaBrasao!=3 e opcaoEscolhidaBrasao!=4){
      escreva("╔═════════════════════╗", "\n")
      escreva("║  QUAL VOCÊ ESCOLHE? ║", "\n")
      escreva("╚═════════════════════╝", "\n\n")

      escreva("DIGITE 1 - LEÃO DOURADO 🦁\n")
      escreva("DIGITE 2 - ÁGUIA PRATEADA 🦅\n")
      escreva("DIGITE 3 - DRAGÃO VERMELHO 🐉\n")
      escreva("DIGITE 4 - SERPENTE NEGRA 🐍\n")
      leia(opcaoEscolhidaBrasao)
      limpa()
      }
      se(opcaoEscolhidaBrasao==1){
        opcaoEscolhidaBrasao = "LEÃO DOURADO 🦁"
      }
      se(opcaoEscolhidaBrasao==2){
        opcaoEscolhidaBrasao = "GUIA PRATEADA 🦅"
      }
      se(opcaoEscolhidaBrasao==3){
        opcaoEscolhidaBrasao = "DRAGÃO VERMELHO 🐉"
      }
      se(opcaoEscolhidaBrasao==4){
        opcaoEscolhidaBrasao = "SERPENTE NEGRA 🐍"
      }

    limpa()
    escreva("O brasão que você escolheu erguer foi: ")
    escreva(opcaoEscolhidaBrasao)
    u.aguarde(3000)
    limpa()
    escreva("Você entra numa câmara silenciosa, onde brasas vermelhas brilham no chão.\n")
    u.aguarde(2000)
    escreva("Uma inscrição na parede diz: 📜\n")
    u.aguarde(1500)
    escreva("\"Sou vermelho e quente, porém não queimo. 🔴\n")
    escreva("Dou vida ao fogo, mas não sou fogo. 🔥❌\n\n")
    cadeia opcaoEscolhidaVermelhoQuente
    enquanto(opcaoEscolhidaVermelhoQuente!= 1 e opcaoEscolhidaVermelhoQuente!= 2 e opcaoEscolhidaVermelhoQuente!=3 e opcaoEscolhidaVermelhoQuente !=4){
      escreva("╔════════════════╗", "\n")
      escreva("║  OQUE EU SOU?  ║", "\n")
      escreva("╚════════════════╝", "\n\n")
      escreva("DIGITE 1 - CHAMA 🔥\n")
      escreva("DIGITE 2 - BRASA 🟠\n")
      escreva("DIGITE 3 - FUMAÇA 🌫️\n")
      escreva("DIGITE 4 - CINZA ⚪\n")
      leia(opcaoEscolhidaVermelhoQuente)
      limpa()
    }
    se(opcaoEscolhidaVermelhoQuente == 2){
      escreva("Você tocou nas brasas e sente uma energia vibrante restaurando seu vigor!❤️‍🔥\n\n")
      u.aguarde(2000)
      escreva("VOCÊ ADQUIRIU 100% DA SUA VIDA NOVAMENTE! ❤️\n\n")
      se(classePersonagem==1){
        vidaPersonagem = 200
        escreva("SEU HP SE TORNOU ", vidaPersonagem, " NOVAMENTE! ❤️\n")
      }
      se(classePersonagem==2){
        vidaPersonagem = 250
        escreva("SEU HP SE TORNOU ", vidaPersonagem, " NOVAMENTE! ❤️\n")
      }
      se(classePersonagem==3){
        vidaPersonagem = 230
        escreva("SEU HP SE TORNOU ", vidaPersonagem, " NOVAMENTE! ❤️\n")
      }
      u.aguarde(3000)
    } 
    se(opcaoEscolhidaVermelhoQuente== 1 ou opcaoEscolhidaVermelhoQuente==3 ou opcaoEscolhidaVermelhoQuente==4){
      escreva("A resposta está incorreta. ❌\n")
      u.aguarde(3000)
    }
    escreva("Você adentra a Sala das Runas Douradas, onde inscrições brilhantes cobrem as paredes. 🏰✨\n")
    u.aguarde(2000)
    escreva("Uma energia antiga pulsa no ar, convidando você a tocar as runas.\n\n")
    u.aguarde(2000)
    cadeia opcaoEscolhidaRunas
    enquanto(opcaoEscolhidaRunas){
      escreva("╔════════════════════════════════════╗", "\n")
      escreva("║  DESEJA ATIVAR O PODER DAS RUNAS?  ║", "\n")
      escreva("╚════════════════════════════════════╝", "\n\n")
      escreva("DIGITE 1 - ATIVAR O PODER 🔮\n")
      escreva("DIGITE 2 - NÃO ATIVAR O PODER ❌\n")
      leia(opcaoEscolhidaRunas)
      limpa()
    }
    se(opcaoEscolhidaRunas==1){
      escreva("VOCÊ ADQUIRIU 25 DE VIDA! ❤️\n\n")
      escreva("SEU HP ANTES - ", vidaPersonagem, "- ❤️")
      vidaPersonagem = vidaPersonagem + 25
      escreva("SEU HP ATUAL - ", vidaPersonagem, "- ❤️")
    }
    se(opcaoEscolhidaRunas==2){
      escreva("Você decide deixar as runas intactas e segue seu caminho...")
    }
    u.aguarde(3200)
    limpa()
    escreva("Você entra em uma câmara escura, onde um espelho dourado repousa entre colunas rachadas. 🪞🏰\n")
    u.aguarde(3000)
    escreva("O espelho começa a brilhar em roxo... algo pulsa por trás do vidro. 🔮🟣\n")
    u.aguarde(3500)
    escreva("De repente, sua imagem ganha vida e salta do espelho com olhos vazios. ⚔️🪞\n")
    u.aguarde(3000)
    escreva("Prepare-se... você terá que enfrentar sua própria sombra. 👤🔥\n\n")
    u.aguarde(3000)

    inteiro vidaInimigo = 150
    inteiro ataqueInimigo = 35
    inteiro defesaInimigo = 15
    inteiro xpInimigo = 30
    cadeia opcaoBatalha 
    escreva("╔════════════════════════════════════════════╗\n")
    escreva("           SEU ADVERSÁRIO SERÁ:         ", "\n")
    escreva("          ", nomePersonagem, "                 ", "\n")
    escreva("╚════════════════════════════════════════════╝", "\n")
    u.aguarde(2500)
    limpa()
    escreva("╔═══════════════════════════════════╗", "\n")
    escreva("        ", nomePersonagem, "        ",       "\n")
    escreva("╠═══════════════════════════════════╣", "\n")
    escreva("        VIDA   → ", vidaInimigo," ❤️                ", "\n") 
    escreva("        ATAQUE → ", ataqueInimigo," ⚔️                 ", "\n")
    escreva("        DEFESA → ", defesaInimigo," 🛡️                   ", "\n")
    escreva("╚═══════════════════════════════════╝", "\n")
    u.aguarde(5000)
    limpa()
    enquanto(vidaInimigo > 0){
      escreva("╔════════════════════════════════════════╗\n")
      escreva("   SEU TURNO, ", nomePersonagem, "!        \n")
      escreva("╚════════════════════════════════════════╝\n\n")
      escreva(" ",nomePersonagem, " - ❤️ HP - ", vidaPersonagem, "\n")
      escreva("═════════════════════════════════════════\n")
      escreva(" ",nomePersonagem, " (inimigo) - ❤️ HP  - ", vidaInimigo, "\n\n")
      escreva("O QUE VOCÊ DESEJA FAZER?\n")
      escreva("═════════════════════════\n ")
      escreva("     1 → ATACAR ⚔️      \n")  
      escreva("═════════════════════════\n")
      escreva("ESCOLHA SUA AÇÃO: \n")
      leia(opcaoBatalha)
      limpa()
      se(opcaoBatalha == 1) {
        inteiro danoCausado = ataquePersonagem - defesaInimigo
        vidaInimigo = vidaInimigo - danoCausado
        escreva("💥 VOCÊ ATACA ", nomePersonagem, " (inimigo)", " CAUSANDO ", danoCausado, " DE DANO! 💥\n")
        u.aguarde(2000)
      }
      senao {
        escreva("❌ - OPÇÃO INVÁLIDA! Você hesita e perde o turno...\n")
        u.aguarde(2000)
      }
      limpa()
      se (vidaInimigo <= 0) {
        escreva(nomePersonagem, " (inimigo)", " FOI DERROTADO COM SUCESSO 🏆!\n")
        xpPersonagem = xpPersonagem + xpInimigo
        escreva("✨ VOCÊ GANHOU ", xpInimigo, " DE XP ! ✨\n\n✨ XP Total: ", xpPersonagem, " ✨\n")
        u.aguarde(3000)
        nivelDoJogador()
        u.aguarde(4000)
        limpa()
        contadorDeMonstros++
      }
      senao {
      escreva("╔════════════════════════════════════════╗\n")
      escreva("  TURNO DE ", nomePersonagem, " (inimigo)", "!        \n")
      escreva("╚════════════════════════════════════════╝\n\n")
        u.aguarde(1000)
        inteiro danoSofrido = ataqueInimigo - defesaPersonagem
        escreva("💥 ",nomePersonagem, " (inimigo)", " ATACA VOCÊ, CAUSANDO ", danoSofrido, " DE DANO! 💥\n")
        vidaPersonagem = vidaPersonagem - danoSofrido
        u.aguarde(2500)
        limpa()
      }
      se(vidaPersonagem<=0){ 
        fimDeJogo()
        jogoRodando=falso
        retorne
      }
    }
    escreva("O espelho se estilhaça, e a energia do combate se dissipa no ar. ✨\n")
    u.aguarde(3000)
    escreva("Você sente que algo dentro de você foi fortalecido. ❤️‍🔥\n")
    u.aguarde(3000)
    escreva("VOCÊ ADQUIRIU 100% DA SUA VIDA NOVAMENTE! ❤️\n\n")
    se(classePersonagem==1){
      vidaPersonagem = 200
      escreva("SEU HP SE TORNOU ", vidaPersonagem, " NOVAMENTE! ❤️\n")
    }
    se(classePersonagem==2){
      vidaPersonagem = 250
      escreva("SEU HP SE TORNOU ", vidaPersonagem, " NOVAMENTE! ❤️\n")
    }
    se(classePersonagem==3){
      vidaPersonagem = 230
      escreva("SEU HP SE TORNOU ", vidaPersonagem, " NOVAMENTE! ❤️\n")
    }
    u.aguarde(3000)
    limpa()
    escreva("Você encontra um estandarte antigo pendurado entre colunas quebradas. 🏰🪙\n")
    u.aguarde(3000)
    escreva("O tecido dourado balança com um vento que você não sente. Ele emana um poder ancestral. ✨\n")
    u.aguarde(3000)
    escreva("Tocar o estandarte pode conceder poder... mas você não sabe qual.\n\n")
    inteiro poderAtaqueOuDefesa = u.sorteia(1,2)
    cadeia opcaoEscolhidaPoder
    enquanto(opcaoEscolhidaPoder!=1){
      escreva("╔═══════════════════════════════════╗", "\n")
      escreva("║  ESCOLHA 1 PARA ABSORVER O PODER  ║", "\n")
      escreva("╚═══════════════════════════════════╝", "\n\n")
      leia(opcaoEscolhidaPoder)
      limpa()
    }
    se(poderAtaqueOuDefesa==1){
      escreva("Uma aura quente envolve você. ⚔️🔥\n")
      escreva("Seu ataque foi aumentado!\n\n")
      escreva("PARABÉNS, VOCÊ GANHOU +3 DE ATAQUE! ⚔️\n")
      escreva("SEU ATAQUE ANTES - ", ataquePersonagem, " ⚔️\n")
      ataquePersonagem = ataquePersonagem + 3
      escreva("SEU ATAQUE AGORA - ", ataquePersonagem, " ⚔️\n")
      u.aguarde(4000)
    }
    se(poderAtaqueOuDefesa==2){
      escreva("Um escudo dourado brilha ao seu redor. 🛡️✨\n")
      escreva("Sua defesa foi fortalecida!")
      escreva("PARABÉNS, VOCÊ GANHOU +3 DE DEFESA! 🛡️\n")
      escreva("SUA DEFESA ANTES - ", defesaPersonagem, " 🛡️\n")
      defesaPersonagem = defesaPersonagem + 3
      escreva("SUA DEFESA AGORA - ", defesaPersonagem, " 🛡️\n")
      u.aguarde(4000)
    }
    limpa()
    escreva("Você caminha por um corredor de estantes infinitas. O ar é pesado, como se o tempo estivesse preso aqui. 📚🕰️\n")
    u.aguarde(2000)
    escreva("Livros flutuam ao seu redor e cochicham em línguas que sua mente tenta entender... 🔮\n")
    u.aguarde(2000)
    escreva("De repente, uma estante inteira desliza em sua direção! 🪵💨\n")
    cadeia opcaoAcaoEscolhida
    enquanto(opcaoAcaoEscolhida!=1 e opcaoAcaoEscolhida!=2 e opcaoAcaoEscolhida!=3){
      escreva("╔═══════════════════════════════════╗", "\n")
      escreva("║   CORRA, SALTE OU FIQUE PARADO?   ║", "\n")
      escreva("╚═══════════════════════════════════╝", "\n\n")
      escreva("DIGITE 1 - CORRER 🏃‍♂️\n")
      escreva("DIGITE 2 - SALTAR 🦘\n")
      escreva("DIGITE 3 - FICAR PARADO 🧍‍♂️\n")
      leia(opcaoAcaoEscolhida)
      limpa()
    }
    se(opcaoAcaoEscolhida==1){
      escreva("Você corre com tudo, mas a estante desliza mais rápido. Ela roça em você. 🩸\n\n")
      escreva("VOCÊ PERDEU -15 DE VIDA 💔\n")
      escreva("SUA VIDA ANTES - ", vidaPersonagem, " ❤️\n")
      vidaPersonagem = vidaPersonagem - 15
      escreva("SUA VIDA ATUAL - ", vidaPersonagem, " 💔\n")
      u.aguarde(4000)
    }
    se(opcaoAcaoEscolhida==2){
      escreva("Você salta para o lado e rola no chão, escapando por pouco! ⚡\n")
    }
    se(opcaoAcaoEscolhida==3){
      escreva("A estante passa por você como um fantasma... era só uma ilusão. 🌀\n")
    }
    u.aguarde(4000)
    limpa()
    escreva("As vozes ficam mais altas. Um livro escuro se abre sozinho e libera uma entidade viva feita de tinta! 📖🕷️\n")
    escreva("Prepare-se para enfrentar: O Horror Encardido!\n\n")
    u.aguarde(2000)
    cadeia nomeInimigo = "O HORROR ENCARDIDO"
    inteiro vidaInimigo = 150
    inteiro ataqueInimigo = 40
    inteiro defesaInimigo = 18
    inteiro xpInimigo = 30
    cadeia opcaoBatalha 
    escreva("╔════════════════════════════════════════════╗\n")
    escreva("           SEU ADVERSÁRIO SERÁ:         ", "\n")
    escreva("          ", nomeInimigo, "                 ", "\n")
    escreva("╚════════════════════════════════════════════╝", "\n")
    u.aguarde(2500)
    limpa()
    escreva("╔═══════════════════════════════════╗", "\n")
    escreva("      ", nomeInimigo, "        ",       "\n")
    escreva("╠═══════════════════════════════════╣", "\n")
    escreva("        VIDA   → ", vidaInimigo," ❤️                ", "\n") 
    escreva("        ATAQUE → ", ataqueInimigo," ⚔️                 ", "\n")
    escreva("        DEFESA → ", defesaInimigo," 🛡️                   ", "\n")
    escreva("╚═══════════════════════════════════╝", "\n")
    u.aguarde(5000)
    limpa()
    enquanto(vidaInimigo > 0){
      escreva("╔════════════════════════════════════════╗\n")
      escreva("   SEU TURNO, ", nomePersonagem, "!        \n")
      escreva("╚════════════════════════════════════════╝\n\n")
      escreva(" ",nomePersonagem, " - ❤️ HP - ", vidaPersonagem, "\n")
      escreva("═════════════════════════════════════════\n")
      escreva(" ",nomeInimigo, " - ❤️ HP  - ", vidaInimigo, "\n\n")
      escreva("O QUE VOCÊ DESEJA FAZER?\n")
      escreva("═════════════════════════\n ")
      escreva("     1 → ATACAR ⚔️      \n")  
      escreva("═════════════════════════\n")
      escreva("ESCOLHA SUA AÇÃO: \n")
      leia(opcaoBatalha)
      limpa()
      se(opcaoBatalha == 1) {
        inteiro danoCausado = ataquePersonagem - defesaInimigo
        vidaInimigo = vidaInimigo - danoCausado
        escreva("💥 VOCÊ ATACA ", nomeInimigo, " CAUSANDO ", danoCausado, " DE DANO! 💥\n")
        u.aguarde(2000)
      }
      senao {
        escreva("❌ - OPÇÃO INVÁLIDA! Você hesita e perde o turno...\n")
        u.aguarde(2000)
      }
      limpa()
      se (vidaInimigo <= 0) {
        escreva(nomeInimigo, " FOI DERROTADO COM SUCESSO 🏆!\n")
        xpPersonagem = xpPersonagem + xpInimigo
        escreva("✨ VOCÊ GANHOU ", xpInimigo, " DE XP ! ✨\n\n✨ XP Total: ", xpPersonagem, " ✨\n")
        u.aguarde(3000)
        nivelDoJogador()
        u.aguarde(4000)
        limpa()
        contadorDeMonstros++
      }
      senao {
      escreva("╔════════════════════════════════════════╗\n")
      escreva("    TURNO DE ", nomeInimigo, "!        \n")
      escreva("╚════════════════════════════════════════╝\n\n")
        u.aguarde(1000)
        inteiro danoSofrido = ataqueInimigo - defesaPersonagem
        escreva("💥 ",nomeInimigo, " ATACA VOCÊ, CAUSANDO ", danoSofrido, " DE DANO! 💥\n")
        vidaPersonagem = vidaPersonagem - danoSofrido
        u.aguarde(2500)
        limpa()
      }
      se(vidaPersonagem<=0){ 
        fimDeJogo()
        jogoRodando=falso
        retorne
      }
    }
    escreva("A criatura desfaz-se em fragmentos de tinta e papel, espalhando-se pelo chão como fumaça escura. 📖🌫️\n")
    u.aguarde(3000)
    escreva("O silêncio retorna à biblioteca. Os livros voltam aos seus lugares, e as estantes param de sussurrar. 📚✨\n")
    u.aguarde(4000)
    limpa()
    escreva("Ao passar pelas estantes, você entra em uma sala circular banhada por uma luz suave. 🕯️🏰\n")
    u.aguarde(2000)
    escreva("No centro, uma fonte jorra uma água dourada, clara como cristal. 💧✨\n")
    u.aguarde(2000)
    escreva("Você se aproxima. A superfície da água mostra reflexos do seu passado... e seus ferimentos começam a sumir.\n")
    u.aguarde(2500)
    escreva("Você sente sua força retornar.\n\n")
    escreva("VOCÊ ADQUIRIU 100% DA SUA VIDA NOVAMENTE! ❤️\n\n")
    se(classePersonagem==1){
      vidaPersonagem = 200
      escreva("SEU HP SE TORNOU ", vidaPersonagem, " NOVAMENTE! ❤️\n")
    }
    se(classePersonagem==2){
      vidaPersonagem = 250
      escreva("SEU HP SE TORNOU ", vidaPersonagem, " NOVAMENTE! ❤️\n")
    }
    se(classePersonagem==3){
      vidaPersonagem = 230
      escreva("SEU HP SE TORNOU ", vidaPersonagem, " NOVAMENTE! ❤️\n")
    }
    u.aguarde(3000)
    limpa()
    escreva("Você chega a uma câmara dourada com duas estátuas imponentes. 🏛️✨\n")
    u.aguarde(2000)
    escreva("À esquerda, uma estátua com uma espada flamejante. À direita, uma com um escudo de luz. ⚔️🛡️\n")
    u.aguarde(2000)
    escreva("Uma voz antiga ecoa: \n\n\"Apenas um caminho será seu na batalha final. Escolha com sabedoria.\"\n\n")
    cadeia opcaoEscolhidaAtaqueOuDefesa
    enquanto(opcaoEscolhidaAtaqueOuDefesa!=1 e opcaoEscolhidaAtaqueOuDefesa!=2){
      escreva("╔═════════════════════════════╗", "\n")
      escreva("║   QUAL ITEM VOCÊ ESCOLHE?   ║", "\n")
      escreva("╚═════════════════════════════╝", "\n\n")
      escreva("DIGITE 1 - PEGAR A ESPADA FLAMEJANTE (ATAQUE) 🔥\n")
      escreva("DIGITE 2 - PEGAR O ESCUDO DE LUZ (DEFESA) ✨\n")
      leia(opcaoEscolhidaAtaqueOuDefesa)
      limpa()
    }
    se(opcaoEscolhidaAtaqueOuDefesa==1){
      escreva("Uma energia ardente percorre seu corpo. ⚔️🔥\n")
      escreva("Você sente sua força crescer, seu ataque aumentou!\n\n")
      escreva("PARABÉNS, VOCÊ GANHOU +3 DE ATAQUE! ⚔️\n")
      escreva("SEU ATAQUE ANTES - ", ataquePersonagem, " ⚔️\n")
      ataquePersonagem = ataquePersonagem + 3
      escreva("SEU ATAQUE AGORA - ", ataquePersonagem, " ⚔️\n")
      u.aguarde(4000)

    }
    se(opcaoEscolhidaAtaqueOuDefesa==2){
      escreva("Um escudo dourado envolve seu corpo com brilho intenso. 🛡️✨\n")
      escreva("Você sente sua defesa se fortalecer!\n\n")
      escreva("PARABÉNS, VOCÊ GANHOU +3 DE DEFESA! 🛡️\n")
      escreva("SUA DEFESA ANTES - ", defesaPersonagem, " 🛡️\n")
      defesaPersonagem = defesaPersonagem + 3
      escreva("SUA DEFESA AGORA - ", defesaPersonagem, " 🛡️\n")
      u.aguarde(4000)
    }
    limpa()
    escreva("A hora se aproxima. Está preparado para o que está por vir? 🔮\n\n")
    u.aguarde(3000) 
    cadeia teclaDigitadaBossFinal
    escreva("╔═════════════════════════════════════════════════════════╗", "\n")
    escreva("║  PRESSIONE QUALQUER TECLA PARA ENFRENTAR O BOSS FINAL!  ║", "\n")
    escreva("╚═════════════════════════════════════════════════════════╝", "\n\n")
    leia(teclaDigitadaBossFinal)
    limpa()
    cadeia nomeInimigo = "O DEVASTADOR"
    escreva("O ar ao seu redor treme, e uma sombra colossal surge das profundezas do castelo...\n")
    u.aguarde(3000)
    escreva("O chão estremece sob seus pés enquanto uma voz profunda ecoa: \n")
    u.aguarde(3500)
    escreva("Eu sou O DEVASTADOR, o fim da esperança e o terror do Castelo Dourado.\n")
    u.aguarde(2500)
    escreva("Então... você chegou.\n")
    u.aguarde(2500)
    escreva("Pisando nas cinzas do que já foi um reino.\n")
    u.aguarde(2000)
    escreva("Fui o primeiro a cair.\n")
    u.aguarde(2000)
    escreva("Aceitei o poder. Eles aceitaram a ruína...\n")
    u.aguarde(2000)
    escreva("Você quer luz?\n")
    u.aguarde(2000)
    escreva("Vai encontrar sombra.\n")
    u.aguarde(2000)
    escreva("Venha. Acabe comigo... ou seja esquecido como os outros.\n")
    u.aguarde(5000)
    limpa()
    limpa()                                                                                                                                                                                                                  
    escreva("                                                         .                                                  \n") 
    escreva("                                                    := .--                                                  \n")  
    escreva("                                   .-.            .-@#@@*-..          .:-.                                  \n")  
    escreva("                         .-%@@@@@@@@%@#.         :%@##@#@+..     .    %@@@@@@@@@@#-.                        \n")  
    escreva("                    ..+@@@@@@#+%@@@@@%.         -+@%:*#@@%#.--.. =*.  :@@@@@@#+%@@@@@@+..                   \n")  
    escreva("                  .#@@@@@@%:%@@@@@@@*.          .+.-+@+@@@@::.=%@@@*    #@@@@@@@#:@@@@@@@*.                 \n")  
    escreva("                .%@@@@@@@-%@@@@@@@@@.:@+=#%##*...+*@%..-@@@:++@@@@%@-   :@@@@@@@@@*=@@@@@@@%.               \n")  
    escreva("              .%@@@@@@@@+*@@@@@@@@@*..+-##+#@@=..+--.  *#@@-@@%=##@@%#.  #@@@@@@@@@=*@@@@@@@@#.             \n")  
    escreva("             =@@@@@@@@@@++@@@@@@@@@- :%=*@@@##*@:     :@@@-:@%+ =%.-.:   =@@@@@@@@@=*@@@@@@@@@@-            \n")  
    escreva("           .*%..@@@@@@@@@.@@@@@@@@@- .#.=-..-*@@%    .%%@@. %@@.  .#%    -@@@@@@@@@:@@@@@@@@% :@+.          \n")  
    escreva("           ##*.@@@@@@@@@@%.@@@@@@@@=. ...     .@@@    %@@@.  =@#.         +@@@@@@@@.@@@@@@@@@@@.*#*         \n")  
    escreva("          *%.-@@@@@@@@@@@@%-@@@@@@@%.         %@@.  #@@%#   -@@+        .@@@@@@@@.@@@@@@@@@@@@@::@=         \n")  
    escreva("         .-.=-@@@##@@@@@@@@.@@@@@@@@+         #@@-  @@@@.   *@%:.       *@@@@@@@% @@@@@@@@#%@@@:-.=.        \n")  
    escreva("           #@@@@:.%@@@@@@@.*@@@@@@@@@:        %@@%  @+%@   #@@@..      =@@@@@@@@@=-@@@@@@@# -@@@@*...       \n")  
    escreva("          +@@@@- #@@*%@@#.%@@@=-=@@@@#.     ..-%@@@:@@@@+@@@@%...     .#@@@@-:+@@@*.%@@*#@@# *@@@@-.        \n")  
    escreva("          %@@@@.+@%.*@@::@@@#.#@@@@@@@@@%%%%%%@%+@@@@@@@@@@%+@%%%%%%%@@@@@@@@@*.%@@@.-@@=.%@- @@@@%.        \n")  
    escreva("          @@@@-.@#.+@@. .#@@.+@@@@#@@@@@@@@@@%#%@@@@@@@@@@@@@%#%@@@@@@@@@%%@@@%+.@@*  .@@=.@% +@@@@         \n")  
    escreva("         :@-@@.=%.=@@.  =@=. :%@@.+@@@@@@@@@@@#:-@@@#@@@@@-..:#@%@@@@@@@@@+.@@%:..+@-  .@@-.@..@#-@.        \n")  
    escreva("         -@:@% #.:@@@.      .@@@= ..%@@%@@.:@*..*@@@:@@@@%.....@@::@@@@@#...*@@@        @@@..+ %@:@.        \n")  
    escreva("         -%-@#   #@=        +@@-...+@%..@%.:....*@@@@@@@%.......:..@%..%@- . =@@-        +@#...#@:@.        \n")  
    escreva("         .%-@+ .*@.         :...  .%@%..%@......-%@@%@%@-*@@@@%...:@#..%@#.....::         :@=  #@:@         \n")  
    escreva("          %-@+ *@.                  .#  @:.     :#@@@@%%=%@%@@@@.  -%  *..                 :@- *@:%..       \n")  
    escreva("          *:@= +..                   ..-:.      .*@@@@@+@...-@@@=. .-:                      ::.*@:+..       \n")  
    escreva("          .:@+                                   -@@@@%+@@#.-%@@-                              *#:          \n")  
    escreva("           .:+                                   .@@@#@@-@@@@@@*.                              *.           \n")  
    escreva("             .                                  .*.*@@@@@%-@@%...                              .            \n")  
    escreva("                                                *@@@:-#@@*%+.                                               \n")  
    escreva("                                               .@@@%.  .-**+.                                               \n")  
    escreva("                                               -@@@+ :@@@@@@@#                                              \n")  
    escreva("                                               .@@@%.@%%. :#%@:                                             \n")  
    escreva("                                                +@@@#==    *@@.                                             \n")  
    escreva("                                                 =@@@@@%%@@@@:                                              \n")  
    escreva("                                                 .==@@@@@@@-.                                               \n")  
    escreva("                                                 :@@=.   ..                                                 \n")  
    escreva("                                                 :@@:.                                                      \n")  
    escreva("                                                 .@%..                                                      \n")  
    escreva("                                                  *@-..                                                     \n")  
    escreva("                                                  .#@:.*-                                                   \n")  
    escreva("                                                    :@@@@@*.                                                \n")  
    escreva("                                                    .=-=#@#+-.                                              \n")  
    escreva("                                                      . ...                                                 \n") 
    u.aguarde(5000)
    limpa()
    escreva("╔═════════════════════════════════════════════════════════╗", "\n")
    escreva("║     DICA: O DEVASTADOR É UM DRAGÃO DE 3 CABEÇAS...      ║", "\n")
    escreva("╚═════════════════════════════════════════════════════════╝", "\n\n")
    u.aguarde(3000)
    limpa()
    escreva("╔══════════════════════════╗", "\n")
    escreva("║  VOCÊ ESTÁ PREPARADO???  ║", "\n")
    escreva("╚══════════════════════════╝", "\n\n")
    u.aguarde(2000)
    limpa()
    u.aguarde(1500)
    escreva(nomeInimigo, ": VOCÊ OUSA ENFRENTAR O FIM?\n")
    u.aguarde(2000)
    escreva(nomeInimigo, ": EU VI REINOS CAÍREM...\n")
    u.aguarde(2000)
    escreva(nomeInimigo, ": EU FIZ REIS SUPLICAREM POR MORTE.\n")
    u.aguarde(2000)
    escreva(nomeInimigo, ": E VOCÊ? VOCÊ NÃO É NADA.\n")
    u.aguarde(2000)
    escreva(nomeInimigo, ": PREPARE-SE PARA A EXTINÇÃO.\n")
    u.aguarde(3000)
    limpa()

    inteiro vidaFase1 = 200
    inteiro vidaFase2 = 150
    inteiro vidaFase3 = 100
    inteiro ataqueInimigo = 25
    inteiro defesaInimigo = 18
    inteiro xpInimigo = 30
    cadeia opcaoBatalha 
    escreva("╔════════════════════════════════════════════╗\n")
    escreva("           SEU ADVERSÁRIO SERÁ:         ", "\n")
    escreva("          ", nomeInimigo, "                 ", "\n")
    escreva("╚════════════════════════════════════════════╝", "\n")
    u.aguarde(5000)
    limpa()
    inteiro faseDevastador = 1
    se(faseDevastador==1){
      escreva("╔═══════════════════════════════════╗", "\n")
      escreva("      ", nomeInimigo, "        ",       "\n")
      escreva("╠═══════════════════════════════════╣", "\n")
      escreva("        VIDA   → ", vidaFase1," ❤️                ", "\n") 
      escreva("        ATAQUE → ", ataqueInimigo," ⚔️                 ", "\n")
      escreva("        DEFESA → ", defesaInimigo," 🛡️                   ", "\n")
      escreva("╚═══════════════════════════════════╝", "\n")
      u.aguarde(5000)
      enquanto(vidaFase1 > 0){
        escreva("╔════════════════════════════════════════╗\n")
        escreva("   SEU TURNO, ", nomePersonagem, "!        \n")
        escreva("╚════════════════════════════════════════╝\n\n")
        escreva(" ",nomePersonagem, " - ❤️ HP - ", vidaPersonagem, "\n")
        escreva("═════════════════════════════════════════\n")
        escreva(" ",nomeInimigo, " - ❤️ HP  - ", vidaFase1, "\n\n")
        escreva("O QUE VOCÊ DESEJA FAZER?\n")
        escreva("═════════════════════════\n ")
        escreva("     1 → ATACAR ⚔️      \n")  
        escreva("═════════════════════════\n")
        escreva("ESCOLHA SUA AÇÃO: \n")
        leia(opcaoBatalha)
        limpa()
        se(opcaoBatalha == 1) {
          inteiro danoCausado = ataquePersonagem - defesaInimigo
          vidaFase1 = vidaFase1 - danoCausado
          escreva("💥 VOCÊ ATACA ", nomeInimigo, " CAUSANDO ", danoCausado, " DE DANO! 💥\n")
          u.aguarde(2000)
        }
        senao {
          escreva("❌ - OPÇÃO INVÁLIDA! Você hesita e perde o turno...\n")
          u.aguarde(2000)
        }
        limpa()
        se (vidaFase1 <= 0) {
          escreva(nomeInimigo, " FOI DERROTADO COM SUCESSO 🏆!\n")
          u.aguarde(4000)
          escreva("🔥 ", nomeInimigo, " CAI... MAS ALGO SE ERGUE DAS CINZAS! 🔥\n")
          u.aguarde(3000)
          escreva(nomeInimigo, " RENASCE MAIS FORTE! ⚔️\n")
          contadorDeMonstros++
          u.aguarde(3000)
          limpa()
          faseDevastador=2
        }
        senao {
        escreva("╔════════════════════════════════════════╗\n")
        escreva("    TURNO DE ", nomeInimigo, "!        \n")
        escreva("╚════════════════════════════════════════╝\n\n")
          u.aguarde(1000)
          inteiro danoSofrido = ataqueInimigo - defesaPersonagem
          escreva("💥 ",nomeInimigo, " ATACA VOCÊ, CAUSANDO ", danoSofrido, " DE DANO! 💥\n")
          vidaPersonagem = vidaPersonagem - danoSofrido
          u.aguarde(2500)
          limpa()
        }
        se(vidaPersonagem<=0){ 
          fimDeJogo()
          jogoRodando=falso
          retorne
        }
      }
    }
    
    se(faseDevastador==2){
      escreva("╔══════════════════════════════════════════════════════════════════╗", "\n")
      escreva("║   VOCÊ ADQUIRIU UMA RECOMPENSA POR DERROTAR A PRIMEIRA CABEÇA!   ║", "\n")
      escreva("╚══════════════════════════════════════════════════════════════════╝", "\n\n")
      u.aguarde(3000)
      vidaPersonagem = vidaPersonagem + 30
      escreva("❤️ VOCÊ GANHOU 30 DE HP! ❤️\n\n❤️ SEU HP SE TORNOU ", vidaPersonagem, "! ❤️\n")
      u.aguarde(4000)
      limpa()
  
      escreva("╔═══════════════════════════════════╗", "\n")
      escreva("      ", nomeInimigo, "        ",       "\n")
      escreva("╠═══════════════════════════════════╣", "\n")
      escreva("        VIDA   → ", vidaFase2," ❤️                ", "\n") 
      escreva("        ATAQUE → ", ataqueInimigo," ⚔️                 ", "\n")
      escreva("        DEFESA → ", defesaInimigo," 🛡️                   ", "\n")
      escreva("╚═══════════════════════════════════╝", "\n")
      u.aguarde(5000)
      enquanto(vidaFase2 > 0){
        escreva("╔════════════════════════════════════════╗\n")
        escreva("   SEU TURNO, ", nomePersonagem, "!        \n")
        escreva("╚════════════════════════════════════════╝\n\n")
        escreva(" ",nomePersonagem, " - ❤️ HP - ", vidaPersonagem, "\n")
        escreva("═════════════════════════════════════════\n")
        escreva(" ",nomeInimigo, " - ❤️ HP  - ", vidaFase2, "\n\n")
        escreva("O QUE VOCÊ DESEJA FAZER?\n")
        escreva("═════════════════════════\n ")
        escreva("     1 → ATACAR ⚔️      \n")  
        escreva("═════════════════════════\n")
        escreva("ESCOLHA SUA AÇÃO: \n")
        leia(opcaoBatalha)
        limpa()
        se(opcaoBatalha == 1) {
          inteiro danoCausado = ataquePersonagem - defesaInimigo
          vidaFase2 = vidaFase2 - danoCausado
          escreva("💥 VOCÊ ATACA ", nomeInimigo, " CAUSANDO ", danoCausado, " DE DANO! 💥\n")
          u.aguarde(2000)
        }
        senao {
          escreva("❌ - OPÇÃO INVÁLIDA! Você hesita e perde o turno...\n")
          u.aguarde(2000)
        }
        limpa()
        se (vidaFase2 <= 0) {
          escreva(nomeInimigo, " FOI DERROTADO COM SUCESSO 🏆!\n")
          u.aguarde(4000)
          escreva("💀 VOCÊ ACHOU QUE HAVIA TERMINADO? 💀\n")
          u.aguarde(3000)
          escreva("⚡ ", nomeInimigo, " ASSUME SUA FORMA FINAL!!! ⚡\n")
          contadorDeMonstros++
          faseDevastador=3
          u.aguarde(4000)
          limpa()
        }
        senao {
        escreva("╔════════════════════════════════════════╗\n")
        escreva("    TURNO DE ", nomeInimigo, "!        \n")
        escreva("╚════════════════════════════════════════╝\n\n")
          u.aguarde(1000)
          inteiro danoSofrido = ataqueInimigo - defesaPersonagem
          escreva("💥 ",nomeInimigo, " ATACA VOCÊ, CAUSANDO ", danoSofrido, " DE DANO! 💥\n")
          vidaPersonagem = vidaPersonagem - danoSofrido
          u.aguarde(2500)
          limpa()
        }
        se(vidaPersonagem<=0){ 
          fimDeJogo()
          jogoRodando=falso
          retorne
        }
      }
    }
    se(faseDevastador==3){
      escreva("╔══════════════════════════════════════════════════════════════════╗", "\n")
      escreva("║   VOCÊ ADQUIRIU UMA RECOMPENSA POR DERROTAR A SEGUNDA CABEÇA!    ║", "\n")
      escreva("╚══════════════════════════════════════════════════════════════════╝", "\n\n")
      u.aguarde(3000)
      vidaPersonagem = vidaPersonagem + 50
      escreva("❤️ VOCÊ GANHOU 50 DE HP! ❤️\nSEU HP SE TORNOU ", vidaPersonagem, "! ❤️\n")
      u.aguarde(4000)
      limpa()
  
      escreva("╔═══════════════════════════════════╗", "\n")
      escreva("      ", nomeInimigo, "        ",       "\n")
      escreva("╠═══════════════════════════════════╣", "\n")
      escreva("        VIDA   → ", vidaFase3," ❤️                ", "\n") 
      escreva("        ATAQUE → ", ataqueInimigo," ⚔️                 ", "\n")
      escreva("        DEFESA → ", defesaInimigo," 🛡️                   ", "\n")
      escreva("╚═══════════════════════════════════╝", "\n")
      u.aguarde(5000)
      enquanto(vidaFase3 > 0){
        escreva("╔════════════════════════════════════════╗\n")
        escreva("   SEU TURNO, ", nomePersonagem, "!        \n")
        escreva("╚════════════════════════════════════════╝\n\n")
        escreva(" ",nomePersonagem, " - ❤️ HP - ", vidaPersonagem, "\n")
        escreva("═════════════════════════════════════════\n")
        escreva(" ",nomeInimigo, " - ❤️ HP  - ", vidaFase3, "\n\n")
        escreva("O QUE VOCÊ DESEJA FAZER?\n")
        escreva("═════════════════════════\n ")
        escreva("     1 → ATACAR ⚔️      \n")  
        escreva("═════════════════════════\n")
        escreva("ESCOLHA SUA AÇÃO: \n")
        leia(opcaoBatalha)
        limpa()
        se(opcaoBatalha == 1) {
          inteiro danoCausado = ataquePersonagem - defesaInimigo
          vidaFase3 = vidaFase3 - danoCausado
          escreva("💥 VOCÊ ATACA ", nomeInimigo, " CAUSANDO ", danoCausado, " DE DANO! 💥\n")
          u.aguarde(2000)
        }
        senao {
          escreva("❌ - OPÇÃO INVÁLIDA! Você hesita e perde o turno...\n")
          u.aguarde(2000)
        }
        limpa()
        se (vidaFase3 <= 0) {
          contadorDeMonstros++
          escreva("╔════════════════════════════════════════════════════════════╗\n")
          escreva("║                    PARABÉNS, HERÓI!                        ║\n")
          escreva("║              VOCÊ DERROTOU O DEVASTADOR!                   ║\n")
          escreva("╚════════════════════════════════════════════════════════════╝\n\n")
          u.aguarde(3000)
          escreva("╔═════════════════════════════════════════════════════════════╗\n")
          escreva("║          👑 VITÓRIA! O MUNDO AGORA ESTÁ SALVO! 👑          ║\n")
          escreva("║                                                             ║\n")
          escreva("║   Você derrotou o terrível dragão de três cabeças, e agora  ║\n")
          escreva("║   os reinos podem viver em paz novamente. Sua coragem       ║\n")
          escreva("║   e determinação foram cruciais para este momento!          ║\n")
          escreva("╚═════════════════════════════════════════════════════════════╝\n")
          u.aguarde(5000)
          escreva("╔════════════════════════════════════════════════════════════╗\n")
          escreva("       VOCÊ HONROU O BRASÃO ", opcaoEscolhidaBrasao,"                     \n")
          escreva("                    LÍDER DA RESISTÊNCIA!                        \n")
          escreva("╚════════════════════════════════════════════════════════════╝\n\n")
          u.aguarde(3000)
          limpa()
          escreva("╔════════════════════════════════════════╗\n")
          escreva("║         VITÓRIA CONQUISTADA! 👑        ║\n")
          escreva("╚════════════════════════════════════════╝\n")
          u.aguarde(2000)
          escreva("✨ SEU NÍVEL DE XP: ", nivelBatalha, " ✨\n")
          escreva("😈 VOCÊ MATOU: ", contadorDeMonstros, " INIMIGOS 😈\n\n")
          escreva("Obrigado por jogar...\n")
          u.aguarde(15000)
          jogoRodando = falso
          retorne
        }
        senao {
        escreva("╔════════════════════════════════════════╗\n")
        escreva("    TURNO DE ", nomeInimigo, "!        \n")
        escreva("╚════════════════════════════════════════╝\n\n")
          u.aguarde(1000)
          inteiro danoSofrido = ataqueInimigo - defesaPersonagem
          escreva("💥 ",nomeInimigo, " ATACA VOCÊ, CAUSANDO ", danoSofrido, " DE DANO! 💥\n")
          vidaPersonagem = vidaPersonagem - danoSofrido
          u.aguarde(2500)
          limpa()
        }
        se(vidaPersonagem<=0){ 
          fimDeJogo()
          jogoRodando=falso
          retorne
        }
      }      
    }
  }
}