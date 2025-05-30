programa {inclua biblioteca Util--> u
  funcao inicio() {
    cadeia inicio 
    cadeia nome
    cadeia classe

    escreva("\n╔═════════════════════════════════╗")
    escreva("\n║        ⛧ DARKEST SOULS ⛧       ║")
    escreva("\n╠═════════════════════════════════╣")
    escreva("\n║                                 ║")
    escreva("\n║      I   ▸ Nova História        ║")
    escreva("\n║     II   ▸ Créditos             ║")
    escreva("\n║    III   ▸ Sair do Jogo         ║")
    escreva("\n║V 1.0.0                          ║")
    escreva("\n╚═════════════════════════════════╝\n")

    leia(inicio)

    se(inicio == "I"){
      escreva("\n||Há muito tempo, no Reino de Eldoria, a paz era mantida pela mística Pedra da Luz, protegida pelos Anciãos do Castelo Dourado.||\n")
      u.aguarde(2000)
      escreva("\n||Um dia, uma força sombria conhecida como O Devastador invadiu o reino, roubando a relíquia sagrada e mergulhando as terras em trevas e caos.||\n")
      u.aguarde(2000)
      escreva("\n||Vilas foram saqueadas, florestas corrompidas, e criaturas sombrias começaram a vagar pelas regiões.||\n")
      u.aguarde(2000)
      escreva("\n||Diante da crise, uma antiga profecia se cumpriu: um herói escolhido surgirá das sombras para restaurar a luz. Você é esse herói.||\n")
      u.aguarde(2000)
      escreva("\n||Sua missão é atravessar cinco regiões dominadas pelo mal, enfrentando inimigos, evoluindo suas habilidades||\n")
      u.aguarde(2000)
      escreva("\n||e se preparando para confrontar O Devastador no Castelo Dourado.||\n ")
      u.aguarde(2000)
      escreva("\n||A jornada será repleta de perigos, escolhas e batalhas. Seu destino e o de Eldoria estão entrelaçados.||\n")
      u.aguarde(3000)

    }senao se(inicio =="II"){
      escreva("Feito Por Mestre Fanfas")
    } senao{
      limpa()
      escreva("Saindo Do Jogo")
      u.aguarde(1000)
      escreva(".")
       u.aguarde(1000)
      escreva(".")
       u.aguarde(1000)
      escreva(".")
      u.aguarde(3000)
      limpa()
    }
    limpa()
    escreva("\n||🛡️ Qual é o nome do seu herói, bravo aventureiro?||\n")
    escreva("\n||Escolha com sabedoria — este será o nome que ecoará pelas tavernas, será sussurrado nos ventos e gravado nas lendas!||\n")
    leia(nome)

    escreva("\n||⚔️ Escolha a sua classe, nobre aventureiro!||\n")
    u.aguarde(2000)
    escreva("\n||Cada caminho oferece poder, perigo e destino. Será você um guerreiro indomável, um mago das artes arcanas, Um Guerreiro poderoso com espadas e escudos ou então um Arqueiro Valente.||\n")
    u.aguarde(2000)
    escreva("\n||A decisão é sua... e moldará sua jornada!\n")
    u.aguarde(2000)
    escreva("\n||Escolha entre:||\n")
    u.aguarde(2000)                            
    leia(classe)

  }
}