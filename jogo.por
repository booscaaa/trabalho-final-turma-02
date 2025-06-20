programa {

  inclua biblioteca Util --> u

  //Jogador
  cadeia nomeJogador = ""
  cadeia classe = ""
  inteiro vidaMax = 0
  inteiro vidaAtual = 0
  inteiro ataque = 0
  inteiro defesa = 0
  inteiro xp = 0
  inteiro xpParaUpar = 100
  inteiro nivel = 0
  cadeia classeEscolhida = ""

  //Ataques por classe
  inteiro ataquesGuerreiro[3] = {"CORTE DIRETO","INVESTIDA DUPLA","FÚRIA DO GUERREIRO"}
  inteiro ataquesArqueiro[3] = {"FLECHA RÁPIDA","FLECHAS DUPLAS","FLECHA PERFURANTE"}
  inteiro ataquesMago[3] = {"RAIO ARCANO","RAJADA MISTICA","EXLPOSÃO ARCANA"}
  inteiro contadorTurnos = 3

  //Regiões
  inteiro regiao[5] = {"Floresta da Névoa 🌫️🌲","Vila Abandonada 🏚️👻","Caverna Sombria 🕳️🦇","Pântano dos Lamentos 🐸🧪","Castelo Dourado 🏰✨"}
  inteiro contarRegiao = 0
  inteiro regiaoDesbloqueada = 0

  //Itens Jogador
  inteiro quantidadePocao = 1

  //Drops Inimigos
  inteiro moedasTotais = 0
  inteiro moedasGanhas = 0

  //Loja
  inteiro lojaPocao = 6
  inteiro lojaArma = 1
  inteiro lojaArmadura = 1
  cadeia classeEscolhida = "" //Número da Classe para os itens e ataques

  //Chefes Regiões
  logico miniChefes[4] = {verdadeiro, verdadeiro, verdadeiro, verdadeiro}
  cadeia nomesMiniChefes[4] = {"🐾 ALFA SOMBRIO","🧨 LADRÃO SANGUINÁRIO","⛰️ GOLEM PARTIDO","🐍 SERPENTE ESMERALDA"}

  funcao inicio() {
    cadeia escolhaMenu

    escolhaMenu = menu_inicio()

    se(escolhaMenu == 1){
      limpa()
      novo_jogo()
      classeEscolhida = classe()
      historia0()
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
    logico voltar = verdadeiro
    enquanto(escolhaAcao != 1 e escolhaAcao != 2 e escolhaAcao != 3 e escolhaAcao != 4 e escolhaAcao != 5 ou voltar == verdadeiro e vidaAtual > 0){
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
      explorar()
    }
    se(escolhaAcao == 2){
      status_heroi()
      voltar = verdadeiro
    }
    se(escolhaAcao == 3){
      loja()
      voltar = verdadeiro
    }
    se(escolhaAcao == 4){
      mudar_fase()
    }
    senao se(escolhaAcao == 5){
      sair()
      pare
    }
    }
  }

  funcao explorar(){
    se(contarRegiao == 0){
      limpa()
      escreva("| Um rugido ecoa na névoa: 🐺LOBO TERRÍVEL salta das sombras!\n")
      u.aguarde(2000)
      batalha(60, 15, 6,"🐺LOBO TERRÍVEL", 2, 60)
      se(vidaAtual <=0){
        retorne
      }
      limpa()
      escreva("| Mal há tempo para respirar e um novo inimigo se aproxima: 💀 ESQUELETO SOMBRIO surge empunhando uma espada enferrujada.\n")
      u.aguarde(2000)
      batalha(70, 20, 8, "💀 ESQUELETO SOMBRIO", 3, 90)
      se(vidaAtual <=0){
        retorne
      }
      verificar_mini_chefe()
      se(vidaAtual <=0){
        retorne
      }
      se(contarRegiao == regiaoDesbloqueada){
        regiaoDesbloqueada++
        historia1()
      }
      contarRegiao++
      retorne
    }
    se(contarRegiao == 1){
      limpa()
      escreva("| Um vulto salta do telhado com lâminas em punho: 🗡️ LADRÃO MASCARADO ataca sem aviso!\n")
      u.aguarde(2000)
      batalha(80, 25, 10, "🗡️ LADRÃO MASCARADO", 4, 120)
      se(vidaAtual <=0){
        retorne
      }
      limpa()
      escreva("| No silêncio que se segue, sussurros ecoam pelas ruas. 👻 ALMA PERDIDA emerge das sombras, amaldiçoando tudo ao redor.\n")
      u.aguarde(2000)
      batalha(90, 28, 12, "👻 ALMA PERDIDA", 5, 160)
      se(vidaAtual <=0){
        retorne
      }
      se(contarRegiao == regiaoDesbloqueada){
        historia2()
        regiaoDesbloqueada++
      }
      contarRegiao++
      retorne
    }
    se(contarRegiao == 2){
      limpa()
      escreva("| Estalidos e arranhões soam pelas paredes úmidas... 🦂 ESCORPIÃO DE PEDRA surge entre as rochas!\n")
      u.aguarde(2000)
      batalha(100, 30, 14, "🦂 ESCORPIÃO DE PEDRA", 6, 120)
      se(vidaAtual <=0){
        retorne
      }
      limpa()
      escreva("| O solo treme novamente quando 👹 OGRO GIGANTE atravessa um muro de pedras, rugindo e brandindo um enorme porrete.\n")
      u.aguarde(2000)
      batalha(110, 34, 16, "👹 OGRO GIGANTE ", 7, 150)
      se(vidaAtual <=0){
        retorne
      }
      se(contarRegiao == regiaoDesbloqueada){
        historia3()
        regiaoDesbloqueada++
      }
      contarRegiao++
      retorne
    }
    se(contarRegiao == 3){
      limpa()
      escreva("| Entre os galhos retorcidos, uma criatura salta da água fétida: 🦎 SALAMANDRA TÓXICA cospe ácido em sua direção!\n")
      u.aguarde(2000)
      batalha(120, 38, 18, "🦎 SALAMANDRA TÓXICA", 8, 160)
      se(vidaAtual <=0){
        retorne
      }
      limpa()
      escreva("| No centro do pântano, um rugido profundo ecoa. 🐲 DRAGÃO VENENOSO alça voo com suas asas pútridas e mortais.\n")
      u.aguarde(2000)
      batalha(130, 42, 20, "🐲 DRAGÃO VENENOSO", 9, 200)
      se(vidaAtual <=0){
        retorne
      }
      verificar_mini_chefe()
      se(vidaAtual <=0){
        retorne
      }
      se(contarRegiao == regiaoDesbloqueada){
        historia4()
        regiaoDesbloqueada++
      }
      contarRegiao++
      retorne
    }
    se(contarRegiao == 4){
      limpa()
      escreva("| Guardando a entrada está ⚔️ CAVALEIRO CORROMPIDO, cuja armadura resplandece em trevas. Ele bloqueia o caminho com sua espada negra.\n")
      u.aguarde(2000)
      batalha_cavaleiro(150, 48, 25, "⚔️ CAVALEIRO CORROMPIDO", 10, 200)
      se(vidaAtual <=0){
        retorne
      }
      historia5()
      u.aguarde(2000)
      batalha_devastador(180, 55, 30, "👑 O DEVASTADOR (Forma Corpórea)", 12)
      se(vidaAtual <=0){
        retorne
      }
      u.aguarde(2000)
      devastador_ascendido(240, 70, 38, "🔥 O DEVASTADOR ASCENDIDO (Forma Etérea)", 14)
      se(vidaAtual <=0){
        retorne
      }
      historia7()
      menu_inicio()
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
        vidaMax = 120
        vidaAtual = vidaMax
        ataque = 20
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
    }
  }

  funcao batalha(inteiro vidaMaxInimigo, inteiro ataqueInimigo, inteiro defesaInimigo, cadeia nomeInimigo, inteiro nivelInimigo, inteiro xpinimigo){
    limpa()
    inteiro vidaAtualInimigo = vidaMaxInimigo
    inteiro danoInimigo = ataqueInimigo - defesa
    cadeia escolher
    inteiro danoJogador = u.sorteia(ataque * 0.7, ataque)

    enquanto (vidaAtualInimigo > 0 e vidaAtual > 0){
      logico acaoValida = verdadeiro
      enquanto(escolher != 1 e escolher != 2 e escolher != 3 e escolher != 4){

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
      se(classeEscolhida == 1){
      escreva("1 - ",ataquesGuerreiro[0],"\n")
      escreva("2 - ",ataquesGuerreiro[1],"\n")
      escreva("3 - ",ataquesGuerreiro[2]," ")
      se(contadorTurnos > 0){
        escreva("(CARREGANDO)\n")
      }senao se(contadorTurnos <= 0){
        escreva("(PRONTO)\n")
      }
      }
      se(classeEscolhida == 2){
      escreva("1 - ",ataquesArqueiro[0],"\n")
      escreva("2 - ",ataquesArqueiro[1],"\n")
      escreva("3 - ",ataquesArqueiro[2]," ")
      se(contadorTurnos > 0){
        escreva("(CARREGANDO)\n")
      }senao se(contadorTurnos <= 0){
        escreva("(PRONTO)\n")
      }
      }
      se(classeEscolhida == 3){
      escreva("1 - ",ataquesMago[0],"\n")
      escreva("2 - ",ataquesMago[1],"\n")
      escreva("3 - ",ataquesMago[2]," ")
      se(contadorTurnos > 0){
        escreva("(CARREGANDO)\n")
      }senao se(contadorTurnos <= 0){
        escreva("(PRONTO)\n")
      }
      }

      se(quantidadePocao > 0){
        escreva("4 - CURAR ( ",quantidadePocao," )\n")
      }
      leia(escolher)
      limpa()
      }
      se(escolher == 1){
        se(danoJogador < 0){
          danoJogador = 0
        }
        escreva("💥 Você ataca o inimigo e causa ",danoJogador," de dano!\n")
        vidaAtualInimigo = vidaAtualInimigo - danoJogador
        se(vidaAtualInimigo <= 0){
          pare
        }
      }
      se(escolher == 2){
        inteiro chanceDeErrar
        danoJogador = (danoJogador * 0.7)
        se(danoJogador < 0){
          danoJogador = 0
        }
        escreva("💥 Você acerta o primeiro ataque e causa  ",danoJogador," de dano!\n")
        vidaAtualInimigo = vidaAtualInimigo - danoJogador
        u.aguarde(1000)
        danoJogador = u.sorteia(ataque * 0.7, ataque)

        chanceDeErrar = u.sorteia(1,3)
        se(chanceDeErrar < 3){
          escreva("💥 Você acerta o segundo ataque e causa ",danoJogador," de dano!\n")
          vidaAtualInimigo = vidaAtualInimigo - danoJogador
          se(vidaAtualInimigo <= 0){
            pare
          }
        }senao{
          escreva("🌀 Você ERRA o segundo ataque!\n")
        }
      }
      se(escolher == 3){
        inteiro danoBonus = (ataque * 0.2)
        se(contadorTurnos <= 0){
        contadorTurnos = 4
        escreva("💥 Você acerta um ataque especial e causa ",ataque," de dano puro!\n")
        vidaAtualInimigo = vidaAtualInimigo - ataque
        u.aguarde(1000)

        escreva("💥 Seu ataque foi tão poderoso que o inimigo sofreu mais ",danoBonus," de dano!\n")
        vidaAtualInimigo = vidaAtualInimigo - danoBonus
      }senao{
        escreva("⚠️ Você só pode usar esse ataque daqui ",contadorTurnos," turno(s)")
        acaoValida = falso
      }
      }
      se(escolher == 4){
        se(quantidadePocao > 0){
          vidaAtual += 100
          se(vidaAtual > vidaMax){
            vidaAtual = vidaMax
          }
          escreva("🧪 Você toma uma poção de cura e recupera 100 pontos de vida.\n")
          quantidadePocao = quantidadePocao - 1
        }senao{
          escreva("⚠️ Você não tem mais poções!\n")
          acaoValida = falso
        }
      }

      u.aguarde(1000)

      se(acaoValida e vidaAtualInimigo > 0){
        danoInimigo = u.sorteia(ataqueInimigo * 0.6, ataqueInimigo)

      se(danoInimigo < 0){
        danoInimigo = 0
      }
      escreva("⚠️ O inimigo ataca e causa ",danoInimigo," de dano!\n")
      vidaAtual = vidaAtual - danoInimigo
      u.aguarde(1000)
      contadorTurnos -= 1
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

  funcao verificar_mini_chefe(){
    cadeia opcao
    cadeia segundaOpcao
    logico voltar = falso
    se(miniChefes[0]){
      enquanto(opcao !=2 e vidaAtual > 0 ou voltar == verdadeiro){
        limpa()
        opcao = ""
        escreva("⚔️ Você sente uma presença dominante na floresta... O ALFA SOMBRIO surge!\n")
        escreva("Deseja enfrentar o Mini Chefe da região?\n")
        escreva("1 - Sim    |    2 - Não\n")
        leia(opcao)

        se(opcao == 1){
          se(nivel >= 3){
          limpa()
          cadeia opcaoMiniChefe
          logico voltar2
          enquanto(opcaoMiniChefe != 1 e opcaoMiniChefe != 2 e opcaoMiniChefe != 3 ou voltar2 == verdadeiro){
            limpa()
            escreva("💬 Deseja se preparar antes de enfrentar o mini chefe?\n")
            escreva("1 - ⚔️ Enfrentar o Mini Chefe\n")
            escreva("2 - 🛒 Ir para a Loja\n")
            escreva("3 - 📊 Ver Status\n")
            leia(opcaoMiniChefe)
            se(opcaoMiniChefe == 1){
              mini_chefe(80, 20, 8, "🐾 ALFA SOMBRIO", 3, 100)
              se(vidaAtual <= 0){
                pare
                pare
              }
              miniChefes[0] = falso
              pare
            }senao se(opcaoMiniChefe == 2){
              loja()
              voltar2 = verdadeiro
            }senao se(opcaoMiniChefe == 3){
              status_heroi()
              voltar2 = verdadeiro
            }senao{
              escreva("❗ Opção inválida. Tente novamente.\n")
              u.aguarde(1000)
              voltar2 = verdadeiro
            }
          }
          pare
          }senao{
            limpa()
            escreva("🚫 Você ainda não está preparado para enfrentar o ",nomesMiniChefes[0],". (Nível 3 necessário)\n")
            escreva("⚔️ Batalhe, suba de nível e tente novamente.\n")
            botao_enter()
            menu_acoes_jogo()
          }
        }senao se(opcao == 2){
          limpa()
          segundaOpcao = ""
          enquanto(segundaOpcao != 1){
            escreva("⚠️ Você está disposto a perder as recompensas que esse chefe irá lhe fornecer?\n")
            escreva("⚠️ Você não poderá mais encontrar com ele, mesmo que volte depois...\n")
            escreva("1 - Seguir    |    2 - Voltar\n")
            leia(segundaOpcao)
            se(segundaOpcao == 2){
              voltar = verdadeiro
              pare
            }senao se(segundaOpcao == 1){
              miniChefes[0] = falso
              voltar = falso
              pare
            }
          }
        }
      }
    }senao{

    }
    se(miniChefes[3] e regiaoDesbloqueada == 3){
      enquanto(opcao !=2 e vidaAtual > 0 ou voltar == verdadeiro){
        limpa()
        escreva("🌿 As águas do pântano começam a borbulhar... Uma enorme serpente surge! A SERPENTE ESMERALDA!\n")
        escreva("Deseja enfrentar o Mini Chefe da região?\n")
        escreva("1 - Sim    |    2 - Não\n")
        leia(opcao)

        se(opcao == 1){
          se(nivel >= 10){
          limpa()
          cadeia opcaoMiniChefe
          logico voltar2
          enquanto(opcaoMiniChefe != 1 e opcaoMiniChefe != 2 e opcaoMiniChefe != 3 ou voltar2 == verdadeiro){
            limpa()
            escreva("💬 Deseja se preparar antes de enfrentar o mini chefe?\n")
            escreva("1 - ⚔️ Enfrentar o Mini Chefe\n")
            escreva("2 - 🛒 Ir para a Loja\n")
            escreva("3 - 📊 Ver Status\n")
            leia(opcaoMiniChefe)
            se(opcaoMiniChefe == 1){
              mini_chefe(135, 40, 21, "🐍 SERPENTE ESMERALDA", 9, 220)
              se(vidaAtual <= 0){
                pare
                pare
              }
              miniChefes[3] = falso
              pare
            }senao se(opcaoMiniChefe == 2){
              loja()
              voltar2 = verdadeiro
            }senao se(opcaoMiniChefe == 3){
              status_heroi()
              voltar2 = verdadeiro
            }senao{
              escreva("❗ Opção inválida. Tente novamente.\n")
              u.aguarde(1000)
              voltar2 = verdadeiro
            }
          }
          pare
          }senao{
            limpa()
            escreva("🚫 Você ainda não está preparado para enfrentar a ",nomesMiniChefes[3],". (Nível 8 necessário)\n")
            escreva("⚔️ Batalhe, suba de nível e tente novamente.\n")
            botao_enter()
            menu_acoes_jogo()
          }
        }senao se(opcao == 2){
          limpa()
          enquanto(segundaOpcao != 1){
            escreva("⚠️ Você está disposto a perder as recompensas que esse chefe irá lhe fornecer?\n")
            escreva("⚠️ Você não poderá mais encontrar com ele, mesmo que volte depois...\n")
            escreva("1 - Seguir    |    2 - Voltar\n")
            leia(segundaOpcao)
            se(segundaOpcao == 2){
              voltar = verdadeiro
              pare
            }senao{
              miniChefes[3] = falso
              voltar = falso
              pare
            }
          }
        }
      }
    }
  }

  funcao mini_chefe(inteiro vidaMaxInimigo, inteiro ataqueInimigo, inteiro defesaInimigo, cadeia nomeInimigo, inteiro nivelInimigo, inteiro xpinimigo){
    limpa()
    inteiro vidaAtualInimigo = vidaMaxInimigo
    inteiro danoInimigo = ataqueInimigo - defesa
    inteiro danoJogador = u.sorteia(ataque * 0.7, ataque)
    cadeia escolher
    logico sangrando = falso
    inteiro danoSangramento = ataqueInimigo * 0.3
    logico envenenado = falso
    inteiro danoVeneno = ataqueInimigo * 0.4
    logico defendendo = falso

    enquanto (vidaAtualInimigo > 0 e vidaAtual > 0){
      logico acaoValida = verdadeiro
      enquanto(escolher != 1 e escolher != 2 e escolher != 3 e escolher != 4){

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
      se(classeEscolhida == 1){
      escreva("1 - ",ataquesGuerreiro[0],"\n")
      escreva("2 - ",ataquesGuerreiro[1],"\n")
      escreva("3 - ",ataquesGuerreiro[2]," ")
      se(contadorTurnos > 0){
        escreva("(CARREGANDO)\n")
      }senao se(contadorTurnos <= 0){
        escreva("(PRONTO)\n")
      }
      }
      se(classeEscolhida == 2){
      escreva("1 - ",ataquesArqueiro[0],"\n")
      escreva("2 - ",ataquesArqueiro[1],"\n")
      escreva("3 - ",ataquesArqueiro[2]," ")
      se(contadorTurnos > 0){
        escreva("(CARREGANDO)\n")
      }senao se(contadorTurnos <= 0){
        escreva("(PRONTO)\n")
      }
      }
      se(classeEscolhida == 3){
      escreva("1 - ",ataquesMago[0],"\n")
      escreva("2 - ",ataquesMago[1],"\n")
      escreva("3 - ",ataquesMago[2]," ")
      se(contadorTurnos > 0){
        escreva("(CARREGANDO)\n")
      }senao se(contadorTurnos <= 0){
        escreva("(PRONTO)\n")
      }
      }

      se(quantidadePocao > 0){
        escreva("4 - CURAR ( ",quantidadePocao," )\n")
      }
      leia(escolher)
      limpa()
      }
      se(escolher == 1){
        se(danoJogador < 0){
          danoJogador = 0
        }
        escreva("💥 Você ataca o inimigo e causa ",danoJogador," de dano!\n")
        vidaAtualInimigo = vidaAtualInimigo - danoJogador
        se(vidaAtualInimigo <= 0){
          pare
        }
      }
      se(escolher == 2){
        inteiro chanceDeErrar
        danoJogador = (danoJogador * 0.7)
        se(danoJogador < 0){
          danoJogador = 0
        }
        escreva("💥 Você acerta o primeiro ataque e causa  ",danoJogador," de dano!\n")
        vidaAtualInimigo = vidaAtualInimigo - danoJogador
        u.aguarde(1000)
        danoJogador = u.sorteia(ataque * 0.7, ataque)

        chanceDeErrar = u.sorteia(1,3)
        se(chanceDeErrar < 3){
          escreva("💥 Você acerta o segundo ataque e causa ",danoJogador," de dano!\n")
          vidaAtualInimigo = vidaAtualInimigo - danoJogador
          se(vidaAtualInimigo <= 0){
            pare
          }
        }senao{
          escreva("🌀 Você ERRA o segundo ataque!\n")
        }
      }
      se(escolher == 3){
        inteiro danoBonus = (ataque * 0.2)
        se(contadorTurnos <= 0){
        contadorTurnos = 3
        escreva("💥 Você acerta um ataque especial e causa ",ataque," de dano puro!\n")
        vidaAtualInimigo = vidaAtualInimigo - ataque
        u.aguarde(1000)

        escreva("💥 Seu ataque foi tão poderoso que o inimigo sofreu mais ",danoBonus," de dano\n!")
        vidaAtualInimigo = vidaAtualInimigo - danoBonus
      }senao{
        escreva("⚠️ Você só pode usar esse ataque daqui ",contadorTurnos," turno(s)")
        acaoValida = falso
      }
      }
      se(escolher == 4){
        se(quantidadePocao > 0){
          vidaAtual += 100
          se(vidaAtual > vidaMax){
            vidaAtual = vidaMax
          }
          escreva("🧪 Você toma uma poção de cura e recupera 100 pontos de vida.\n")
          quantidadePocao = quantidadePocao - 1
        }senao{
          escreva("⚠️ Você não tem mais poções!\n")
          acaoValida = falso
        }
      }

      u.aguarde(1000)

      se(nomeInimigo == nomesMiniChefes[0]){

        inteiro acao = u.sorteia(1,2)

        se(acao == 1){
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
          se(sangrando){
            escreva("🩸 Você está sangrando e perdeu ", danoSangramento, " de vida!\n")
            vidaAtual = vidaAtual - danoSangramento
            sangrando = falso
          }
          u.aguarde(1000)
          }
        }
        se(acao == 2){
        danoInimigo = u.sorteia(ataqueInimigo * 0.6, ataqueInimigo)
        se(defendendo){
          danoInimigo = ataqueInimigo - u.sorteia(3,defesa)
        }

        se(danoInimigo < 0){
          danoInimigo = 0
        }
        escreva("☄️ O ALFA da um golpe direto com sua garra ",danoInimigo," de dano!\n")
        vidaAtual = vidaAtual - danoInimigo
        u.aguarde(1000)
        escreva("🩸 Você fica com efeito de sangramento por um turno...\n")
        se(sangrando){
        escreva("🩸 Você está sangrando e perdeu ", danoSangramento, " de vida!\n")
        vidaAtual = vidaAtual - danoSangramento
        sangrando = falso
        }
        sangrando = verdadeiro
        u.aguarde(1500)
        }
      }
      se(nomeInimigo == nomesMiniChefes[3]){

        inteiro acao = u.sorteia(1,2)

        se(acao == 1){
          se(acaoValida e vidaAtualInimigo > 0){
            danoInimigo = u.sorteia(ataqueInimigo * 0.6, ataqueInimigo)
            se(defendendo){
              danoInimigo = ataqueInimigo - u.sorteia(3,defesa)
            }

          se(danoInimigo < 0){
            danoInimigo = 0
          }
          escreva("💥 A serpente gira e lhe atinge com a cauda ",danoInimigo," de dano!\n")
          vidaAtual = vidaAtual - danoInimigo
          se(envenenado){
            escreva("🧪 Você está envenenado, perdeu ", danoVeneno, " de vida!\n")
            vidaAtual = vidaAtual - danoVeneno
            envenenado = verdadeiro
          }
          u.aguarde(1000)
          }
        }
        se(acao == 2){
        danoInimigo = u.sorteia(ataqueInimigo * 0.6, ataqueInimigo)
        se(defendendo){
          danoInimigo = ataqueInimigo - u.sorteia(3,defesa)
        }

        se(danoInimigo < 0){
          danoInimigo = 0
        }
        escreva("☠️ A SERPENTE lhe ataca com uma mordida ",danoInimigo," de dano!\n")
        vidaAtual = vidaAtual - danoInimigo
        u.aguarde(1000)
        se(envenenado == falso){
        escreva("🧪 Você está envenenado até o final da batalha!\n")
        }
        se(envenenado){
        escreva("🧪 Você está envenenado, perdeu ", danoVeneno, " de vida!\n")
        vidaAtual = vidaAtual - danoVeneno
        }
        envenenado = verdadeiro
        u.aguarde(1500)
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
      se(contarRegiao == 0){
        moedasGanhas = u.sorteia(30,40)
      }senao se(contarRegiao == 1){
        moedasGanhas = u.sorteia(50,65)
      }senao se(contarRegiao == 2){
        moedasGanhas = u.sorteia(70,80)
      }senao se(contarRegiao == 3){
        moedasGanhas = u.sorteia(80,100)
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
    inteiro danoJogador = u.sorteia(ataque * 0.7, ataque)
    cadeia escolher
    logico defendendo = falso
    logico atordoado = falso
    enquanto (vidaAtualInimigo > 0 e vidaAtual > 0){
      logico acaoValida = verdadeiro
      enquanto(escolher != 1 e escolher != 2 e escolher != 3 e escolher != 4){

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
      se(classeEscolhida == 1){
      escreva("1 - ",ataquesGuerreiro[0],"\n")
      escreva("2 - ",ataquesGuerreiro[1],"\n")
      escreva("3 - ",ataquesGuerreiro[2]," ")
      se(contadorTurnos > 0){
        escreva("(CARREGANDO)\n")
      }senao se(contadorTurnos <= 0){
        escreva("(PRONTO)\n")
      }
      }
      se(classeEscolhida == 2){
      escreva("1 - ",ataquesArqueiro[0],"\n")
      escreva("2 - ",ataquesArqueiro[1],"\n")
      escreva("3 - ",ataquesArqueiro[2]," ")
      se(contadorTurnos > 0){
        escreva("(CARREGANDO)\n")
      }senao se(contadorTurnos <= 0){
        escreva("(PRONTO)\n")
      }
      }
      se(classeEscolhida == 3){
      escreva("1 - ",ataquesMago[0],"\n")
      escreva("2 - ",ataquesMago[1],"\n")
      escreva("3 - ",ataquesMago[2]," ")
      se(contadorTurnos > 0){
        escreva("(CARREGANDO)\n")
      }senao se(contadorTurnos <= 0){
        escreva("(PRONTO)\n")
      }
      }

      se(quantidadePocao > 0){
        escreva("4 - CURAR ( ",quantidadePocao," )\n")
      }
      leia(escolher)
      limpa()
      }
      se(escolher == 1){
        se(danoJogador < 0){
          danoJogador = 0
        }
        escreva("💥 Você ataca o inimigo e causa ",danoJogador," de dano!\n")
        vidaAtualInimigo = vidaAtualInimigo - danoJogador
        se(vidaAtualInimigo <= 0){
          pare
        }
      }
      se(escolher == 2){
        inteiro chanceDeErrar
        danoJogador = (danoJogador * 0.7)
        se(danoJogador < 0){
          danoJogador = 0
        }
        escreva("💥 Você acerta o primeiro ataque e causa  ",danoJogador," de dano!\n")
        vidaAtualInimigo = vidaAtualInimigo - danoJogador
        u.aguarde(1000)
        danoJogador = u.sorteia(ataque * 0.7, ataque)

        chanceDeErrar = u.sorteia(1,3)
        se(chanceDeErrar < 3){
          escreva("💥 Você acerta o segundo ataque e causa ",danoJogador," de dano!\n")
          vidaAtualInimigo = vidaAtualInimigo - danoJogador
          se(vidaAtualInimigo <= 0){
            pare
          }
        }senao{
          escreva("🌀 Você ERRA o segundo ataque!\n")
        }
      }
      se(escolher == 3){
        inteiro danoBonus = (ataque * 0.2)
        se(contadorTurnos <= 0){
        contadorTurnos = 4
        escreva("💥 Você acerta um ataque especial e causa ",ataque," de dano puro!\n")
        vidaAtualInimigo = vidaAtualInimigo - ataque
        u.aguarde(1000)

        escreva("💥 Seu ataque foi tão poderoso que o inimigo sofreu mais ",danoBonus," de dano\n!")
        vidaAtualInimigo = vidaAtualInimigo - danoBonus
      }senao{
        escreva("⚠️ Você só pode usar esse ataque daqui ",contadorTurnos," turno(s)")
        acaoValida = falso
      }
      }
      se(escolher == 4){
        se(quantidadePocao > 0){
          vidaAtual += 100
          se(vidaAtual > vidaMax){
            vidaAtual = vidaMax
          }
          escreva("🧪 Você toma uma poção de cura e recupera 100 pontos de vida.\n")
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
          inteiro danoCombo = (u.sorteia(10,ataqueInimigo * 0.5))

          escreva("⚠️ O CAVALEIRO da uma investida em sua direção e desfere um combo\n")
          u.aguarde(1000)
          escreva("🗡️ 1º Corte ",danoCombo," de dano!\n")
          vidaAtual = vidaAtual - danoCombo
          u.aguarde(1000)
          danoCombo = u.sorteia(10,ataqueInimigo * 0.5)
          escreva("🗡️ 2º Corte ",danoCombo," de dano!\n")
          vidaAtual = vidaAtual - danoCombo
          u.aguarde(1000)
          danoCombo = u.sorteia(10,ataqueInimigo * 0.5)
          escreva("🗡️ 3º Corte ",danoCombo," de dano!\n")
          vidaAtual = vidaAtual - danoCombo
          u.aguarde(1000)
          atordoado = falso
        }
        contadorTurnos -= 1
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
        ataque = ataque + (ataque * 0.1)
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
    inteiro danoJogador = u.sorteia(ataque * 0.7, ataque)
    cadeia escolher
    logico defendendo = falso
    logico sangrando = falso
    inteiro danoSangramento = danoInimigo * 0.2
    logico gritoTirano = falso
    enquanto (vidaAtualInimigo > 0 e vidaAtual > 0){
      logico acaoValida = verdadeiro
      enquanto(escolher != 1 e escolher != 2 e escolher != 3 e escolher != 4){

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
      se(classeEscolhida == 1){
      escreva("1 - ",ataquesGuerreiro[0],"\n")
      escreva("2 - ",ataquesGuerreiro[1],"\n")
      escreva("3 - ",ataquesGuerreiro[2]," ")
      se(contadorTurnos > 0){
        escreva("(CARREGANDO)\n")
      }senao se(contadorTurnos <= 0){
        escreva("(PRONTO)\n")
      }
      }
      se(classeEscolhida == 2){
      escreva("1 - ",ataquesArqueiro[0],"\n")
      escreva("2 - ",ataquesArqueiro[1],"\n")
      escreva("3 - ",ataquesArqueiro[2]," ")
      se(contadorTurnos > 0){
        escreva("(CARREGANDO)\n")
      }senao se(contadorTurnos <= 0){
        escreva("(PRONTO)\n")
      }
      }
      se(classeEscolhida == 3){
      escreva("1 - ",ataquesMago[0],"\n")
      escreva("2 - ",ataquesMago[1],"\n")
      escreva("3 - ",ataquesMago[2]," ")
      se(contadorTurnos > 0){
        escreva("(CARREGANDO)\n")
      }senao se(contadorTurnos <= 0){
        escreva("(PRONTO)\n")
      }
      }

      se(quantidadePocao > 0){
        escreva("4 - CURAR ( ",quantidadePocao," )\n")
      }
      leia(escolher)
      limpa()
      }
      se(escolher == 1){
        se(danoJogador < 0){
          danoJogador = 0
        }
        se(gritoTirano){
          escreva("💥 Você ataca o inimigo e causa ",danoJogador / 2," de dano!\n")
          vidaAtualInimigo = vidaAtualInimigo - danoJogador / 2
          se(vidaAtualInimigo <= 0){
            pare
          }
          gritoTirano = falso
        }senao{
          escreva("💥 Você ataca o inimigo e causa ",danoJogador," de dano!\n")
          vidaAtualInimigo = vidaAtualInimigo - danoJogador
          se(vidaAtualInimigo <= 0){
            pare
          }
        }
      }
      se(escolher == 2){
        inteiro chanceDeErrar
        danoJogador = (danoJogador * 0.7)
        se(danoJogador < 0){
          danoJogador = 0
        }
        se(gritoTirano){
          escreva("💥 Você acerta o primeiro ataque e causa  ",danoJogador / 2," de dano!\n")
          vidaAtualInimigo = vidaAtualInimigo - danoJogador / 2
          u.aguarde(1000)
          danoJogador = u.sorteia(ataque * 0.7, ataque)

          chanceDeErrar = u.sorteia(1,3)
          se(chanceDeErrar < 3){
            escreva("💥 Você acerta o segundo ataque e causa ",danoJogador / 2," de dano!\n")
            vidaAtualInimigo = vidaAtualInimigo - danoJogador / 2
            se(vidaAtualInimigo <= 0){
              pare
            }
          }senao{
            escreva("🌀 Você ERRA o segundo ataque!\n")
          }
          gritoTirano = falso
        }senao{
          escreva("💥 Você acerta o primeiro ataque e causa  ",danoJogador," de dano!\n")
          vidaAtualInimigo = vidaAtualInimigo - danoJogador
          u.aguarde(1000)
          danoJogador = u.sorteia(ataque * 0.7, ataque)

          chanceDeErrar = u.sorteia(1,3)
          se(chanceDeErrar < 3){
            escreva("💥 Você acerta o segundo ataque e causa ",danoJogador," de dano!\n")
            vidaAtualInimigo = vidaAtualInimigo - danoJogador
            se(vidaAtualInimigo <= 0){
              pare
            }
          }senao{
            escreva("🌀 Você ERRA o segundo ataque!\n")
          }
        }
      }
      se(escolher == 3){
        inteiro danoBonus = (ataque * 0.2)
        se(contadorTurnos <= 0){
        contadorTurnos = 4
        se(gritoTirano){
          escreva("| O grito do tirano não funciona em ataques especiais!\n")
          u.aguarde(1500)
        }
        escreva("💥 Você acerta um ataque especial e causa ",ataque," de dano puro!\n")
        vidaAtualInimigo = vidaAtualInimigo - ataque
        u.aguarde(1000)

        escreva("💥 Seu ataque foi tão poderoso que o inimigo sofreu mais ",danoBonus," de dano!\n")
        vidaAtualInimigo = vidaAtualInimigo - danoBonus
      }senao{
        escreva("⚠️ Você só pode usar esse ataque daqui ",contadorTurnos," turno(s)")
        acaoValida = falso
      }
      }
      se(escolher == 4){
        se(quantidadePocao > 0){
          vidaAtual += 100
          se(vidaAtual > vidaMax){
            vidaAtual = vidaMax
          }
          escreva("🧪 Você toma uma poção de cura e recupera 100 pontos de vida.\n")
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
          se(sangrando){
          escreva("🩸 Você está sangrando e perdeu ", danoSangramento, " de vida!\n")
          vidaAtual = vidaAtual - danoSangramento
          sangrando = falso
          }
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
        contadorTurnos -= 1
      }
      escolher = ""
    }
    se(vidaAtual <= 0){
      limpa()
      escreva("💀 Você foi derrotado pelo ",nomeInimigo,"...\n")
      escreva("Fim de jogo.\n")
    }
    se(vidaAtual > 0){
      u.aguarde(1000)
      limpa()
      escreva("| Parabéns, ",nomeJogador,"! Você derrotou o temido Devastador e salvou Eldoria...\n")
      u.aguarde(1000)
      escreva("| espera...\n")
      u.aguarde(1000)
      escreva("| o que está acontecendo?!\n")
      botao_enter()
      historia6()
    }
  }

  funcao devastador_ascendido(inteiro vidaMaxInimigo, inteiro ataqueInimigo, inteiro defesaInimigo, cadeia nomeInimigo, inteiro nivelInimigo){
    limpa()
    inteiro vidaAtualInimigo = vidaMaxInimigo
    inteiro danoInimigo = ataqueInimigo - defesa
    inteiro danoJogador = u.sorteia(ataque * 0.7, ataque)
    cadeia escolher
    logico defendendo = falso
    logico queimando = falso
    inteiro contadorFogo = 0
    inteiro danoFogo = danoInimigo * 0.2
    logico gritoTirano = falso
    enquanto (vidaAtualInimigo > 0 e vidaAtual > 0){
      logico acaoValida = verdadeiro
      enquanto(escolher != 1 e escolher != 2 e escolher != 3 e escolher != 4){

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
      se(classeEscolhida == 1){
      escreva("1 - ",ataquesGuerreiro[0],"\n")
      escreva("2 - ",ataquesGuerreiro[1],"\n")
      escreva("3 - ",ataquesGuerreiro[2]," ")
      se(contadorTurnos > 0){
        escreva("(CARREGANDO)\n")
      }senao se(contadorTurnos <= 0){
        escreva("(PRONTO)\n")
      }
      }
      se(classeEscolhida == 2){
      escreva("1 - ",ataquesArqueiro[0],"\n")
      escreva("2 - ",ataquesArqueiro[1],"\n")
      escreva("3 - ",ataquesArqueiro[2]," ")
      se(contadorTurnos > 0){
        escreva("(CARREGANDO)\n")
      }senao se(contadorTurnos <= 0){
        escreva("(PRONTO)\n")
      }
      }
      se(classeEscolhida == 3){
      escreva("1 - ",ataquesMago[0],"\n")
      escreva("2 - ",ataquesMago[1],"\n")
      escreva("3 - ",ataquesMago[2]," ")
      se(contadorTurnos > 0){
        escreva("(CARREGANDO)\n")
      }senao se(contadorTurnos <= 0){
        escreva("(PRONTO)\n")
      }
      }

      se(quantidadePocao > 0){
        escreva("4 - CURAR ( ",quantidadePocao," )\n")
      }
      leia(escolher)
      limpa()
      }
      se(escolher == 1){
        se(danoJogador < 0){
          danoJogador = 0
        }
        se(gritoTirano){
          escreva("💥 Você ataca o inimigo e causa ",danoJogador / 2," de dano!\n")
          vidaAtualInimigo = vidaAtualInimigo - danoJogador / 2
          se(vidaAtualInimigo <= 0){
            pare
          }
          gritoTirano = falso
        }senao{
          escreva("💥 Você ataca o inimigo e causa ",danoJogador," de dano!\n")
          vidaAtualInimigo = vidaAtualInimigo - danoJogador
          se(vidaAtualInimigo <= 0){
            pare
          }
        }
      }
      se(escolher == 2){
        inteiro chanceDeErrar
        danoJogador = (danoJogador * 0.7)
        se(danoJogador < 0){
          danoJogador = 0
        }
        se(gritoTirano){
          escreva("💥 Você acerta o primeiro ataque e causa  ",danoJogador / 2," de dano!\n")
          vidaAtualInimigo = vidaAtualInimigo - danoJogador / 2
          u.aguarde(1000)
          danoJogador = u.sorteia(ataque * 0.7, ataque)

          chanceDeErrar = u.sorteia(1,3)
          se(chanceDeErrar < 3){
            escreva("💥 Você acerta o segundo ataque e causa ",danoJogador / 2," de dano!\n")
            vidaAtualInimigo = vidaAtualInimigo - danoJogador / 2
            se(vidaAtualInimigo <= 0){
              pare
            }
          }senao{
            escreva("🌀 Você ERRA o segundo ataque!\n")
          }
          gritoTirano = falso
        }senao{
          escreva("💥 Você acerta o primeiro ataque e causa  ",danoJogador," de dano!\n")
          vidaAtualInimigo = vidaAtualInimigo - danoJogador
          u.aguarde(1000)
          danoJogador = u.sorteia(ataque * 0.7, ataque)

          chanceDeErrar = u.sorteia(1,3)
          se(chanceDeErrar < 3){
            escreva("💥 Você acerta o segundo ataque e causa ",danoJogador," de dano!\n")
            vidaAtualInimigo = vidaAtualInimigo - danoJogador
            se(vidaAtualInimigo <= 0){
              pare
            }
          }senao{
            escreva("🌀 Você ERRA o segundo ataque!\n")
          }
        }
      }
      se(escolher == 3){
        inteiro danoBonus = (ataque * 0.2)
        se(contadorTurnos <= 0){
        contadorTurnos = 4
        se(gritoTirano){
          escreva("| O grito do tirano não funciona em ataques especiais!\n")
          u.aguarde(1500)
        }
        escreva("💥 Você acerta um ataque especial e causa ",ataque," de dano puro!\n")
        vidaAtualInimigo = vidaAtualInimigo - ataque
        u.aguarde(1000)

        escreva("💥 Seu ataque foi tão poderoso que o inimigo sofreu mais ",danoBonus," de dano!\n")
        vidaAtualInimigo = vidaAtualInimigo - danoBonus
      }senao{
        escreva("⚠️ Você só pode usar esse ataque daqui ",contadorTurnos," turno(s)")
        acaoValida = falso
      }
      }
      se(escolher == 4){
        se(quantidadePocao > 0){
          vidaAtual += 100
          se(vidaAtual > vidaMax){
            vidaAtual = vidaMax
          }
          escreva("🧪 Você toma uma poção de cura e recupera 100 pontos de vida.\n")
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
        contadorTurnos -= 1
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
    }
    se(vidaAtual > 0){
    u.aguarde(1500)
    }
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
      escreva("1 - ( ",lojaPocao," ) 🧪 Poção de Cura (+100 Vida) - 20 💰\n")
      escreva("2 - ( ",lojaArma," ) ",itemClasse[classeEscolhida - 1]," (+5 Ataque) - 100 💰\n")
      escreva("3 - ( ",lojaArmadura," ) 🛡️ Armadura de Ferro (+3 Defesa) - 80 💰\n")
      escreva("4 - ❌ Sair da loja\n")
      escreva("------------------------------\n")
      escreva("Escolha uma opção: ")
      leia(item)

      escolha (item){

        caso "1":
        se(lojaPocao > 0){
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
        }senao{
          escreva("❗ Sem estoque!")
          u.aguarde(1000)
        }
        pare

        caso "2":
        se(lojaArma > 0){
          se(moedasTotais >= 100){
            moedasTotais -= 100
            lojaArma -= 1
            escreva("Você comprou ",itemClasse[classeEscolhida - 1]," (+5 Ataque)\n")
            ataque += 5
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
        pare

        caso contrario:
        escreva("❗ Opção inválida. Tente novamente.\n")
        u.aguarde(1000)
        pare
      }
    }

  }

  funcao historia0(){
    limpa()
    escreva("| Em um mundo mergulhado em sombras, ",nomeJogador," parte em sua jornada para restaurar a luz em Eldoria.\n")
    u.aguarde(1000)
    escreva("| A primeira parada é a Floresta da Névoa 🌫️🌲 um lugar denso e traiçoeiro, onde a luz mal atravessa a copa das árvores.\n")
    u.aguarde(1000)
    escreva("| Criaturas ocultas espreitam entre as árvores... ",nomeJogador," sente a presença de algo hostil.\n")
    u.aguarde(1000)
    botao_enter()
  }
  funcao historia1(){
    limpa()
    escreva("| Após vencer os horrores da floresta, ",nomeJogador," encontra os portões quebrados da Vila Abandonada 🏚️👻\n")
    u.aguarde(1000)
    escreva("| As casas estão em ruínas, tomadas por ladrões e espíritos inquietos.\n")
    u.aguarde(1000)
    botao_enter()
  }
  funcao historia2(){
    limpa()
    escreva("| Com determinação, ",nomeJogador," segue para a Caverna Sombria 🕳️🦇\n")
    u.aguarde(1500)
    botao_enter()
  }
  funcao historia3(){
    limpa()
    escreva("| ",nomeJogador," sai da escuridão e entra no Pântano dos Lamentos 🐸🧪.\n")
    u.aguarde(1500)
    botao_enter()
  }
  funcao historia4(){
    limpa()
    escreva("| Finalmente, ",nomeJogador," chega aos portões do Castelo Dourado 🏰✨. O céu está encoberto, e um silêncio sombrio domina o ar.\n")
    u.aguarde(1500)
    botao_enter()
  }
  funcao historia5(){
    limpa()
    escreva("| Portões rangem e se abrem... ",nomeJogador," adentra o salão principal, onde um trono de ossos e ouro aguarda.\n")
    escreva("| No trono, ergue-se 👑 O DEVASTADOR (Forma Corpórea), exalando poder puro e corrupção. A batalha final começa!\n")
    u.aguarde(1500)
    botao_enter()
  }
  funcao historia6(){
    limpa()
    escreva("| Quando seus golpes finais atingem o corpo do Devastador, ele cai de joelhos, exalando um riso distorcido.\n")
    u.aguarde(1500)
    escreva("| Uma névoa densa envolve seu corpo caído. A escuridão consome tudo ao redor.\n")
    u.aguarde(1500)
    escreva("| O trono se desfaz. Raios de energia sombria rasgam o chão.\n")
    u.aguarde(1500)
    escreva("| A essência do mal renasce diante de ",nomeJogador,": 🔥 O DEVASTADOR ASCENDIDO (Forma Etérea) levita com olhos em chamas e voz que ecoa como trovão.\n")
    u.aguarde(1500)
    escreva("| Esta é a batalha final. A última esperança de Eldoria repousa nas mãos de ",nomeJogador,".\n")
    u.aguarde(1500)
    botao_enter()
  }
  funcao historia7(){
    limpa()
    escreva("| Com um último golpe, a essência de 🔥 O DEVASTADOR ASCENDIDO se desfaz em chamas etéreas, ecoando em um grito final.\n")
    u.aguarde(1000)
    escreva("| A escuridão que cobria Eldoria começa a recuar lentamente... como se o próprio mundo respirasse aliviado.\n")
    u.aguarde(1000)
    escreva("| A luz retorna aos céus. As árvores florescem. O pântano se purifica. E as almas perdidas enfim encontram paz.\n")
    u.aguarde(1000)
    escreva("| ",nomeJogador," observa os salões em ruínas do Castelo Dourado enquanto a Pedra da Luz reaparece, flutuando em seu brilho restaurado.\n")
    u.aguarde(1000)
    escreva("| A relíquia sagrada volta ao seu lugar de origem, selando o ciclo das trevas.\n")
    u.aguarde(1000)
    escreva("| As lendas contarão sobre esta jornada por gerações. O herói sem nome, aquele que enfrentou o mal absoluto... e venceu.\n")
    u.aguarde(1000)
    escreva("| Eldoria está a salvo, e tudo graças à coragem de ",nomeJogador,".\n")
    u.aguarde(1000)
    escreva("| Fim da jornada...\n")
    u.aguarde(1000)
    botao_enter()
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