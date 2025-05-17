programa {

  inclua biblioteca Util --> u

  funcao inicio() {
    cadeia nomeJogador
    inteiro escolhaMenu

    escolhaMenu = menu_inicio()
    se(escolhaMenu == 1){
      limpa()
      nomeJogador = novo_jogo()
    }
    senao se(escolhaMenu == 2){
      limpa()
      creditos()
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

  funcao cadeia novo_jogo(){
    cadeia nome
    escreva("Há muito tempo, o Reino de Eldoria vivia em paz.\n")
    u.aguarde(1000)
    escreva("No centro do reino, a Pedra da Luz brilhava, afastando as trevas.\n")
    u.aguarde(1000)
    escreva("Mas tudo mudou quando O Devastador roubou a relíquia sagrada.\n")
    u.aguarde(1000)
    escreva("Criaturas sombrias emergiram, vilas caíram... a esperança se apagou.\n")
    u.aguarde(1000)
    escreva("Quando tudo parecia estar perdido, um herói surgiu das sombras.\n")
    u.aguarde(1000)
    escreva("Esse herói... é você.\n")
    u.aguarde(1000)
    escreva("Como posso lhe chamar?\n")
    leia(nome)
    limpa()
    u.aguarde(500)
    escreva("É um prazer grande herói ",nome,", eu sou o ARQUITETO.\n")
    u.aguarde(1000)
    escreva("Irei aparecer em sua jornada com dicas e explicações sobre os acontecimentos que estão por vir...\n")
    retorne nome
  }
  funcao creditos(){
    escreva("═══════════「CRÉDITOS」═══════════\n")
    u.aguarde(600)
    escreva("Desenvolvido por --> Lucas Lima <--\n")
    u.aguarde(600)
    escreva("Aula de Lógica de Programação\n")
    u.aguarde(600)
    escreva("Professor Vinícius Boscadin\n")
    u.aguarde(600)
    escreva("Iniciado no dia 17-05-2025\n")
  }
}
