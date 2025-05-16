programa {inclua biblioteca Util --> u
  funcao inicio() {
    inteiro comecar
    cadeia nomePlayer
    inteiro classe
    escreva("Mundo dos slimes\n","\n1: New game \n","2: Credits \n", "3: Quit\n")
    leia(comecar)

    se(comecar == 2){
      escreva("Made by Kingtouro")
    }senao se(comecar == 3){
      escreva(" ")
    }senao se(comecar == 1){
      limpa()
      escreva("Há muito tempo, no Reino de Eldoria, a paz era mantida pela mística Pedra da Luz, Guardada dentro do Castelo Dourado.\n")
      u.aguarde(2000)
      
      escreva("Mas por anos de negligencia a Pedra da luz, rachou soltando todo a mal acumulado\n ")
      escreva("e invés de escuridão ou corrupção o mal mantido era Slimes\n")
      u.aguarde(2000)
      escreva("Em um instante alagaram e destruindam todas as terras ao redor,\n")
      escreva("depois da primeira onda o slime se condensou, tornando os em monstros para continuar os ataques\n")
      u.aguarde(2000)
      escreva("Mas tinha um heroi qu prometeu derrotar o terror do slime\n")
      u.aguarde(3000)
      escreva("e esse heroi é você\n")
      u.aguarde(4000)
      limpa()
      escreva("E qual é seu nome heroi:\n")
      leia(nomePlayer)
      limpa()
      escreva("Qual é sua classe:\n")
      escreva("1: Guerreiro\n")// 400 de Vida, 100 de Dano, 70 de Defesa, 50 de Mana, Feitiço(Shield, defesa aumenta por 20%)
      escreva("2: Mago\n")//200 de Vida, 200 de ano, 20 de Defesa, 200 de Mana, Feitiço(Fireball, ataque que dá 3x do dano base)
      escreva("3: Arqueiro\n")//300 de Vida, 150 de Dano, 50 de Defesa, 100 de mana, Feitiço(Herbalist, cura 15% da vida)
      leia(classe)
      limpa()

    }senao{
      escreva(" ")
    }
    
    
  }
 

}
