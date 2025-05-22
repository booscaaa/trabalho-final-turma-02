programa {
  inclua biblioteca Util --> u

  cadeia nomeDoPersonagem
  cadeia classe 
  inteiro vidaDoPersonagem = 0
  inteiro ataqueDoPersonagem = 0
  inteiro defesaDoPersonagem = 0
  inteiro xpDoPersonagem = 0 
  inteiro nivel = 0
  inteiro auxVidaDoPersonagem
  inteiro sorteio = 0

  cadeia regioes[5] = {"Floresta das Névoas", "Vila Abandonada","Caverna Sombria","Pântano dos Lamentos","Castelo Dourado"}

  cadeia inimigosDaCampanhaNormal[15] = {"El Gigante"}
  inteiro vIdaDosInimigos[15] = {100}
  inteiro aTaqueDosInimigos
  inteiro dEfesaDosInimigos[15] = {20}
  inteiro xpDosInimigos[15] = {50}
  funcao inicio() {

    menu()
  
  }
  funcao menu(){ 
    
    cadeia opcao

    u.aguarde(1000)
    escreva("________________________\n")
    u.aguarde(100)
    escreva("│                      │\n")
    u.aguarde(100)
    escreva("│    i.Novo Jogo       │\n")
    u.aguarde(100)
    escreva("│   ii.Créditos        │\n")
    u.aguarde(100)
    escreva("│  iii.Sair do jogo    │\n")
    u.aguarde(100)
    escreva("│                      │\n")
    u.aguarde(100)
    escreva("‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾\n")

    dasOpcoes(opcao)

  }

  funcao dasOpcoes(cadeia opcao){
    enquanto(opcao != "iiii"){
      escreva("Qual opção você quer escolher? i, ii ou iii?\n")
      leia(opcao)
      escolha(opcao){
        caso "i":
      
          novoJogo()
          registrarPersonagem()
          introducaoPosCriacao()
          florestaDaNevoa()
        
        pare

        caso "ii":

        pare

        caso "iii":
      }
    }
    
  }
  funcao novoJogo(){

    inteiro contador = 3

    u.aguarde(1000)
    limpa()
    escreva("BORA COMEÇAR ENTÃO...não sei se foi uma boa ideia.\n")
    escreva("\n")
    u.aguarde(3000)
    escreva("Há muito tempo, no Reino de Eldoria, a paz era mantida pela mística Pedra da Luz, protegida pelos Anciãos do Castelo Dourado.\n")
    escreva("\n")
    u.aguarde(2000)
    escreva("Um dia, uma força sombria conhecida como O Devastador invadiu o reino, roubando a relíquia sagrada e mergulhando as terras em trevas e caos.\n")
    u.aguarde(2000)
    escreva("Vilas foram saqueadas, florestas corrompidas, e criaturas sombrias começaram a vagar pelas regiões.\n")
    escreva("\n")
    u.aguarde(2000)
    escreva("Diante da crise, uma antiga profecia se cumpriu: um herói escolhido surgirá das sombras para restaurar a luz. Você é esse herói.\n")
    escreva("\n")
    u.aguarde(2000)
    escreva("Sua missão é atravessar cinco regiões dominadas pelo mal, enfrentando inimigos, evoluindo suas habilidades e se preparando para\n")
    escreva("confrontar O Devastador no Castelo Dourado.\n")
    u.aguarde(2000)
    escreva("A jornada será repleta de perigos, escolhas e batalhas. Seu destino e o de Eldoria estão entrelaçados.\n")
    u.aguarde(2000)
    escreva("Vamos seguir com as escolhas em:\n", contador,"\n")
    u.aguarde(1000)
    contador--
    escreva(contador,"\n")
    u.aguarde(1000)
    contador--
    escreva(contador,"\n")
    u.aguarde(1000)
    contador--
    escreva(contador,"\n")
    u.aguarde(1000)
    limpa()
    
  }

  funcao registrarPersonagem(){

    escreva("Então, primeiramente, preciso saber o nome deste grande guerreiro que vai se ferrar muito nas batalhas:\n")
    leia(nomeDoPersonagem)
    u.aguarde(500)

    limpa()

    escreva(nomeDoPersonagem,"? Ok...cada um com suas ideias.\n")
    escreva("Enfim, vamos continuar, escolha sua classe.\nUm ponto importante...o ataque será sorteado, então a cada vez que você atacar, o seu dano será rolado usando um\ndado d20, e você pode dar 1 de dano ou até 20, e cada classe adicionará mais uma quantidade de dano garantida.\nVamos exemplificar, o guerreiro irá adicionar 5 ao número que você tirar no dado, então se você tirar 10, o seu dano será de 15.\nDITO ISSO, temos 3 opções:\n")
      
    classesDoPersonagem()

  }

  funcao classesDoPersonagem(){
      inteiro contador = 3

      escreva("\nGuerreiro: Se você quer um personagem TANKUDÃO, pega ele, os status dele são:\nVida: 40\nDefesa: 35\nAtaque: +5\n")
      escreva("\nMago: Se você quer um canhão de vidro, pega ele, os status dele são:\nVida: 15\nDefesa: 20\nAtaque: +20\n")
      escreva("\nArqueiro: Se você quer um cara mais equilibrado, pega ele, os status dele são:\nVida: 30\nDefesa: 30\nAtaque: +10\n")
      
      enquanto(classe != "Guerreiro" e classe != "Mago" e classe != "Arqueiro"){

        escreva("\nEntão ", nomeDoPersonagem,", qual classe você deseja escolher?(escreva o nome certo por favor)\n")
        leia(classe)

      }
      u.aguarde(2000)
      limpa()
      escreva("Perfeito, agora vou mostrar seus status iniciais:\nNome: ", nomeDoPersonagem,"\n")
      
      se(classe == "Guerreiro"){
        vidaDoPersonagem = 40
        defesaDoPersonagem = 35
        ataqueDoPersonagem = 5
        escreva("Vida: ", vidaDoPersonagem,"\nDefesa: ", defesaDoPersonagem,"\nAtaque: ", ataqueDoPersonagem,"\n")

      } senao se(classe == "Mago"){
        vidaDoPersonagem = 15
        defesaDoPersonagem = 20
        ataqueDoPersonagem = 20
        escreva("Vida: ", vidaDoPersonagem,"\nDefesa: ", defesaDoPersonagem,"\nAtaque: ", ataqueDoPersonagem,"\n")

      } senao se(classe == "Arqueiro"){
        vidaDoPersonagem = 30
        defesaDoPersonagem = 30
        ataqueDoPersonagem = 10
        escreva("Vida: ", vidaDoPersonagem,"\nDefesa: ", defesaDoPersonagem,"\nAtaque: ", ataqueDoPersonagem,"\n")
      }

      escreva("XP: ", xpDoPersonagem,"\nNível: ", nivel,"\n")
      auxVidaDoPersonagem = vidaDoPersonagem
      u.aguarde(3000)
      escreva("Vamos seguir em:\n", contador,"\n")
      u.aguarde(1000)
      contador--
      escreva(contador,"\n")
      u.aguarde(1000)
      contador--
      escreva(contador,"\n")
      u.aguarde(1000)
      contador--
      escreva(contador,"\n")
      u.aguarde(1000)
      limpa()

  }

  funcao introducaoPosCriacao(){
    limpa()

    escreva("PERFEITO, bora começar de fato com a sua jornada, que provavelmente será bem sangrenta e sofrida...\n")
    u.aguarde(2000)

  }
  funcao florestaDaNevoa() {

    escreva(" ___          ____         ___   ___    ___   ____  ___   ___        ___   ___           ___        ___   ___    \n")
    u.aguarde(100)          
    escreva("    │   ---  │      │     │   │ │___│  │___  │___    │   │___│      │   ╲ │___│    │╲ │ │___  \\  / │   │ │___│    \n")
    u.aguarde(100)
    escreva("  __|__      │‾‾‾‾  │___  │___│ │   ╲  │___  ____│   │   │   │      │___/ │   │    │ ╲│ │___   \\/  │___│ │   │    \n")

    u.aguarde(2000)

    escreva("\n",nomeDoPersonagem," começou sua jornada maluca na ", regioes[0],", um lugar que era frequentemente usado para realizar acampamentos\n")
    escreva("e piqueniques entre amigos e família, mas depois que aquele VAGABUNDO do \"Devastador\"(ninguém sabe o real nome dele) invadiu Eldoria,\n")
    escreva("ninguém mais tem liberdade pra nada, não é seguro ir ali, ainda mais sabendo que criaturas estranhas e poderosas vivem naquela\n")
    escreva("floresta, e nosso coitado ",nomeDoPersonagem,"se deparará com a primeira ameaça logo agora...\n")

    batalha()

    

  }
 
  funcao batalha(){
      
    enquanto(vidaDoPersonagem > 0 e vIdaDosInimigos[0] > 0){

      u.aguarde(2000)
      escreva("\nVez de ",nomeDoPersonagem, "\n")

      sorteio = u.sorteia(0,20) + ataqueDoPersonagem
      vIdaDosInimigos[0] = vIdaDosInimigos[0] - (sorteio - dEfesaDosInimigos[0])

      escreva("Seu ataque + o dado deu: ", sorteio,"\n")
      
      escreva("Dano dado: ", sorteio  - dEfesaDosInimigos[0])

      u.aguarde(5000)
          

      

    }
  }
}
