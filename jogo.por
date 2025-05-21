programa {

  inclua biblioteca Util --> u

  cadeia classe
  inteiro vidaMax
  inteiro ataque
  inteiro defesa
  inteiro xp
  inteiro nivel

  funcao inicio() {
    cadeia nomeJogador
    inteiro escolhaMenu
    inteiro numeroDaClasse

    escolhaMenu = menu_inicio()

    se(escolhaMenu == 1){
      limpa()
      /*nomeJogador = novo_jogo()*/
      classe()
      u.aguarde(1000)
      introducao_heroi()
      menu_acoes_jogo()

    }
    senao se(escolhaMenu == 2){
      limpa()
      creditos()
    }senao se(escolhaMenu == 3){
      sair()
    }
    
  }
  funcao inteiro menu_inicio(){
    inteiro escolhaMenu
    enquanto(escolhaMenu !=1 e escolhaMenu !=2 e escolhaMenu !=3){
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
    inteiro escolhaAcao
    escreva("══════「AÇÕES」══════\n")
    escreva("1 - Explorar Região\n")
    escreva("2 - Status do Herói\n")
    escreva("3 - Inventário\n")
    escreva("4 - Sair do jogo\n")
    leia(escolhaAcao)

  }

  /*funcao cadeia novo_jogo(){
    cadeia nome
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
    leia(nome)
    limpa()
    u.aguarde(500)
    escreva("| É um prazer grande herói ",nome,", eu sou o ARQUITETO.\n")
    u.aguarde(1000)
    escreva("| Irei aparecer em sua jornada com dicas e explicações sobre os acontecimentos que estão por vir...\n")
    u.aguarde(1000)
    escreva("| No momento vamos escolher sua classe.\n")
    retorne nome
  }*/
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
    inteiro numeroDaClasse
    escreva("══════「✦CLASSES✦」══════\n")
    escreva("1. ⚔️ Guerreiro (Alta vida e defesa)\n")
    escreva("2. 🏹 Arqueiro (Equilibrado)\n")
    escreva("3. 🔮 Mago (Alto ataque, baixa defesa)\n")
    leia(numeroDaClasse)

    logico voltar = falso

      enquanto(voltar == falso){
        cadeia confirmaClasse

        se(numeroDaClasse == 1){
          limpa()
          classe = "⚔️ Guerreiro"
          vidaMax = 120
          ataque = 10
          defesa = 15
          xp = 0
          nivel = 1
          escreva("⚔️ Guerreiro Nv.",nivel," Status:\n")
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
            classe = ""
            vidaMax = 0
            ataque = 0
            defesa = 0
            xp = 0
            nivel = 0
            classe()
          }
        }senao se(numeroDaClasse == 2){
          limpa()
          classe = "🏹 Arqueiro"
          vidaMax = 90
          ataque = 15
          defesa = 10
          xp = 0
          nivel = 1
          escreva("🏹 Arqueiro Nv.",nivel," Status:\n")
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
            classe = ""
            vidaMax = 0
            ataque = 0
            defesa = 0
            xp = 0
            nivel = 0
            classe()
          }
        }senao se(numeroDaClasse == 3){
          limpa()
          classe = "🔮 Mago"
          vidaMax = 70
          ataque = 20
          defesa = 5
          xp = 0
          nivel = 1
          escreva("🔮 Mago Nv.",nivel," Status:\n")
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
            classe = ""
            vidaMax = 0
            ataque = 0
            defesa = 0
            xp = 0
            nivel = 0
            classe()
          }
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
