programa {

  inclua biblioteca Util --> u

  cadeia nomeJogador = "Gelado amigo do Oruam"
  cadeia classe = ""
  inteiro vidaMax = 0
  inteiro vidaAtual = 0
  inteiro ataque = 0
  inteiro defesa = 0
  inteiro xp = 0
  inteiro xpParaUpar = 100
  inteiro nivel = 0
  inteiro quantidadePocao = 0
  inteiro regiao[5] = {"Floresta da Névoa 🌫️🌲","Vila Abandonada 🏚️👻","Caverna Sombria 🕳️🦇","Pântano dos Lamentos 🐸🧪","Castelo Dourado 🏰✨"}
  inteiro contarRegiao = 0

  funcao inicio() {
    cadeia escolhaMenu

    escolhaMenu = menu_inicio()

    se(escolhaMenu == 1){
      limpa()
      classe()
      menu_acoes_jogo()
    }
    senao se(escolhaMenu == 2){
      limpa()
      creditos()
    }senao se(escolhaMenu == 3){
      sair()
    }

  }
  funcao cadeia menu_inicio(){
    cadeia escolhaMenu
    enquanto(escolhaMenu !=1 e escolhaMenu !=2 e escolhaMenu !=3){
      limpa()
      escreva("✨Eldoria: A Jornada em busca da Luz✨\n-------------------------------\n")
      escreva("══════「MENU」══════\n")
      escreva("1 - Novo jogo\n")
      escreva("2 - Créditos\n")
      escreva("3 - Sair\n")
      leia(escolhaMenu)
    }
    retorne escolhaMenu
  }

  funcao menu_acoes_jogo(){
    cadeia escolhaAcao
    enquanto(escolhaAcao != 1 e escolhaAcao != 2 e escolhaAcao != 3){
      limpa()
      escreva("---------------------------")
      escreva("\n",regiao[contarRegiao],"\n")
      escreva("---------------------------")
      escreva("\n══════「AÇÕES」══════\n")
      escreva("1 - Explorar Região\n")
      escreva("2 - Status do Herói\n")
      escreva("3 - Sair do jogo\n")
      leia(escolhaAcao)

    se(escolhaAcao == 1){
        se(contarRegiao == 0){
          batalha(60, 15, 6,"🐺LOBO TERRÍVEL",2, 60)
          se(vidaAtual <= 0){
            pare
          }
          se(vidaAtual <= 45 e vidaAtual > 0){
            descansar()
            u.aguarde(1000)
          }
          batalha(70, 22, 8, "💀 ESQUELETO SOMBRIO", 3, 90)
          se(vidaAtual <= 0){
            pare
          }
          intro_vila_abandonada()
          contarRegiao++
          menu_acoes_jogo()
        }
        se(contarRegiao == 1){
          batalha(80, 25, 10, "🗡️ LADRÃO MASCARADO", 4, 120)
          se(vidaAtual <= 0){
            pare
          }
          se(vidaAtual <= 45 e vidaAtual > 0){
            descansar()
            u.aguarde(1000)
          }
          batalha(90, 28, 12, "👻 ALMA PERDIDA", 5, 160)
          se(vidaAtual <= 0){
            pare
          }
          contarRegiao++
          menu_acoes_jogo()
        }
        se(contarRegiao == 2){
          batalha(100, 30, 14, "🦂 ESCORPIÃO DE PEDRA", 6, 120)
          se(vidaAtual <= 0){
            pare
          }
          se(vidaAtual <= 45 e vidaAtual > 0){
            descansar()
            u.aguarde(1000)
          }
          batalha(110, 34, 16, "👹 OGRO GIGANTE ", 7, 150)
          se(vidaAtual <= 0){
            pare
          }
          contarRegiao++
          menu_acoes_jogo()
        }
        se(contarRegiao == 3){
          batalha(120, 38, 18, "🦎 SALAMANDRA TÓXICA", 8, 160)
          se(vidaAtual <= 0){
            pare
          }
          se(vidaAtual <= 45 e vidaAtual > 0){
            descansar()
            u.aguarde(1000)
          }
          batalha(130, 42, 20, "🐲 DRAGÃO VENENOSO", 9, 200)
          se(vidaAtual <= 0){
            pare
          }
          contarRegiao++
          menu_acoes_jogo()
        }
        se(contarRegiao == 4){
          batalha(150, 48, 25, "⚔️ CAVALEIRO CORROMPIDO", 10, 200)
          batalha(180, 55, 30, "👑 O DEVASTADOR", 12, 300)
        }
    }
    se(escolhaAcao == 2){
      status_heroi()
    }senao se(escolhaAcao == 3){
      sair()
    }
    }
  }

  funcao novo_jogo(){
    escreva("| Há muito tempo, o Reino de Eldoria vivia em paz.\n")
    u.aguarde(1000)
    escreva("| No centro do reino, a Pedra da Luz brilhava, afastando as trevas.\n")
    u.aguarde(1000)
    escreva("| Mas tudo mudou quando O Devastador roubou a relíquia sagrada.\n")
    u.aguarde(1000)
    escreva("| Criaturas sombrias emergiram, vilas caíram... a esperança se apagou.\n")
    u.aguarde(1000)
    escreva("| Quando tudo parecia estar perdido, um herói surgiu das sombras.\n")
    u.aguarde(1000)
    escreva("| Esse herói... é você.\n")
    u.aguarde(1000)
    escreva("| Como posso lhe chamar?\n")
    leia(nomeJogador)
    limpa()
    u.aguarde(500)
    escreva("| É um prazer grande herói ",nomeJogador,", eu sou o ARQUITETO.\n")
    u.aguarde(1000)
    escreva("| Irei aparecer em sua jornada com dicas e explicações sobre os acontecimentos que estão por vir...\n")
    u.aguarde(1000)
    escreva("| No momento vamos escolher sua classe.\n")
    botao_enter()
  }

  funcao classe(){
    cadeia numeroDaClasse
    cadeia confirmaClasse
    logico voltar = falso

    enquanto(voltar == falso){
    enquanto(numeroDaClasse != 1 e numeroDaClasse != 2 e numeroDaClasse != 3){
      limpa()
      escreva("══════════「✦CLASSES✦」══════════\n")
      escreva("1. ⚔️ Guerreiro (Alta vida e defesa)\n")
      escreva("2. 🏹 Arqueiro (Equilibrado)\n")
      escreva("3. 🔮 Mago (Alto ataque, baixa defesa)\n")
      leia(numeroDaClasse)
    }
      se(numeroDaClasse == 1){
        classe = "⚔️ Guerreiro"
        vidaMax = 120
        vidaAtual = vidaMax
        ataque = 20
        defesa = 15
      }senao se(numeroDaClasse == 2){
        classe = "🏹 Arqueiro"
        vidaMax = 90
        vidaAtual = vidaMax
        ataque = 15
        defesa = 10
      }senao se(numeroDaClasse == 3){
        classe = "🔮 Mago"
        vidaMax = 70
        vidaAtual = vidaMax
        ataque = 25
        defesa = 5
      }
      xp = 0
      nivel = 1
      limpa()
      escreva(classe," Nv.",nivel," Status:\n")
      escreva("----------------------------\n")
      escreva("❤️ Vida: ",vidaMax,"\n")
      escreva("🗡️ Ataque: ",ataque,"\n")
      escreva("🛡️ Defesa: ",defesa,"\n")
      escreva("\n1 - Confirmar    2 - Voltar\n")
      leia(confirmaClasse)
      se(confirmaClasse == 1){
        limpa()
        escreva("✅ Classe escolhida com sucesso!\n")
        voltar = verdadeiro
      }senao se(confirmaClasse == 2){
        limpa()
        voltar = falso
        numeroDaClasse = ""
        confirmaClasse = ""
      }
    }
  }

  funcao status_heroi(){
    cadeia voltar
    limpa()
    enquanto(voltar != ""){
      limpa()
      escreva("══════════「STATUS」══════════\n")
      escreva(classe," Nv.",nivel," XP [",xp,"/",xpParaUpar,"]\n")
      escreva("----------------------------\n")
      escreva("❤️ Vida: ",vidaAtual,"/",vidaMax,"\n")
      escreva("🗡️ Ataque: ",ataque,"\n")
      escreva("🛡️ Defesa: ",defesa,"\n")
      escreva("\n\nPressione \"Enter\" para voltar\n")
      leia(voltar)
    }
    se(voltar == ""){
      menu_acoes_jogo()
    }
  }

  funcao batalha(inteiro vidaMaxInimigo, inteiro ataqueInimigo, inteiro defesaInimigo, cadeia nomeInimigo, inteiro nivelInimigo, inteiro xpinimigo){
    limpa()
    inteiro vidaAtualInimigo = vidaMaxInimigo
    inteiro danoInimigo = ataqueInimigo - defesa
    cadeia escolher
    logico defendendo = falso

    enquanto (vidaAtualInimigo > 0 e vidaAtual > 0){
      logico acaoValida = verdadeiro
      enquanto(escolher != 1 e escolher != 2 e escolher != 3){

      limpa()
      escreva(nomeInimigo," Nv.",nivelInimigo,"\n")
      escreva("❤️ Vida: ",vidaAtualInimigo,"/",vidaMaxInimigo,"\n")
      escreva("🛡️ Defesa: ",defesaInimigo,"\n")
      barra_de_vida_inimigo(vidaAtualInimigo, vidaMaxInimigo)
      escreva("\n----------------------------------\n")

      escreva(nomeJogador," (",classe,") Nv. ",nivel,"\n")
      escreva("❤️ Vida: ",vidaAtual,"/",vidaMax,"\n")
      escreva("🛡️ Defesa: ",defesa,"\n")
      barra_de_vida_heroi(vidaAtual, vidaMax)
      escreva("\n----------------------------------\n")

      escreva("Escolha sua ação:\n")
      escreva("1 - Atacar   |   2 - Defender\n")
      se(quantidadePocao > 0 e contarRegiao > 0){
        escreva("3 - Curar\n")
      }
      leia(escolher)
      limpa()
      }
      se(escolher == 1){
        inteiro dano = u.sorteia(10,ataque)
        se(dano < 0){
          dano = 0
        }
        escreva("💥 Você ataca o inimigo e causa ",dano," de dano!\n")
        vidaAtualInimigo = vidaAtualInimigo - dano
        defendendo = falso
        se(vidaAtualInimigo <= 0){
          pare
        }
      }
      se(escolher == 2){
        escreva("🛡️ Você se prepara para defender o próximo ataque.\n")
        defendendo = verdadeiro
      }
      se(escolher == 3){
        se(quantidadePocao > 0){
          vidaAtual = vidaMax
          escreva("🧪 Você toma uma poção de cura e recupera toda a sua vida.\n")
          quantidadePocao = quantidadePocao - 1
        }senao{
          escreva("⚠️ Você não tem mais poções!\n")
          acaoValida = falso
        }
      }

      u.aguarde(1000)

      se(acaoValida e vidaAtualInimigo > 0){
        danoInimigo = u.sorteia(5,ataqueInimigo)
        se(defendendo){
          danoInimigo = ataqueInimigo - u.sorteia(3,defesa)
        }
      
      se(danoInimigo < 0){
        danoInimigo = 0
      }
      escreva("⚠️ O inimigo ataca e causa ",danoInimigo," de dano!\n")
      vidaAtual = vidaAtual - danoInimigo
      u.aguarde(1000)
      }
      escolher = ""
    }
    se(vidaAtual <= 0){
      limpa()
      escreva("💀 Você foi derrotado pelo ",nomeInimigo,"...\n")
      escreva("Fim de jogo.\n")
    }
    se(vidaAtualInimigo <= 0){
      limpa()
      escreva("🎉 Você derrotou o ",nomeInimigo,"!\n")
      escreva("🏆 + ",xpinimigo," XP\n")
      xp = xp + xpinimigo
      se(xp >= xpParaUpar){
        nivel = nivel + 1
        xp = xp - xpParaUpar
        vidaMax = vidaMax + (vidaMax * 0.1)
        vidaAtual = vidaMax
        ataque = ataque + (ataque * 0.15)
        defesa = defesa + 2
        xpParaUpar += 10
        escreva("⬆️ Você subiu para o nível ",nivel,"!\n")
      }
    }
    se(vidaAtual > 0){
    botao_enter()
    }
  }

  funcao intro_vila_abandonada(){
    limpa()
    escreva("| Após atravessar a misteriosa Floresta da Névoa...\n")
    escreva("| O herói segue por uma trilha coberta por galhos e folhas úmidas.\n")
    escreva("| A névoa começa a desaparecer, revelando construções antigas e silenciosas.\n")
    escreva("| O vento sopra entre as casas destruídas...\n")
    escreva("| Portas rangem. Janelas batem com força.\n")
    escreva("| Você chegou à Vila Abandonada.\n")
    escreva("| Um lugar esquecido, tomado por sombras e memórias.\n")
    botao_enter()
    limpa()
    escreva("❗AVISO❗\n")
    u.aguarde(1000)
    escreva("VOCÊ CHEGOU À VILA ABANDONADA...\n\n")
    u.aguarde(1000)
    escreva("| Ao vasculhar as ruínas da vila, você encontra um velho baú coberto de poeira...\n")
    escreva("| Com algum esforço, você o abre e encontra uma poção de cura em seu interior!\n")
    quantidadePocao = quantidadePocao + 1
    escreva("-------------\n")
    escreva("+1 POÇÃO 🧪\n")
    escreva("-------------\n")
    escreva("| Você agora possui ", quantidadePocao, " poção de cura.\n")
    botao_enter()
    limpa()
    escreva("| Você aproveita e descansa para recuperar as energias.\n")
    vidaAtual = vidaMax
    escreva("❤️ Vida atual: ", vidaAtual, "/", vidaMax, "\n")
    botao_enter()
  }

  funcao barra_de_vida_inimigo(inteiro vidaAtualInimigo, inteiro vidaMaxInimigo){
    inteiro i
    inteiro totalUnidades = 10
    inteiro unidadeCheias = (vidaAtualInimigo * totalUnidades) / vidaMaxInimigo

    para(i = 1; i <= totalUnidades; i++){
      se(i <= unidadeCheias){
        escreva("❤️")
      }senao{
        escreva("🖤")
      }
    }
  }

  funcao barra_de_vida_heroi(inteiro vidaAtual, inteiro vidaMax){
    inteiro i
    inteiro totalUnidades = 10
    inteiro unidadeCheias = (vidaAtual * totalUnidades) / vidaMax

    para(i = 1; i <= totalUnidades; i++){
      se(i <= unidadeCheias){
        escreva("❤️")
      }senao{
        escreva("🖤")
      }
    }
  }

  funcao descansar(){
    limpa()
    cadeia descanso
    enquanto(descanso != 1 e descanso !=2){
      escreva("Você está bem ferido, deseja descansar para recuperar um pouco de vida?\n")
      escreva("1 - Sim ✅    |    2 - Não ❌\n")
      leia(descanso)

      se(descanso == 1){
        limpa()
        escreva("Cochilando💤")
        u.aguarde(700)
        escreva("💤")
        u.aguarde(700)
        escreva("💤")
        u.aguarde(700)
        limpa()
        escreva("Cochilando💤")
        u.aguarde(700)
        escreva("💤")
        u.aguarde(700)
        escreva("💤")
        u.aguarde(700)
        limpa()
        escreva("🛏️ Você descansa tranquilamente\n")
        u.aguarde(700)
        escreva("✨ +20 pontos de vida!\n")
        vidaAtual += 20
        u.aguarde(700)
        escreva("❤️ Vida atual: ", vidaAtual, "/", vidaMax, "\n")
      }senao se(descanso == 2){
        limpa()
        u.aguarde(500)
        escreva("⚔️ Você decide continuar sua jornada sem descansar.\n")
      }
    }
  }

  funcao creditos(){
    escreva("════════「🌟 CRÉDITOS 🌟」════════\n")
    u.aguarde(600)
    escreva("💻 Desenvolvido por --> Lucas Lima <--\n")
    u.aguarde(600)
    escreva("📘 Matéria de Lógica de Programação\n")
    u.aguarde(600)
    escreva("✍🏻 Professor Vinícius Boscadin\n")
    u.aguarde(600)
    escreva("📅 Iniciado no dia 17-05-2025\n")
  }
  funcao botao_enter(){
    cadeia continuar
    enquanto(continuar != ""){
      escreva("\nPressione \"Enter\" para continuar.\n")
      leia(continuar)
    }
  }
  funcao sair(){
      limpa()
      escreva("🔚 Saindo.")
      u.aguarde(700)
      limpa()
      escreva("🔚 Saindo..")
      u.aguarde(700)
      limpa()
      escreva("🔚 Saindo...")
      u.aguarde(700)
      limpa()
  }
}