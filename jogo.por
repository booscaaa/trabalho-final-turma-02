programa {
    cadeia nome_heroi
    cadeia classe_heroi
    inteiro vida_heroi
    inteiro vida_max_heroi
    inteiro ataque_heroi
    inteiro defesa_heroi
    inteiro xp_heroi
    inteiro nivel_heroi
    inteiro xp_para_proximo_nivel

    funcao inicio()
    {
      inteiro opcao_menu

      faca {
        limpa()
        escreva("---------------------------------------\n")
        escreva("        RPG: A Jornada do Herói        \n")
        escreva("---------------------------------------\n\n")
        escreva("Menu Principal:\n")
        escreva("1. Novo Jogo\n")
        escreva("2. Créditos\n")
        escreva("3. Sair\n\n")
        escreva("Escolha uma opção: ")
        leia(opcao_menu)

        escolha (opcao_menu)
          {
            caso 1:
                iniciar_novo_jogo()
                se (nome_heroi != "") {
                  escreva("\nHerói ", nome_heroi, " está pronto para a jornada!\n")
                  escreva("Retornando ao menu principal por enquanto...\n") 
                  pressione_enter_para_continuar()
                  }
                    pare
                    caso 2:
                    exibir_creditos()
                    pressione_enter_para_continuar()
                    pare
                caso 3:
                    limpa()
                    escreva("\nObrigado por jogar 'A Jornada do Herói'! Até a próxima.\n")
                    pare 
                caso contrario:
                    escreva("\nOpção inválida! Pressione ENTER para tentar novamente.\n")
                    pressione_enter_para_continuar()
                    pare
            }
        } enquanto (opcao_menu != 3)
    }

    funcao iniciar_novo_jogo()
    {
        limpa()
        escreva("---------------------------------------\n")
        escreva("          INICIANDO NOVO JOGO        \n")
        escreva("---------------------------------------\n\n")

        exibir_introducao_narrativa()

        definir_nome_heroi()

        escolher_classe_heroi() 

        exibir_status_inicial_heroi()

        escreva("\nSeu herói foi criado! Prepare-se para a aventura!\n")
        pressione_enter_para_continuar()
    }

    funcao exibir_introducao_narrativa()
    {
        limpa()
        escreva("--- INTRODUÇÃO ---\n\n")
        escreva("Há muito tempo, no Reino de Eldoria, a paz era mantida pela mística Pedra da Luz,\n")
        escreva("protegida pelos Anciãos do Castelo Dourado.\n\n")
        escreva("Um dia, uma força sombria conhecida como O Devastador invadiu o reino, roubando\n")
        escreva("a relíquia sagrada e mergulhando as terras em trevas e caos. Vilas foram\n")
        escreva("saqueadas, florestas corrompidas, e criaturas sombrias começaram a vagar pelas\n")
        escreva("regiões.\n\n")
        escreva("Diante da crise, uma antiga profecia se cumpriu: um herói escolhido surgirá das\n")
        escreva("sombras para restaurar a luz. Você é esse herói.\n\n")
        escreva("Sua missão é atravessar cinco regiões dominadas pelo mal, enfrentando inimigos,\n")
        escreva("evoluindo suas habilidades e se preparando para confrontar O Devastador no\n")
        escreva("Castelo Dourado. A jornada será repleta de perigos, escolhas e batalhas. Seu\n")
        escreva("destino e o de Eldoria estão entrelaçados.\n\n")
        pressione_enter_para_continuar()
    }

    funcao definir_nome_heroi()
    {
        limpa()
        escreva("--- CRIAÇÃO DO HERÓI: NOME ---\n\n")
        faca {
            escreva("Digite o nome do seu herói: ")
            leia(nome_heroi)
            se (nome_heroi == "") {
                escreva("O nome não pode ser vazio. Por favor, digite um nome.\n\n")
            }
        } enquanto (nome_heroi == "")
        escreva("Um bravo herói chamado ", nome_heroi, " surge!\n\n")
        pressione_enter_para_continuar()
    }

    funcao escolher_classe_heroi()
    {
        inteiro opcao_classe

        limpa()
        escreva("--- CRIAÇÃO DO HERÓI: CLASSE ---\n\n")
        escreva(nome_heroi, ", escolha sua classe:\n\n")
        escreva("Classes disponíveis:\n")
        escreva("1. Guerreiro: Foco em vida e defesa. Ideal para resistência prolongada.\n")
        escreva("   - Vida: 150, Ataque: 10, Defesa: 15\n\n")
        escreva("2. Mago: Ataque poderoso, porém frágil. Especialista em dano rápido.\n")
        escreva("   - Vida: 80, Ataque: 20, Defesa: 5\n\n")
        escreva("3. Arqueiro: Equilibrado entre ataque e mobilidade. Versátil.\n")
        escreva("   - Vida: 100, Ataque: 15, Defesa: 10\n\n")

        faca {
            escreva("Escolha sua classe (1-3): ")
            leia(opcao_classe)

            escolha (opcao_classe) {
                caso 1:
                    classe_heroi = "Guerreiro"
                    vida_max_heroi = 150
                    ataque_heroi = 10
                    defesa_heroi = 15
                    pare
                caso 2:
                    classe_heroi = "Mago"
                    vida_max_heroi = 80
                    ataque_heroi = 20
                    defesa_heroi = 5
                    pare
                caso 3:
                    classe_heroi = "Arqueiro"
                    vida_max_heroi = 100
                    ataque_heroi = 15
                    defesa_heroi = 10
                    pare
                caso contrario:
                    escreva("Opção de classe inválida! Tente novamente.\n\n")
                    opcao_classe = 0
                    pare
            }
        } 
        
        enquanto (opcao_classe < 1 ou opcao_classe > 3)
        vida_heroi = vida_max_heroi 
        nivel_heroi = 1
        xp_heroi = 0
        xp_para_proximo_nivel = 100 

        escreva("\nVocê escolheu ser um ", classe_heroi, "!\n")
        pressione_enter_para_continuar()
    }

    funcao exibir_status_inicial_heroi()
    {
        limpa()
        escreva("--- STATUS INICIAIS DO HERÓI ---\n\n")
        escreva("Nome:   ", nome_heroi, "\n")
        escreva("Classe: ", classe_heroi, "\n")
        escreva("Nível:  ", nivel_heroi, "\n")
        escreva("XP:     ", xp_heroi, "/", xp_para_proximo_nivel, "\n")
        escreva("Vida:   ", vida_heroi, "/", vida_max_heroi, "\n")
        escreva("Ataque: ", ataque_heroi, "\n")
        escreva("Defesa: ", defesa_heroi, "\n\n")
    }

    funcao exibir_creditos()
    {
        limpa()
        escreva("---------------------------------------\n")
        escreva("              CRÉDITOS               \n")
        escreva("---------------------------------------\n\n")
        escreva("Jogo: A Jornada do Herói\n")
        escreva("Desenvolvido por: Alexia Rafaela Bastos Lehr\n") 
        escreva("Projeto Final da Disciplina: Lógica de programação\n")
        escreva("Plataforma: Portugol Studio\n\n")
        escreva("Feito atráves da proposta de trabalho final do primeiro semestre da faculdade Cesurg do \n")
        escreva("Curso Técnico em Desenvolvimento de Sistemas.\n")
        escreva("Expresso meus agradecimentos ao professor Vincius Boscardin pela dedicação em nos ensinar e\n")
        escreva("por compartilhar seu vasto conhecimento. Muito obrigada!\n")
    }

    funcao pressione_enter_para_continuar()
    {
        cadeia temp_entrada
        escreva("\nPressione ENTER para continuar...")
        leia(temp_entrada) 
    }
}    
  
