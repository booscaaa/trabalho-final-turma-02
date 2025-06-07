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
  cadeia regioes[5] = {"Floresta da Névoa", "Vila Abandonada", "Caverna Sombria", "Pântano dos Lamentos", "Castelo Dourado"}
  inteiro indiceRegioes = 2
  inteiro nivelBatalha = 0

  funcao inicio() {
    se(vidaPersonagem==0){
      //FAZER SISTEMA DE MORTE MANEIRO(CPA TEM QUE TIRAR O DAS MORTES LA EMBAIXO DAS BATALHAS, MAS ISSO VEMOS DEPOS CARAIO)
      jogoRodando=falso
    }
    escolherClasse()
    enquanto(jogoRodando==verdadeiro){
      se(indiceRegioes==0){
        primeiraFaseJogo()
      }
      se(indiceRegioes==1){
        segundaFaseJogo()
      }
      se(indiceRegioes==2){
        terceiraFaseJogo()
      }
      se(indiceRegioes==3){
        terceiraFaseJogo()
      }
    } 
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
          escreva("Muito bem, nobre ", nomePersonagem, ". Em tua jornada, três caminhos se abrem diante de ti...\n")
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
        se(xpPersonagem==10){
      escreva("\n ✨ VOCÊ ATINGIU O NÍVEL 1 DE BATALHA! ✨ \n")
      nivelBatalha = 1
    }
    se(xpPersonagem==30){
      escreva("\n ✨ VOCÊ ATINGIU O NÍVEL 2 DE BATALHA! ✨ \n")
      nivelBatalha = 2
    }
    se(xpPersonagem==50){
      escreva("\n ✨ VOCÊ ATINGIU O NÍVEL 3 DE BATALHA! ✨ \n")
      nivelBatalha = 3
    }
    se(xpPersonagem==100){
      escreva("\n✨ VOCÊ ATINGIU O NÍVEL 4 DE BATALHA! ✨ \n")
      nivelBatalha = 4
    }
    se(xpPersonagem==200){
      escreva("\n ✨ VOCÊ ATINGIU O NÍVEL 5 DE BATALHA! ✨ \n")
      nivelBatalha = 5
    }
    se(xpPersonagem==300){
      escreva("\n ✨ VOCÊ ATINGIU O NÍVEL 6 DE BATALHA! ✨ \n")
      nivelBatalha = 6
    }
    se(xpPersonagem==400){
      escreva("\n ✨ VOCÊ ATINGIU O NÍVEL 7 DE BATALHA! ✨ \n")
      nivelBatalha = 7
    }
    se(xpPersonagem==500){
      escreva("\n ✨ VOCÊ ATINGIU O NÍVEL 8 DE BATALHA! ✨ \n")
      nivelBatalha = 8
    }
    se(xpPersonagem==600){
      escreva("\n ✨ VOCÊ ATINGIU O NÍVEL 9 DE BATALHA! ✨ \n")
      nivelBatalha = 9
    }
    se(xpPersonagem==1200){
      escreva("\n ✨ VOCÊ ATINGIU O NÍVEL 10 DE BATALHA! ✨ \n")
      nivelBatalha = 10
    }
  }

  funcao iniciarJogo(){
    cadeia teclaIniciarJogo
    escreva(" ╔═══════════════════════════════════════════════════╗", "\n")
    escreva(" ║      PRESSIONE QUALQUER TECLA INICIAR O JOGO      ║", "\n")
    escreva(" ╚═══════════════════════════════════════════════════╝", "\n")    
    leia(teclaIniciarJogo)

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

    cadeia nomeInimigo = "Paulinho Navalha Tropeira"
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
      se(vidaPersonagem<=0){ //morte personagem caraio 
        escreva("🥀 VOCÊ FOI DERROTADO POR ", nomeInimigo, " 🥀\n")
        escreva("✨ SEU XP TOTAL FOI: ", xpPersonagem, " ✨\n")
        escreva("😈 VOCÊ MATOU", contadorDeMonstros, "INIMIGOS 😈\n\n")
        escreva("Obrigado por jogar...\n")
        u.aguarde(15000)
        jogoRodando=falso
        pare  
        pare

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
          escreva("$:    10XP     5XP     5XP \n\n")

          escreva("╔══════════════════════════════╗", "\n")
          escreva("║      QUAL SUA ESCOLHA?       ║", "\n")
          escreva("╚══════════════════════════════╝", "\n\n")
          escreva("DIGITE 1 - HP MÁX ❤️\n")
          escreva("DIGITE 2 - +3DEF 🛡️\n")
          escreva("DIGITE 3 - +5ATK ⚔️\n")
          leia(opcaoLojaComerciante)

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
            se(classePersonagem==1){ 
              defesaPersonagem = defesaPersonagem + 3
              escreva("SUA DEFESA SE TORNOU ", defesaPersonagem, "! 🛡️\n")
            }
            se(classePersonagem==2){
              defesaPersonagem = defesaPersonagem + 3
            escreva("SUA DEFESA SE TORNOU ", defesaPersonagem, "! 🛡️\n")
            }
            se(classePersonagem==3){
              defesaPersonagem = defesaPersonagem + 3
              escreva("SUA DEFESA SE TORNOU ", defesaPersonagem, "! 🛡️\n")
            }             
          }
          se(opcaoLojaComerciante==3){  
            escreva("PARABÉNS, VOCÊ ADQUIRIU +5 DE ATAQUE! ⚔️\n")
            se(classePersonagem==1){ 
              ataquePersonagem = ataquePersonagem + 5
              escreva("SEU ATAQUE SE TORNOU ", ataquePersonagem, "! ⚔️\n")
            }
            se(classePersonagem==2){
              ataquePersonagem = ataquePersonagem + 5
              escreva("SUA ATAQUE SE TORNOU ", ataquePersonagem, "! ⚔️\n")
            }
            se(classePersonagem==3){
              ataquePersonagem = ataquePersonagem + 5
              escreva("SUA ATAQUE SE TORNOU ", ataquePersonagem, "! ⚔️\n")
            }  
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
    escreva(" ╔═══════════════════════════════════════════════════╗", "\n")
    escreva(" ║     PARABÉNS, VOCÊ TERMINOU A PRIMEIRA FASE!      ║", "\n")
    escreva(" ╚═══════════════════════════════════════════════════╝", "\n\n")
    u.aguarde(2000)
    escreva("PRESSIONE QUALQUER TECLA PARA PROSSEGUIR PARA A FASE 2!")  
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
    cadeia nomeInimigo = "Ladrão Cai-Cai"
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
      se(vidaPersonagem<=0){ //morte personagem caraio 
        escreva("🥀 VOCÊ FOI DERROTADO POR ", nomeInimigo, " 🥀\n")
        escreva("✨ SEU XP TOTAL FOI: ", xpPersonagem, " ✨\n")
        escreva("😈 VOCÊ MATOU", contadorDeMonstros, "INIMIGOS 😈\n\n")
        escreva("Obrigado por jogar...\n")
        u.aguarde(15000)
        jogoRodando=falso
        pare  
        pare
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

    cadeia nomeInimigo = "ESTALADOR SOMBRIO"
    inteiro vidaInimigo = 140
    inteiro ataqueInimigo = 40
    inteiro defesaInimigo = 15
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
      se(vidaPersonagem<=0){ //morte personagem caraio 
        escreva("🥀 VOCÊ FOI DERROTADO POR ", nomeInimigo, " 🥀\n")
        escreva("✨ SEU XP TOTAL FOI: ", xpPersonagem, " ✨\n")
        escreva("😈 VOCÊ MATOU", contadorDeMonstros, "INIMIGOS 😈\n\n")
        escreva("Obrigado por jogar...\n")
        u.aguarde(15000)
        jogoRodando=falso
        pare  
        pare
      }
      limpa()
    }
    escreva("Após essa batalha, você segue seu rumo...\n")
    u.aguarde(2800)
    limpa()
    escreva("APÓS DERROTAR O TEMIDO INIMIGO, SEU CORPO CAI AO CHÃO... \n")
    u.aguarde(2000)
    escreva("AS UM CÍRCULO RÚNICO COMEÇA A BRILHAR SOB ELE. UMA ESCOLHA SURGE DIANTE DE VOCÊ: \n\n")
    cadeia respostaSangueMorto
    enquanto(respostaSangueMorto!= 1 e respostaSangueMorto){
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
        escreva("SEU HP ATUAL - ", vidaPersonagem, " NOVAMENTE! ❤️\n")
      }
      se(classePersonagem==2){
        vidaPersonagem = 250
        escreva("SEU HP SE ATUAL - ", vidaPersonagem, " NOVAMENTE! ❤️\n")
      }
      se(classePersonagem==3){
        vidaPersonagem = 230
        escreva("SEU HP SE ATUAL - ", vidaPersonagem, " NOVAMENTE! ❤️\n")
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
    escreva("SEU HP ANTES", vidaPersonagem, "❤️\n")
    vidaPersonagem = vidaPersonagem - 5
    escreva("SEU HP AGORA", vidaPersonagem, "💔\n")
    u.aguarde(4000)
    limpa()

    cadeia nomeInimigo = "ARANHA DA CAVERNA SOMBRIA"
    inteiro vidaInimigo = 1
    inteiro ataqueInimigo = 1
    inteiro defesaInimigo = 1
    inteiro xpInimigo = 1
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
      se(vidaPersonagem<=0){ //morte personagem caraio 
        escreva("🥀 VOCÊ FOI DERROTADO POR ", nomeInimigo, " 🥀\n")
        escreva("✨ SEU XP TOTAL FOI: ", xpPersonagem, " ✨\n")
        escreva("😈 VOCÊ MATOU", contadorDeMonstros, "INIMIGOS 😈\n\n")
        escreva("Obrigado por jogar...\n")
        u.aguarde(15000)
        jogoRodando=falso
        pare  
        pare
      }
      limpa()
    }
    escreva("VOCÊ DÁ UM PISÃO SECO NA ARANHA 🦶🕷️\n")
    u.aguarde(1800)
    escreva("UM ESTALO SURDO... GOSMA ESCURA SE ESPALHA PELO CHÃO 💥🩸\n\n")
    u.aguarde(5000)
    limpa()
    escreva("UMA VOZ SUSSURRA DENTRO DA SUA MENTE... 👁️🖤")
    u.aguarde(1800)
    escreva("UM DESEJO OBSCURO SURGE: BEBER A GOSMA ESCURA 🩸🕷️")
    u.aguarde(1800)
    escreva("TALVEZ... ISSO CURE SUAS FERIDAS. OU PIOR.")
    u.aguarde(1800)
    cadeia respostaAranhaGosma
    enquanto(respostaAranhaGosma!=1 e respostaAranhaGosma!=2){
      escreva("╔════════════════════════╗", "\n")
      escreva("║  O QUE DESEJA FAZER?   ║", "\n")
      escreva("╚════════════════════════╝", "\n\n")
      escreva("DIGITE 1 - BEBER A GOSMA ESCURA 🩸🕷️")
      escreva("DIGITE 2 - NÃO BEBER A GOSMA ESCURA ❌🩸🕷️")
      leia(respostaAranhaGosma)
      limpa()
    }
    se(respostaAranhaGosma==1){
      escreva("VOCÊ LEVA A GOSMA ESCURA À BOCA... O SABOR É AMARGO, PODRE. 🩸🕷️\n")
      u.aguarde(2000)
      escreva("SUAS FERIDAS SE FECHAM. SUA VIDA É 100% RESTAURADA! 💀🔥\n\n")
      u.aguarde(1800)
      escreva("SEU HP ANTES", vidaPersonagem, "💔\n")
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
    escreva("VOCÊ CONTINUA CAMINHANDO... 🕸️")
    u.aguarde(1800)
    escreva("UMA LUZ SURGE AO LONGE 🌕")
    u.aguarde(1800)
    escreva("A SAÍDA DA CAVERNA ESTÁ PRÓXIMA.")
    u.aguarde(1800)

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
    }
    se(teclaTerminarFase3==1){
      indiceRegioes=1
    }
    se(teclaTerminarFase3==2){
      indiceRegioes=3
    }
  }
  funcao quartaFaseJogo(){
    escreva("teste")
  }


}