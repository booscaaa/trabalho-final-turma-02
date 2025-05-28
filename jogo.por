programa {

  inclua biblioteca Util --> u

  cadeia nomeJogador = "Lucas"
  cadeia classe = ""
  inteiro vidaMax = 0
  inteiro vidaAtual = 0
  inteiro ataque = 0
  inteiro defesa = 0
  inteiro xp = 0
  inteiro nivel = 0
  inteiro contadorInimigo = 0

  funcao inicio() {
    cadeia escolhaMenu

    escolhaMenu = menu_inicio()

    se(escolhaMenu == 1){
      limpa()
      //novo_jogo()
      classe()
      u.aguarde(1000)
      //introducao_heroi()
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
    enquanto(escolhaAcao != 1 e escolhaAcao != 2 e escolhaAcao != 3 e escolhaAcao != 4){
      limpa()
      escreva("══════「AÇÕES」══════\n")
      escreva("1 - Explorar Região\n")
      escreva("2 - Status do Herói\n")
      escreva("3 - Inventário\n")
      escreva("4 - Sair do jogo\n")
      leia(escolhaAcao)
    }
    se(escolhaAcao == 1){
      se(contadorInimigo == 0){
        intro_floresta_lobo()
      }senao se(contadorInimigo == 1){
        intro_floresta_esqueleto()
      }
    }
    se(escolhaAcao == 2){
      status_heroi()
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
  }

  funcao introducao_heroi(){
    cadeia continuar
    limpa()
    escreva("| Sua jornada está prestes a começar...\n")
    u.aguarde(500)
    escreva("| Com sua coragem e habilidades, o destino de Eldoria agora repousa sobre seus ombros.\n")
    u.aguarde(500)
    escreva("| A aventura começa agora...\n")
    u.aguarde(500)
    escreva("---------------------------------------------------------------\n")
    u.aguarde(500)
    escreva("Pressione \"Enter\" para continuar\n")
    leia(continuar)
    se(continuar == ""){
      limpa()
      escreva("|*Você coloca o pé na estrada e começa sua jornada para encontrar a Pedra da Luz...*\n")
      u.aguarde(500)
      escreva("|*No caminho você encontra uma floresta corrompida e decide adentrar.*\n")
      u.aguarde(500)
      escreva("---------------------------------------------------------------\n")
      u.aguarde(500)
      escreva("Pressione \"Enter\" para continuar\n")
      leia(continuar)
      limpa()
      escreva("❗AVISO❗\n")
      u.aguarde(500)
      escreva("ENTRANDO NA FLORESTA DA NÉVOA...\n")
      u.aguarde(500)
    }
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
      escreva(classe," Nv.",nivel," XP [",xp,"/100"+"]\n")
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

  funcao intro_floresta_lobo(){
    cadeia voltar
    limpa()
    enquanto(voltar != ""){
      escreva("| Você adentra a Floresta da Névoa...\n")
      escreva("| A luz do sol mal atravessa as copas espessas das árvores.\n")
      escreva("| O ar é denso, carregado com o cheiro de folhas úmidas e perigo iminente.\n")
      escreva("| Você ouve galhos se partindo ao longe... algo está se aproximando.\n")
      escreva("| Um uivo rompe o silêncio. De dentro da neblina, surge um LOBO TERRÍVEL!\n")
      escreva("| Os olhos da criatura brilham em vermelho, famintos por batalha...\n\n")
      escreva("⚠️ O LOBO TERRÍVEL se aproxima, cuidado!!\n\n")
      escreva("-----------❗ LOBO TERRÍVEL ❗-----------\n")
      escreva("\nPressione \"Enter\" para começar a batalha\"\n")
      leia(voltar)
    }
    batalha_floresta(60,20,6,"🐺LOBO TERRÍVEL",2,60)
  }

  funcao intro_floresta_esqueleto(){
    cadeia voltar
    limpa()
    enquanto(voltar != ""){
      escreva("| Você continua a explorar a floresta misteriosa...\n")
      escreva("| O vento sopra entre as árvores, carregando um silêncio estranho no ar.\n")
      escreva("| De repente, você ouve um som de ossos se arrastando no chão...\n")
      escreva("| Um Esqueleto Sombrio emerge da neblina.\n")
      escreva("⚠️ Prepare-se para a batalha!\n\n")
      escreva("-----------❗ ESQUELETO SOMBRIO ❗-----------\n")
      escreva("\nPressione \"Enter\" para começar a batalha\"\n")
      leia(voltar)
    }
    batalha_floresta(70, 22, 8, "💀 ESQUELETO SOMBRIO", 3, 120)
  }
  funcao batalha_floresta(inteiro vidaMaxInimigo, inteiro ataqueInimigo, inteiro defesaInimigo, cadeia nomeInimigo, inteiro nivelInimigo, inteiro xpinimigo){
    limpa()
    inteiro vidaAtualInimigo = vidaMaxInimigo
    inteiro danoInimigo
    cadeia escolher
    logico defendendo = falso

    enquanto (vidaAtualInimigo > 0 e vidaAtual > 0){
      enquanto(escolher != 1 e escolher != 2){
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
      leia(escolher)
      limpa()
      }
      se(escolher == 1){
        inteiro dano = u.sorteia(5,ataque)
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

      u.aguarde(1000)

      se(vidaAtualInimigo > 0){
        danoInimigo = u.sorteia(1,ataqueInimigo)
        se(defendendo){
          danoInimigo = danoInimigo - u.sorteia(1,defesa)
        }
      }
      se(danoInimigo < 0){
        danoInimigo = 0
      }
      escreva("⚠️ O inimigo ataca e causa ",danoInimigo," de dano!\n")
      vidaAtual = vidaAtual - danoInimigo

      u.aguarde(1000)
      escolher = ""
    }
    se(vidaAtual <= 0){
      limpa()
      escreva("💀 Você foi derrotado pelo ",nomeInimigo,"...\n")
      escreva("Fim de jogo.\n")
    }
    se(vidaAtualInimigo <= 0){
      limpa()
      contadorInimigo++
      escreva("🎉 Você derrotou o ",nomeInimigo,"!\n")
      escreva("🏆 + 50 XP\n")
      xp = xp + xpinimigo
      se(xp >= 100){
        nivel = nivel + 1
        xp = xp - 100
        vidaMax = vidaMax + 8
        ataque = ataque + 6
        defesa = defesa + 2
        escreva("⬆️ Você subiu para o nível ",nivel,"!\n")
      }
    }
    se(vidaAtual > 0){
    cadeia continuar
    enquanto(continuar != ""){
    escreva("\nPressione \"Enter\" para voltar ao menu de ações\n")
    leia(continuar)
    limpa()
    }
    se(vidaAtual <= 45){
    descansar()
    u.aguarde(1000)
    }
    menu_acoes_jogo()
    }senao{
    }
  }
  funcao barra_de_vida_inimigo(inteiro vidaAtualInimigo, inteiro vidaMaxInimigo){
    inteiro i
    inteiro totalUnidades = vidaMaxInimigo / 10
    inteiro unidadeCheias = (vidaAtualInimigo * totalUnidades) / vidaMaxInimigo

    para(i = 0; i <= totalUnidades; i++){
      se(i <= unidadeCheias){
        escreva("❤️")
      }senao{
        escreva("🖤")
      }
    }
  }
  funcao barra_de_vida_heroi(inteiro vidaAtual, inteiro vidaMax){
    inteiro i
    inteiro totalUnidades = vidaMax / 10
    inteiro unidadeCheias = (vidaAtual * totalUnidades) / vidaMax

    para(i = 0; i <= totalUnidades; i++){
      se(i <= unidadeCheias){
        escreva("❤️")
      }senao{
        escreva("🖤")
      }
    }
  }
  funcao descansar(){
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