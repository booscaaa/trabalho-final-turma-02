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

  cadeia regioes[5] = {"Floresta das Névoas", "Vila Abandonada","Caverna Sombria","Pântano dos Lamentos","Castelo Dourado"}

  cadeia inimigosDaCampanhaNormal[15] = {"El Gigante"}
  inteiro vIdaDosInimigos[15] = {100}
  inteiro aTaqueDosInimigos[15] = {30}
  inteiro dEfesaDosInimigos[15] = {20}
  inteiro xpDosInimigos[50]
  
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
    escreva("Enfim, vamos continuar, escolha sua classe, temos 3 opções:\n")
      
    classesDoPersonagem()

  }

  funcao classesDoPersonagem(){

      escreva("\nGuerreiro: Se você quer um personagem TANKUDÃO, pega ele, os status dele são:\nVida: 40\nDefesa: 35\nAtaque: 25\n")
      escreva("\nMago: Se você quer um canhão de vidro, pega ele, os status dele são:\nVida: 15\nDefesa: 25\nAtaque: 60\n")
      escreva("\nArqueiro: Se você quer um cara mais equilibrado, pega ele, os status dele são:\nVida: 30\nDefesa: 30\nAtaque: 40\n")
      
      enquanto(classe != "Guerreiro" e classe != "Mago" e classe != "Arqueiro"){

        escreva("\nEntão ", nomeDoPersonagem,", qual classe você deseja escolher?(escreva o nome certo por favor)\n")
        leia(classe)

      }

      escreva("Perfeito, agora vou mostrar seus status iniciais:\nNome: ", nomeDoPersonagem,"\n")

      se(classe == "Guerreiro"){
        vidaDoPersonagem = 40
        defesaDoPersonagem = 35
        ataqueDoPersonagem = 25
        escreva("Vida: ", vidaDoPersonagem,"\nDefesa: ", defesaDoPersonagem,"\nAtaque: ", ataqueDoPersonagem,"\n")

      } senao se(classe == "Mago"){
        vidaDoPersonagem = 15
        defesaDoPersonagem = 25
        ataqueDoPersonagem = 60
        escreva("Vida: ", vidaDoPersonagem,"\nDefesa: ", defesaDoPersonagem,"\nAtaque: ", ataqueDoPersonagem,"\n")

      } senao se(classe == "Arqueiro"){
        vidaDoPersonagem = 30
        defesaDoPersonagem = 30
        ataqueDoPersonagem = 40
        escreva("Vida: ", vidaDoPersonagem,"\nDefesa: ", defesaDoPersonagem,"\nAtaque: ", ataqueDoPersonagem,"\n")
      }

      escreva("XP: ", xpDoPersonagem,"\nNível: ", nivel,"\n")
      auxVidaDoPersonagem = vidaDoPersonagem

  }

  funcao introducaoPosCriacao(){

    escreva("PERFEITO, bora começar de fato com a sua jornada, que provavelmente será bem sangrenta e sofrida...\n")

  }
  funcao florestaDaNevoa() {

    escreva(" ___          ____         ___   ___    ___   ____  ___   ___        ___   ___           ___        ___   ___    \n")
    u.aguarde(100)          
    escreva("    │   ---  │      │     │   │ │___│  │___  │___    │   │___│      │   ╲ │___│    │╲ │ │___  \\  / │   │ │___│    \n")
    u.aguarde(100)
    escreva("  __|__      │‾‾‾‾  │___  │___│ │   ╲  │___  ____│   │   │   │      │___/ │   │    │ ╲│ │___   \\/  │___│ │   │    \n")

    

  }

  funcao batalha(){
      
    enquanto(vidaDoPersonagem > 0 e vIdaDosInimigos[0] > 0){

      u.aguarde(2000)
      escreva("\nJogador ataca\n")

      se(ataqueDoPersonagem > dEfesaDosInimigos[0]){
        vIdaDosInimigos[0] = vIdaDosInimigos[0] - (ataqueDoPersonagem - dEfesaDosInimigos[0])

        se(vIdaDosInimigos[0] <= 0){
          vIdaDosInimigos[0] = 0
        }
        escreva("Dano dado: ", ataqueDoPersonagem - dEfesaDosInimigos[0],"\n")
        escreva("Vida restante do Gigante: ", vIdaDosInimigos[0],"\n")

      } senao se(ataqueDoPersonagem < dEfesaDosInimigos[0]){
        escreva("A defesa do inimigo é mais alta, você não dá dano nenhum")

      } senao se(ataqueDoPersonagem == dEfesaDosInimigos[0]){
        escreva("Empatou")

      }

      u.aguarde(2000)
      
      se(vIdaDosInimigos[0] <= 0){
        escreva("USUÁRIO VENCEU\n")

        escreva("XP adquirido: ", xpDosInimigos[0])
        xpDoPersonagem = xpDoPersonagem + xpDosInimigos[0]

      }senao {
        escreva("\nInimigo Ataca\n")

        se(aTaqueDosInimigos[0] > defesaDoPersonagem){
          vidaDoPersonagem = vidaDoPersonagem - (aTaqueDosInimigos[0] - defesaDoPersonagem) 

          se(vidaDoPersonagem <= 0){
            vidaDoPersonagem = 0
          }
          escreva("Dano dado: ", aTaqueDosInimigos[0] - defesaDoPersonagem,"\n")
          escreva("Vida restante do personagem: ",vidaDoPersonagem,"\n")
          se(vidaDoPersonagem <= 0){
          escreva("USUÁRIO MORREU\n")
          u.aguarde(5000)
          }

        } senao se(aTaqueDosInimigos[0] < defesaDoPersonagem){
          escreva("A defesa do usuário é maior, não dá dano nenhum\n")

        } senao se(aTaqueDosInimigos[0] == defesaDoPersonagem){
          escreva("Empatou\n")

        }
      }

    }
  }
}
