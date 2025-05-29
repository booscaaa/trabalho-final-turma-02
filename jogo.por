programa {
    inclua biblioteca Util --> u

    cadeia nomeHeroi
    cadeia nomeClasse[3] = {"Guerreiro", "Mago", "Arqueiro"}
    inteiro vida[3] = {120, 80, 100}
    inteiro ataque[3] = {15, 25, 20}
    inteiro defesa[3] = {10, 5, 8}
    inteiro xp[3] = {0, 0, 0}
    inteiro nivel[3] = {1, 1, 1}
    inteiro classeEscolhida

    funcao inicio() {
        contarHistoria()
        u.aguarde (2500)
        menu()
    }
    
    funcao contarHistoria(){
      inteiro opcao
      cadeia opcao
        
        escreva("Pular História?\n")
        escreva("\n")
        escreva("1-Sim\n")
        escreva("2-Não\n")
        escreva("\nEscolha uma opção: ")
        leia(opcao)
        
        se (opcao == 1) {
          limpa()
          u.aguarde(1000)
          menu()
        } 
        
        senao se (opcao == 2) {
            limpa()
            u.aguarde(1000) 
            escreva("\n")
            escreva("Há eras incontáveis, o Reino de Eldoria florescia sob a proteção da lendária Pedra da Luz, um artefato místico guardado pelos Anciãos do Castelo Dourado. Sua energia mantinha o equilíbrio, afastava as sombras e fazia a vida prosperar.\n")
            u.aguarde(17000) 
            limpa()
            escreva("\n")
            escreva("Mas a escuridão tem paciência...")
            u.aguarde(3600)
            limpa()
            escreva("\n")
            escreva("Das profundezas esquecidas surgiu O Devastador, uma entidade envolta em sombras e ódio. Em uma noite silenciosa, ele rasgou os céus, destruiu defesas e roubou a Pedra sagrada. O mundo mudou.\n")
            u.aguarde(12000)
            escreva("\n")
            escreva("As florestas, antes vivas, apodreceram. As vilas foram queimadas e abandonadas. Criaturas de pesadelo passaram a andar sob a lua. A esperança virou lenda.\n")
            u.aguarde(9900)
            limpa()
            escreva("\n")
            escreva("Mas nem todas as lendas morrem...")
            u.aguarde(3600)
            limpa()
            escreva("\n")
            escreva("Em meio ao caos, a antiga profecia ressurge — um herói escolhido pela própria luz despertará, forjado na dor e na coragem. Esse herói... é você.\n")
            u.aguarde(9900)
            escreva("\n")
            escreva("Você deve cruzar as cinco regiões corrompidas, dominar seus poderes, encarar terrores esquecidos e encarar o próprio Devastador. Cada passo é uma escolha. Cada batalha, um teste. O futuro de Eldoria está em suas mãos.\n")
            u.aguarde(11500) 
            limpa()
            escreva("\n")
            escreva("Prepare-se\n")
            u.aguarde(1500)
            escreva("A lenda começa agora!")
            u.aguarde(1700)
            limpa()
        } 
        
        senao {
            escreva("Opção inválida.\n")
            u.aguarde(1000)
            limpa()
            contarHistoria()
        }
    }
    
    funcao menu() {
        inteiro opcao
        cadeia opcao
        faca {
            limpa()
            escreva("\n")
            escreva("┌────────────────────────────┐\n")
            escreva("│     A JORNADA DO HERÓI     │\n")
            escreva("└────────────────────────────┘\n")
            escreva("┌────────────────────────────┐\n")
            escreva("│   1. Novo Jogo             │\n")
            escreva("│   2. Créditos              │\n")
            escreva("│   3. Sair                  │\n")
            escreva("└────────────────────────────┘\n")
            escreva("\nEscolha uma opção: ")
            leia(opcao)

            se (opcao == 1) {
                novoJogo()
            }
            se (opcao == 2) {
                creditos()
                u.aguarde(5000)
                menu()
            }
            se (opcao == 3) {
                ("Saindo do jogo.")
                u.aguarde(500)
                limpa()
                escreva("Saindo do jogo..")
                u.aguarde(500)
                limpa()
                escreva("Saindo do jogo...")
                u.aguarde(500) 
                
                pare
            }
            
            senao {
            escreva("Opção inválida.\n")
            u.aguarde(1500)
            limpa()
            menu()
        }
        } enquanto (opcao < 1 ou opcao > 3)
    }

    funcao creditos() {
        limpa()
        escreva("┌────────────────────────────┐\n")
        escreva("│          CRÉDITOS          │\n")
        escreva("├────────────────────────────┤\n")
        escreva("│ Desenvolvedor: Giovani.S   │\n")
        escreva("│ Ano: 2025                  │\n")
        escreva("└────────────────────────────┘\n")
    }

    funcao novoJogo() {
        carregamentoJogo()
        criacaoDoHeroi()
        batalhaInicial()
        menu()
    }

    funcao carregamentoJogo() {
        limpa()
        escreva("Iniciando novo jogo.")
        u.aguarde(500)
        limpa()
        escreva("Iniciando novo jogo..")
        u.aguarde(500)
        limpa()
        escreva("Iniciando novo jogo...")
        u.aguarde(500)
    }

    funcao criacaoDoHeroi() {
      cadeia classeEscolhida
        
        limpa()
        escreva("┌────────────────────────────┐\n")
        escreva("│      CRIAÇÃO DO HERÓI      │\n")
        escreva("├────────────────────────────┤\n")
        escreva("│ Digite o nome do seu herói:│\n")
        escreva("└────────────────────────────┘\n")
         escreva("\nNome: ")
        leia(nomeHeroi)
        limpa ()
        
        escreva("┌───────────────────────────────────┐\n")
        escreva("│        ESCOLHA SUA CLASSE         │\n")
        escreva("├───────────────────────────────────┤\n")
        escreva("│ 1. Guerreiro HP:120 ATK:15 DEF:10 │\n")
        escreva("│ 2. Mago HP:80 ATK:25 DEF:5        │\n")
        escreva("│ 3. Arqueiro HP:100 ATK:20 DEF:8   │\n")
        escreva("└───────────────────────────────────┘\n")
         escreva("\nEscolha uma opção: ")
        leia(classeEscolhida)

        se (classeEscolhida == 1) {
            vida[0] = 120
            ataque[0] = 15
            defesa[0] = 
            heroiCriado()
        }
        se (classeEscolhida == 2) {
            vida[0] = 80
            ataque[0] = 25
            defesa[0] = 5
            heroiCriado()
        }
        se (classeEscolhida == 3) {
            vida[0] = 100
            ataque[0] = 20
            defesa[0] = 8
            heroiCriado()
        }
        
        senao {
            escreva("Opção inválida.\n")
            u.aguarde(1000)
            limpa()
            u.aguarde(500)
            criacaoDoHeroi()
        }
    }
        
    funcao heroiCriado(){    //Arrumar aqui
        
        escreva("Seu herói foi criado!\n")
        escreva ("\n")
        escreva("Nome: " + nomeHeroi + "\n")
        escreva("Classe: " + nomeClasse[classeEscolhida - 1] + "\n")
        escreva("Vida: " + vida[0] + "\n")
        escreva("Ataque: " + ataque[0] + "\n")
        escreva("Defesa: " + defesa[0] + "\n")
        u.aguarde(2000)
 
        limpa()
        escreva("┌────────────────────────────┐\n")
        escreva("│       BATALHA              │\n")
        escreva("├────────────────────────────┤\n")
        escreva("│   Seu herói está pronto!   │\n")
        escreva("└────────────────────────────┘\n")
        u.aguarde(2000)
    
    }

    funcao regioes(){
    //WIP
    }
}