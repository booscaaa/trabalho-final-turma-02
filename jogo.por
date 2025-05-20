programa {

  inclua biblioteca Util --> u

  funcao inicio() {
    cadeia nomeJogador = "Lucas"
    cadeia classe
    inteiro vidaMax
    inteiro ataque
    inteiro defesa
    inteiro xp
    inteiro nivel
    inteiro escolhaMenu
    inteiro numeroDaClasse

    escolhaMenu = menu_inicio()

    se(escolhaMenu == 1){
      limpa()
      /*nomeJogador = novo_jogo()*/
      logico voltar = falso
      
      enquanto(voltar == falso){
        inteiro confirmaClasse

        numeroDaClasse = classe()

        se(numeroDaClasse == 1){
          limpa()
          vidaMax = 120
          ataque = 10
          defesa = 15
          xp = 0
          nivel = 1
          escreva("⚔️ Guerreiro Nv.",nivel," Status:\n")
          escreva("❤️ Vida: ",vidaMax,"\n")
          escreva("🗡️ Ataque: ",ataque,"\n")
          escreva("🛡️ Defesa: ",defesa,"\n")
          escreva("\n1 - Confirmar    2 - Voltar\n")
          leia(confirmaClasse)
          se(confirmaClasse == 1){
            limpa()
            escreva("Classe escolhida com sucesso!\n")
            voltar = verdadeiro
          }senao se(confirmaClasse == 2){
            limpa()
            voltar = falso
          }
        }senao se(numeroDaClasse == 2){
          limpa()
          vidaMax = 90
          ataque = 15
          defesa = 10
          xp = 0
          nivel = 1
          escreva("🏹 Arqueiro Nv.",nivel," Status:\n")
          escreva("❤️ Vida: ",vidaMax,"\n")
          escreva("🗡️ Ataque: ",ataque,"\n")
          escreva("🛡️ Defesa: ",defesa,"\n")
          escreva("\n1 - Confirmar    2 - Voltar\n")
          leia(confirmaClasse)
          se(confirmaClasse == 1){
            limpa()
            escreva("Classe escolhida com sucesso!\n")
            voltar = verdadeiro
          }senao se(confirmaClasse == 2){
            limpa()
            voltar = falso
          }
        }senao se(numeroDaClasse == 3){
          limpa()
          vidaMax = 70
          ataque = 20
          defesa = 5
          xp = 0
          nivel = 1
          escreva("🔮 Mago Nv.",nivel," Status:\n")
          escreva("❤️ Vida: ",vidaMax,"\n")
          escreva("🗡️ Ataque: ",ataque,"\n")
          escreva("🛡️ Defesa: ",defesa,"\n")
          escreva("\n1 - Confirmar    2 - Voltar\n")
          leia(confirmaClasse)
          se(confirmaClasse == 1){
            limpa()
            escreva("Classe escolhida com sucesso!\n")
            voltar = verdadeiro
          }senao se(confirmaClasse == 2){
            limpa()
            voltar = falso
          }
        }
      }
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
    escreva("✨Eldoria: A Jornada em busca da Luz✨\n-------------------------------\n")
    escreva("══════「MENU」══════\n")
    escreva("1 - Novo jogo\n")
    escreva("2 - Créditos\n")
    escreva("3 - Sair\n")
    leia(escolhaMenu)
    retorne escolhaMenu
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
  
  funcao inteiro classe(){
    inteiro escolherClasse
    escreva("══════「✦CLASSES✦」══════\n")
    escreva("1. ⚔️ Guerreiro (Alta vida e defesa)\n")
    escreva("2. 🏹 Arqueiro (Equilibrado)\n")
    escreva("3. 🔮 Mago (Alto ataque, baixa defesa)\n")
    leia(escolherClasse)
    retorne escolherClasse
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
