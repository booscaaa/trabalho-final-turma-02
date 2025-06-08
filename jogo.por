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
  inteiro regiaoDesbloqueada = 0
  inteiro moedasTotais = 1000
  inteiro moedasGanhas = 0
  cadeia classeEscolhida = ""

  //Itens loja
  inteiro lojaPocao = 5
  inteiro lojaArma = 1
  inteiro lojaArmadura = 1


  funcao inicio() {
    cadeia escolhaMenu
  
    escolhaMenu = menu_inicio()

    se(escolhaMenu == 1){
      limpa()
      classeEscolhida = classe()
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
    enquanto(escolhaAcao != 1 e escolhaAcao != 2 e escolhaAcao != 3 e escolhaAcao != 4 e escolhaAcao != 5){
      limpa()
      escreva("---------------------------")
      escreva("\n",regiao[contarRegiao],"\n")
      escreva("---------------------------")
      escreva("\n══════「AÇÕES」══════\n")
      escreva("1 - Explorar Região\n")
      escreva("2 - Status do Herói\n")
      escreva("3 - Loja\n")
      escreva("4 - Mudar de Fase\n")
      escreva("5 - Sair do jogo\n")
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
          se(contarRegiao == regiaoDesbloqueada){
            regiaoDesbloqueada++
          }
          //intro_vila_abandonada()
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
          se(contarRegiao == regiaoDesbloqueada){
            regiaoDesbloqueada++
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
          se(contarRegiao == regiaoDesbloqueada){
            regiaoDesbloqueada++
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
          se(contarRegiao == regiaoDesbloqueada){
            regiaoDesbloqueada++
          }
          contarRegiao++
          menu_acoes_jogo()
        }
        se(contarRegiao == 4){
          batalha_cavaleiro(150, 48, 25, "⚔️ CAVALEIRO CORROMPIDO", 10, 200)
          se(vidaAtual <= 0){
            pare
          }
          batalha_devastador(180, 55, 30, "👑 O DEVASTADOR (Forma Corpórea)", 12)
          se(vidaAtual <= 0){
            pare
          }
          devastador_ascendido(240, 70, 38, "🔥 O DEVASTADOR ASCENDIDO (Forma Etérea)", 14)
          se(vidaAtual <= 0){
            pare
          }
        }
    }
    se(escolhaAcao == 2){
      status_heroi()
    }
    se(escolhaAcao == 3){
      loja()
    }
    se(escolhaAcao == 4){
      mudar_fase()
    }
    senao se(escolhaAcao == 5){
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

  funcao cadeia classe(){
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
        vidaMax = 12000
        vidaAtual = vidaMax
        ataque = 2000
        defesa = 15
      }senao se(numeroDaClasse == 2){
        classe = "🏹 Arqueiro"
        vidaMax = 90
        vidaAtual = vidaMax
        ataque = 18
        defesa = 12
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
        retorne numeroDaClasse
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
      escreva("💰 Moedas: ",moedasTotais,"\n")
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
        inteiro dano = u.sorteia(ataque * 0.7, ataque)
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
          vidaAtual += 40
          se(vidaAtual > vidaMax){
            vidaAtual = vidaMax
          }
          escreva("🧪 Você toma uma poção de cura e recupera 40 pontos de vida.\n")
          quantidadePocao = quantidadePocao - 1
        }senao{
          escreva("⚠️ Você não tem mais poções!\n")
          acaoValida = falso
        }
      }

      u.aguarde(1000)

      se(acaoValida e vidaAtualInimigo > 0){
        danoInimigo = u.sorteia(ataqueInimigo * 0.6, ataqueInimigo)
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
      se(contarRegiao == 0){
        moedasGanhas = u.sorteia(10,15)
      }senao se(contarRegiao == 1){
        moedasGanhas = u.sorteia(18,22)
      }senao se(contarRegiao == 2){
        moedasGanhas = u.sorteia(26,30)
      }senao se(contarRegiao == 3){
        moedasGanhas = u.sorteia(34,38)
      }
      escreva("💰 + ",moedasGanhas," moedas!\n")
      moedasTotais = moedasTotais + moedasGanhas
      se(xp >= xpParaUpar){
        nivel = nivel + 1
        xp = xp - xpParaUpar
        vidaMax = vidaMax + (vidaMax * 0.1)
        vidaAtual = vidaMax
        ataque = ataque + (ataque * 0.1)
        defesa = defesa + 2
        xpParaUpar = xpParaUpar + (xpParaUpar * 0.1)
        escreva("⬆️ Você subiu para o nível ",nivel,"!\n")
      }
    }
    se(vidaAtual > 0){
    botao_enter()
    }
  }

  funcao batalha_cavaleiro(inteiro vidaMaxInimigo, inteiro ataqueInimigo, inteiro defesaInimigo, cadeia nomeInimigo, inteiro nivelInimigo, inteiro xpinimigo){
    limpa()
    inteiro vidaAtualInimigo = vidaMaxInimigo
    inteiro danoInimigo = ataqueInimigo - defesa
    cadeia escolher
    logico defendendo = falso
    logico atordoado = falso
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
        inteiro dano = u.sorteia(ataque * 0.7, ataque)
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
          vidaAtual += 40
          se(vidaAtual > vidaMax){
            vidaAtual = vidaMax
          }
          escreva("🧪 Você toma uma poção de cura e recupera 40 pontos de vida.\n")
          quantidadePocao = quantidadePocao - 1
        }senao{
          escreva("⚠️ Você não tem mais poções!\n")
          acaoValida = falso
        }
      }

      u.aguarde(1000)

      se(acaoValida e vidaAtualInimigo > 0){

        inteiro acao = u.sorteia(1,5)

        se(acao <= 2){
        danoInimigo = u.sorteia(ataqueInimigo * 0.6, ataqueInimigo)
        se(defendendo){
          danoInimigo = ataqueInimigo - u.sorteia(3,defesa)
        }

        se(danoInimigo < 0){
          danoInimigo = 0
        }
        escreva("⚠️ O CAVALEIRO da um golpe direto com sua espada ",danoInimigo," de dano!\n")
        vidaAtual = vidaAtual - danoInimigo
        atordoado = falso
        u.aguarde(1500)
        }
        se(acao == 3){
          inteiro danoAtordoante = danoInimigo * 0.3

        se(danoInimigo < 0){
          danoInimigo = 0
        }
        escreva("⚠️ O CAVALEIRO ataca usando o escudo e causa ",danoAtordoante," de dano!\n")
        escreva("🌀 Você fica atordoado e não pode atacar...\n")
        vidaAtual = vidaAtual - danoAtordoante
        atordoado = verdadeiro
        u.aguarde(2000)

        danoInimigo = u.sorteia(5,ataqueInimigo)
        se(defendendo){
          danoInimigo = ataqueInimigo - u.sorteia(3,defesa)
        }

        se(danoInimigo < 0){
          danoInimigo = 0
        }
        escreva("⚠️ O inimigo CAVALEIRO novamente e causa ",danoInimigo," de dano!\n")
        vidaAtual = vidaAtual - danoInimigo
        atordoado = falso
        u.aguarde(1500)
        }
        se(acao > 3){
          inteiro danoCombo = (u.sorteia(8,ataqueInimigo * 0.4))

          escreva("⚠️ O CAVALEIRO da uma investida em sua direção e desfere um combo\n")
          u.aguarde(1000)
          escreva("🗡️ 1º Corte ",danoCombo," de dano!\n")
          vidaAtual = vidaAtual - danoCombo
          u.aguarde(1000)
          danoCombo = u.sorteia(8,danoInimigo * 0.4)
          escreva("🗡️ 2º Corte ",danoCombo," de dano!\n")
          vidaAtual = vidaAtual - danoCombo
          u.aguarde(1000)
          danoCombo = u.sorteia(8,danoInimigo * 0.4)
          escreva("🗡️ 3º Corte ",danoCombo," de dano!\n")
          vidaAtual = vidaAtual - danoCombo
          u.aguarde(1000)
          atordoado = falso
        }
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
      moedasGanhas = 50
      escreva("💰 +",moedasGanhas," moedas!\n")
      moedasTotais = moedasTotais + moedasGanhas
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

  funcao batalha_devastador(inteiro vidaMaxInimigo, inteiro ataqueInimigo, inteiro defesaInimigo, cadeia nomeInimigo, inteiro nivelInimigo){
    limpa()
    inteiro vidaAtualInimigo = vidaMaxInimigo
    inteiro danoInimigo = ataqueInimigo - defesa
    cadeia escolher
    logico defendendo = falso
    logico sangrando = falso
    inteiro danoSangramento = danoInimigo * 0.2
    logico gritoTirano = falso
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
        inteiro dano = u.sorteia(ataque * 0.7, ataque)
        se(dano < 0){
          dano = 0
        }
        se(gritoTirano){
          escreva("💥 Você ataca o inimigo e causa ",dano/2," de dano!\n")
          vidaAtualInimigo = vidaAtualInimigo - dano/2
          gritoTirano = falso
          defendendo = falso
          se(vidaAtualInimigo <= 0){
          pare
        }
        }senao{
          escreva("💥 Você ataca o inimigo e causa ",dano," de dano!\n")
          vidaAtualInimigo = vidaAtualInimigo - dano
          defendendo = falso
          se(vidaAtualInimigo <= 0){
            pare
          }
        }
      }
      se(escolher == 2){
        escreva("🛡️ Você se prepara para defender o próximo ataque.\n")
        defendendo = verdadeiro
      }
      se(escolher == 3){
        se(quantidadePocao > 0){
          vidaAtual += 40
          se(vidaAtual > vidaMax){
            vidaAtual = vidaMax
          }
          escreva("🧪 Você toma uma poção de cura e recupera 40 pontos de vida.\n")
          quantidadePocao = quantidadePocao - 1
        }senao{
          escreva("⚠️ Você não tem mais poções!\n")
          acaoValida = falso
        }
      }

      u.aguarde(1000)

      se(acaoValida e vidaAtualInimigo > 0){

        inteiro acao = u.sorteia(1,5)

        se(acao <= 2){
        danoInimigo = u.sorteia(ataqueInimigo * 0.6, ataqueInimigo)
        se(defendendo){
          danoInimigo = ataqueInimigo - u.sorteia(3,defesa)
        }

        se(danoInimigo < 0){
          danoInimigo = 0
        }
        escreva("⚠️ O DEVASTADOR da um golpe direto com sua espada ",danoInimigo," de dano!\n")
        vidaAtual = vidaAtual - danoInimigo
        u.aguarde(1000)
        se(sangrando){
          escreva("🩸 Você está sangrando e perdeu ", danoSangramento, " de vida!\n")
          vidaAtual = vidaAtual - danoSangramento
          sangrando = falso
        }
        u.aguarde(1500)
        }

        se(acao == 3){

          se(danoInimigo < 0){
            danoInimigo = 0
          }
          escreva("⚠️ O DEVASTADOR lhe da um golpe especial chamado CORTE PROFANO ",danoInimigo," de dano!\n")
          vidaAtual = vidaAtual - danoInimigo
          escreva("🩸 Você fica com efeito de sangramento por um turno...\n")
          vidaAtual = vidaAtual - danoSangramento
          sangrando = verdadeiro
          u.aguarde(2000)

          danoInimigo = u.sorteia(5,ataqueInimigo)
          se(defendendo){
            danoInimigo = ataqueInimigo - u.sorteia(3,defesa)
          }

          se(danoInimigo < 0){
            danoInimigo = 0
          }
        }
        se(acao > 3){

          escreva("⚠️ O DEVASTADOR utiliza a habilidade GRITO TIRANO 🌪️\n")
          u.aguarde(1000)
          escreva("💬 Não lhe causa dano, mas o seu próximo ataque causa menos dano...\n")
          gritoTirano = verdadeiro
          u.aguarde(1000)
          se(sangrando){
          escreva("🩸 Você está sangrando e perdeu ", danoSangramento, " de vida!\n")
          vidaAtual = vidaAtual - danoSangramento
          sangrando = falso
        }
          u.aguarde(1000)
        }
      }
      escolher = ""
    }
    se(vidaAtual <= 0){
      limpa()
      escreva("💀 Você foi derrotado pelo ",nomeInimigo,"...\n")
      escreva("Fim de jogo.\n")
    }
    se(vidaAtual > 0){
    botao_enter()
    }
  }

  funcao devastador_ascendido(inteiro vidaMaxInimigo, inteiro ataqueInimigo, inteiro defesaInimigo, cadeia nomeInimigo, inteiro nivelInimigo){
    limpa()
    inteiro vidaAtualInimigo = vidaMaxInimigo
    inteiro danoInimigo = ataqueInimigo - defesa
    cadeia escolher
    logico defendendo = falso
    logico queimando = falso
    inteiro contadorFogo = 0
    inteiro danoFogo = danoInimigo * 0.2
    logico gritoTirano = falso
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
        inteiro dano = u.sorteia(ataque * 0.7, ataque)
        se(dano < 0){
          dano = 0
        }
        se(gritoTirano == verdadeiro){
          escreva("💥 Você ataca o inimigo e causa ",dano/2," de dano!\n")
          vidaAtualInimigo = vidaAtualInimigo - dano/2
          gritoTirano = falso
          defendendo = falso
          se(vidaAtualInimigo <= 0){
          pare
        }
        }senao{
          escreva("💥 Você ataca o inimigo e causa ",dano," de dano!\n")
          vidaAtualInimigo = vidaAtualInimigo - dano
          defendendo = falso
          se(vidaAtualInimigo <= 0){
            pare
          }
        }
      }
      se(escolher == 2){
        escreva("🛡️ Você se prepara para defender o próximo ataque.\n")
        defendendo = verdadeiro
      }
      se(escolher == 3){
        se(quantidadePocao > 0){
          vidaAtual += 40
          se(vidaAtual > vidaMax){
            vidaAtual = vidaMax
          }
          escreva("🧪 Você toma uma poção de cura e recupera 40 pontos de vida.\n")
          quantidadePocao = quantidadePocao - 1
        }senao{
          escreva("⚠️ Você não tem mais poções!\n")
          acaoValida = falso
        }
      }

      u.aguarde(1000)

      se(acaoValida e vidaAtualInimigo > 0){

        inteiro acao = u.sorteia(1,5)

        se(acao <= 3){
          danoInimigo = u.sorteia(ataqueInimigo * 0.6, ataqueInimigo)
          se(defendendo){
            danoInimigo = ataqueInimigo - u.sorteia(3,defesa)
          }

          se(danoInimigo < 0){
            danoInimigo = 0
          }
          escreva("⚠️ O DEVASTADOR da um golpe direto com sua espada ",danoInimigo," de dano!\n")
          vidaAtual = vidaAtual - danoInimigo
          u.aguarde(1000)
          se(contadorFogo > 0){
            escreva("🔥 Você está pegando fogo, perdeu ", danoFogo, " de vida!\n")
            vidaAtual = vidaAtual - danoFogo
            u.aguarde(1000)
            contadorFogo--
          }senao{
            
          }
          u.aguarde(1500)
        }

        se(acao == 4){
          inteiro danoPedra = ataqueInimigo * 0.5
          se(danoInimigo < 0){
            danoInimigo = 0
          }
          escreva("⚠️ O DEVASTADOR faz um gesto e provoca um APOCALIPSE CARMESIM, esferas carmesins caem do céu...\n")
          escreva("🔥🪨 Você é atingido por uma pedra em chamas, ",danoPedra,"\n")
          vidaAtual = vidaAtual - danoPedra
          u.aguarde(1500)
          danoPedra = u.sorteia(25,danoPedra)
          escreva("🔥🪨 Você é atingido por outra pedra, ",danoPedra,"\n")
          vidaAtual = vidaAtual - danoPedra
          u.aguarde(1500)
          escreva("⚠️ Você fica em chamas por 2 turnos\n")
          u.aguarde(1500)
          contadorFogo = 2
          se(defendendo){
            danoInimigo = ataqueInimigo - u.sorteia(3,defesa)
          }

          se(danoInimigo < 0){
            danoInimigo = 0
          }
        }
        se(acao == 5){

          escreva("⚠️ O DEVASTADOR utiliza a habilidade GRITO TIRANO 🌪️\n")
          u.aguarde(1000)
          escreva("💬 Não lhe causa dano, mas o seu próximo ataque causa menos dano...\n")
          gritoTirano = verdadeiro
          u.aguarde(1000)
          se(contadorFogo > 0){
            escreva("🔥 Você está pegando fogo, perdeu ", danoFogo, " de vida!\n")
            vidaAtual = vidaAtual - danoFogo
            u.aguarde(1000)
            contadorFogo--
          }senao{

          }
          u.aguarde(1000)
        }
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
      escreva("Matou geral parabéns")
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
    quantidadePocao++
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

  funcao mudar_fase(){
    cadeia opcao
    enquanto(opcao != 1 e opcao != 2){
      limpa()
      escreva("════════════════ MENU REGIÃO ════════════════\n")
      escreva("Região Atual: ", regiao[contarRegiao], "\n")
      escreva("1 - Voltar ⬅️     |     2 - Avançar ➡️\n")
      escreva("═════════════════════════════════════════════\n")
      leia(opcao)
      se(opcao == 1){
        se(contarRegiao > 0){
          contarRegiao--
          limpa()
          escreva("⬅️ Voltando para ",regiao[contarRegiao])
          u.aguarde(1000)
          menu_acoes_jogo()
        }senao{
          limpa()
          escreva("⚠️ Você já está na primeira região!\n")
          u.aguarde(1000)
          menu_acoes_jogo()
        }
      }senao se(opcao == 2){
        se(contarRegiao < regiaoDesbloqueada){
          contarRegiao++
          limpa()
          escreva("➡️ Avançando para ",regiao[contarRegiao])
          u.aguarde(1000)
          menu_acoes_jogo()
        }senao{
          limpa()
          escreva("⚠️ Você ainda não derrotou os inimigos da região atual...\n")
          u.aguarde(1000)
          menu_acoes_jogo()
        }
      }
    }
  }
  
  funcao loja(){
    cadeia item
    cadeia sair
    inteiro itemClasse[3] = {"⚔️ Espada Rúnica","🏹 Arco Longo","🔮 Cajado Elemental"}
    enquanto(item != 4){
      limpa()
      escreva("\n══════════「LOJA」══════════\n")
      escreva("Você possui ", moedasTotais, " moedas 💰\n")
      escreva("------------------------------\n")
      escreva("1 - ( ",lojaPocao," ) 🧪 Poção de Cura (+40 Vida) - 20 💰\n")
      escreva("2 - ( ",lojaArma," ) ",itemClasse[classeEscolhida - 1]," (+5 Ataque) - 100 💰\n")
      escreva("3 - ( ",lojaArmadura," ) 🛡️ Armadura de Ferro (+3 Defesa) - 80 💰\n")
      escreva("4 - ❌ Sair da loja\n")
      escreva("------------------------------\n")
      escreva("Escolha uma opção: ")
      leia(item)

      escolha (item){

        caso "1":
        se(moedasTotais >= 20){
          moedasTotais -= 20
          lojaPocao -= 1
          escreva("Você comprou uma 🧪 Poção de Cura!\n")
          quantidadePocao += 1
          u.aguarde(1000)
        }senao{
          escreva("💰 Você não tem moedas suficientes!\n")
          u.aguarde(1000)
        }
        pare

        caso "2":
        se(lojaArma > 0){
          se(moedasTotais >= 100){
            moedasTotais -= 100
            lojaArma -= 1
            escreva("Você comprou ",itemClasse[classeEscolhida - 1]," (+5 Ataque)\n")
            ataque =+ 5
            u.aguarde(1000)
          }senao{
            escreva("💰 Você não tem moedas suficientes!\n")
            u.aguarde(1000)
          }
        }senao{
          escreva("❗ Sem estoque!")
          u.aguarde(1000)
        }
        pare

        caso "3":
        se(lojaArmadura > 0){
          se(moedasTotais >= 80){
            moedasTotais -= 80
            lojaArmadura -= 1
            escreva("Você comprou a 🛡️ Armadura de Ferro! (+3 Defesa)\n")
            defesa += 3
            u.aguarde(1000)
          }senao{
            escreva("💰 Você não tem moedas suficientes!\n")
            u.aguarde(1000)
          }
        }senao{
          escreva("❗ Sem estoque!")
          u.aguarde(1000)
        }
        pare

        caso "4":
        menu_acoes_jogo()

        caso contrario:
        escreva("❗ Opção inválida. Tente novamente.\n")
        u.aguarde(1000)
        pare
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