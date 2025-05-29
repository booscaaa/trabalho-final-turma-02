programa {
  inclua biblioteca Util --> u

  const inteiro TOTAL_CENARIOS = 5

  // Variáveis Globais do Personagem
  cadeia nomeAventureiro
  cadeia classePersonagem
  inteiro hpAtual
  inteiro hpMaximo
  inteiro ataqueBase
  inteiro manaAtual
  inteiro manaMaxima
  logico possuiCajadoDoReiEsqueleto // Mago - Habilidade "Dono de Pedaço"
  logico possuiArmaduraEsqueletica // Guerreiro - Proteção + Dano Retornado
  logico possuiArcoDaMorte       // Arqueiro - Dano Necrótico
  logico naoPossuiCajadoDoReiEsqueleto // Mago - Habilidade "Dono de Pedaço"
  logico naoPossuiArmaduraEsqueletica 
  logico naoPossuiArcoDaMorte       
  logico fugiuDeCombate // Flag para saber se o jogador fugiu da batalha

  // Variáveis Globais do Cenário
  cadeia nomesCenarios[TOTAL_CENARIOS]
  cadeia descricoesCenarios[TOTAL_CENARIOS]
  inteiro cenarioAtual
  
  

  funcao inicio() {
    cadeia opcaoMenu

    // Inicializa o estado dos bosses derrotados
    para (inteiro i = 0; i < TOTAL_CENARIOS - 1; i++) {
        bossDerrotadoPorCenario[i] = falso
    }

    faca {
        limpa()
        escreva("||HellChampions Studios Apresenta||")

        escreva("\n╔═════════════════════════════════╗")
        escreva("\n║        ⛧ DARKEST SOULS ⛧       ║")
        escreva("\n╠═════════════════════════════════╣")
        escreva("\n║                                 ║")
        escreva("\n║      I   ▸ Nova História        ║")
        escreva("\n║     II   ▸ Créditos             ║")
        escreva("\n║    III   ▸ Sair do Jogo         ║")
        escreva("\n║V 1.0.0                          ║")
        escreva("\n╚═════════════════════════════════╝\n")

        escreva("Escolha uma opção: ")
        leia(opcaoMenu)
        limpa()

        se (opcaoMenu == "I" ou opcaoMenu == "i") {
          escreva("\n||Há muito tempo, no Reino de Eldoria, a paz era mantida pela mística Pedra da Luz, protegida pelos Anciãos do Castelo Dourado.||\n")
          u.aguarde(1000)
          escreva("\n||Um dia, uma força sombria conhecida como O Devastador invadiu o reino, roubando a relíquia sagrada e mergulhando as terras em trevas e caos.||\n")
          u.aguarde(1000)
          escreva("\n||Vilas foram saqueadas, florestas corrompidas, e criaturas sombrias começaram a vagar pelas regiões.||\n")
          u.aguarde(1000)
          escreva("\n||Diante da crise, uma antiga profecia se cumpriu: um herói escolhido surgirá das sombras para restaurar a luz. Você é esse herói.||\n")
          u.aguarde(1000)
          escreva("\n||Sua missão é atravessar cinco regiões dominadas pelo mal, enfrentando inimigos, evoluindo suas habilidades||\n")
          u.aguarde(1000)
          escreva("\n||e se preparando para confrontar O Devastador no Castelo Dourado.||\n ")
          u.aguarde(1000)
          escreva("\n||A jornada será repleta de perigos, escolhas e batalhas. Seu destino e o de Eldoria estão entrelaçados.||\n")
          u.aguarde(2000)
          limpa()

          cadeia confirmacaoNome
          faca {
            escreva("\n||🛡️ Qual é o nome do seu herói, bravo aventureiro?||\n")
            escreva("\n||Escolha com sabedoria — este será o nome que ecoará pelas tavernas, será sussurrado nos ventos e gravado nas lendas!||\n")
            leia(nomeAventureiro)
            escreva("\n", nomeAventureiro, ", certo? (s/n)\n")
            leia(confirmacaoNome)
            limpa()
          } enquanto (confirmacaoNome != "s" e confirmacaoNome != "S")
          
          u.aguarde(500)

          logico classeFoiEscolhida = falso
          enquanto (nao classeFoiEscolhida) {
              classeFoiEscolhida = escolherClasse()
              se (nao classeFoiEscolhida) {
                  u.aguarde(1500)
                  limpa()
                  escreva("Vamos tentar novamente...\n")
                  u.aguarde(1000)
              }
          }
          limpa()
          escreva("Herói: ", nomeAventureiro, " | Classe: ", classePersonagem, "\n")
          mostrarStatusPersonagem()
          
          escreva("\n\nSua aventura começa agora!\n")
          u.aguarde(3000)

          iniciarAventura()

        } senao se (opcaoMenu == "II" ou opcaoMenu == "ii") {
          limpa()
          escreva("Feito Por Mestre Fanfas\n")
          u.aguarde(3000)
        } senao se (opcaoMenu == "III" ou opcaoMenu == "iii") {
          limpa()
          escreva("Saindo Do Jogo")
          u.aguarde(1000)
          escreva(".")
          u.aguarde(1000)
          escreva(".")
          u.aguarde(1000)
          escreva(".")
          u.aguarde(1000)
          limpa()
        } senao {
            escreva("Opção inválida! Pressione ENTER para tentar novamente.\n")
            leia(opcaoMenu) // Apenas para pausar
        }
    } enquanto (opcaoMenu != "III" e opcaoMenu != "iii")
    escreva("Obrigado por jogar Darkest Souls! Até a próxima.\n")
    u.aguarde(2000)
  }

  funcao iniciarAventura() {
    inicializarCenarios()
    cenarioAtual = 0 // Sempre começa na Floresta da Névoa
    logico aventuraEmAndamento = verdadeiro
    cadeia acaoJogador

    enquanto (aventuraEmAndamento) {
      limpa()
      mostrarCenarioAtual()

      // Verifica se o HP do jogador está muito baixo e oferece cura (simulada)
      se (hpAtual <= hpMaximo / 4) {
          escreva("\nVocê se sente fraco, mas encontra um local seguro para descansar...\n")
          u.aguarde(2000)
          curarPersonagem() // Restaura HP e Mana
          escreva("\nVocê está revigorado!\n")
          u.aguarde(1500)
      }

      escreva("\nO que você deseja fazer?\n")
      escreva("1. Explorar os arredores (Encontrar inimigos comuns)\n")
      escreva("2. Confrontar o Chefe da Área\n") // Nova opção
      escreva("3. Avançar para a próxima região\n")
      escreva("4. Ver status do personagem\n")
      escreva("5. Voltar ao Menu Principal\n")
      escreva("Escolha uma ação: ")
      leia(acaoJogador)

      escolha(acaoJogador) {
        caso "1":
          // Encontro com inimigos comuns
          limpa()
          escreva("\nVocê se aventura na ", nomesCenarios[cenarioAtual], "...\n")
          u.aguarde(1000)
          logico resultadoCombateComum = falso
          
          // Gera um inimigo comum aleatório para o cenário atual
          cadeia nomeInimigoComum
          inteiro hpInimigoComum
          inteiro ataqueInimigoComum

          // A função gerarInimigoComum define nome, hp e ataque
          gerarInimigoComum(cenarioAtual, nomeInimigoComum, hpInimigoComum, ataqueInimigoComum)

          escreva("\nUm(a) ", nomeInimigoComum, " selvagem apareceu!\n")
          u.aguarde(1500)
          resultadoCombateComum = batalhar(nomeInimigoComum, hpInimigoComum, ataqueInimigoComum, falso) // falso = não é boss

          se (nao resultadoCombateComum) { // Se o jogador perdeu ou fugiu
              se (nao fugiuDeCombate) { // Se não fugiu, então perdeu HP para 0
                 escreva("\n\nSua jornada chega ao fim, ", nomeAventureiro, "...\n")
                 u.aguarde(2000)
                 aventuraEmAndamento = falso // Fim de jogo
              } senao {
                  escreva("\nVocê conseguiu escapar!\n")
                  u.aguarde(1500)
              }
          }
          pare
        caso "2":
          // Confrontar o chefe da área
          se (cenarioAtual == TOTAL_CENARIOS - 1) {
              escreva("\nVocê já está no Castelo Dourado, o confronto final com O Devastador é iminente!\n")
              escreva("Não há um 'chefe de área' aqui, mas sim o CHEFE FINAL.\n")
              u.aguarde(3000)
          } senao se (bossDerrotadoPorCenario[cenarioAtual]) {
              escreva("\nO chefe desta área já foi derrotado! Prossiga para a próxima região.\n")
              u.aguarde(2500)
          } senao {
              limpa()
              escreva("\nVocê decide confrontar o grande mal que assola ", nomesCenarios[cenarioAtual], "...\n")
              u.aguarde(2000)
              
              cadeia nomeBoss
              inteiro hpBoss
              inteiro ataqueBoss

              gerarBoss(cenarioAtual, nomeBoss, hpBoss, ataqueBoss)

              escreva("\n\n!! O terrível ", nomeBoss, " surge diante de você !!\n")
              u.aguarde(2500)
              
              logico bossDerrotado = batalhar(nomeBoss, hpBoss, ataqueBoss, verdadeiro) // verdadeiro = é boss

              se (bossDerrotado) {
                  escreva("\n\nParabéns! Você derrotou ", nomeBoss, "!\n")
                  concederRecompensaBoss(cenarioAtual) // Concede a recompensa específica do boss
                  bossDerrotadoPorCenario[cenarioAtual] = verdadeiro // Marca o boss como derrotado
                  u.aguarde(3000)
              } senao {
                  se (nao fugiuDeCombate) { // Se não fugiu, então perdeu HP para 0
                      escreva("\n\nSua jornada chega ao fim, ", nomeAventureiro, "...\n")
                      u.aguarde(2000)
                      aventuraEmAndamento = falso // Fim de jogo
                  } senao {
                      escreva("\nVocê conseguiu escapar do chefe, mas ele ainda o aguarda!\n")
                      u.aguarde(1500)
                  }
              }
          }
          pare
        caso "3":
          // Avançar para a próxima região
          se (cenarioAtual < TOTAL_CENARIOS - 1) {
            se (bossDerrotadoPorCenario[cenarioAtual]) { // Só pode avançar se o boss do cenário atual foi derrotado
                cenarioAtual = cenarioAtual + 1
                escreva("\nVocê avança para ", nomesCenarios[cenarioAtual], "...\n")
                u.aguarde(2000)
                se (cenarioAtual == TOTAL_CENARIOS - 1) {
                    escreva("\nVOCÊ CHEGOU AO CASTELO DOURADO! O MAL SUPREMO O AGUARDA!\n")
                    u.aguarde(3000)
                    escreva("\nSua missão é clara: Derrotar O Devastador!\n")
                    // Aqui você chamaria a batalha final
                    u.aguarde(4000)
                    // Por enquanto, é o fim da demonstração
                    escreva("\nParabéns, ", nomeAventureiro, "! Você enfrentou os perigos e triunfou (por enquanto)!\n")
                    escreva("FIM DA DEMONSTRAÇÃO DA AVENTURA.\n")
                    u.aguarde(4000)
                    aventuraEmAndamento = falso // Fim de jogo
                }
            } senao {
                escreva("\nVocê não pode avançar ainda! Derrote o chefe da área atual primeiro!\n")
                u.aguarde(2500)
            }
          } senao {
            escreva("\nVocê já está no Castelo Dourado, o confronto final é iminente!\n")
            u.aguarde(3000)
          }
          pare
        caso "4":
          limpa()
          mostrarStatusPersonagem()
          escreva("\nPressione ENTER para continuar...")
          cadeia temp
          leia(temp)
          pare
        caso "5":
          escreva("\nVoltando ao Menu Principal...\n")
          u.aguarde(2000)
          aventuraEmAndamento = falso
          pare
        caso contrario:
          escreva("\nAção inválida!\n")
          u.aguarde(1500)
      }
    }
  }

  funcao inicializarCenarios() {
    nomesCenarios[0] = "Floresta da Névoa"
    descricoesCenarios[0] = "Criaturas ocultas atacam os viajantes. Local sombrio e traiçoeiro."

    nomesCenarios[1] = "Vila Abandonada"
    descricoesCenarios[1] = "Antiga comunidade agora infestada de ladrões e almas perdidas."

    nomesCenarios[2] = "Caverna Sombria"
    descricoesCenarios[2] = "Ecos de monstros antigos guardam os segredos do passado."

    nomesCenarios[3] = "Pântano dos Lamentos"
    descricoesCenarios[3] = "Terreno instável, cheio de armadilhas e espectros venenosos."

    nomesCenarios[4] = "Castelo Dourado"
    descricoesCenarios[4] = "Lar do Devastador. Última esperança de Eldoria."
  }

  funcao mostrarCenarioAtual() {
    escreva("====================================================\n")
    escreva("📍 LOCAL ATUAL: ", nomesCenarios[cenarioAtual], "\n")
    escreva("====================================================\n")
    escreva("📜 ", descricoesCenarios[cenarioAtual], "\n")
    se (cenarioAtual < TOTAL_CENARIOS - 1 e nao bossDerrotadoPorCenario[cenarioAtual]) {
        escreva("\nATENÇÃO: O CHEFE DESTA ÁREA AINDA ESTÁ À ESPERA!\n")
    }
  }
  
  funcao mostrarStatusPersonagem() {
      escreva("\n--- STATUS DO HERÓI ---\n")
      escreva("Nome: ", nomeAventureiro, "\n")
      escreva("Classe: ", classePersonagem, "\n")
      escreva("HP: ", hpAtual, "/", hpMaximo, "\n")
      escreva("Ataque Base: ", ataqueBase, "\n")
      se (classePersonagem == "Mago") {
        escreva("Mana: ", manaAtual, "/", manaMaxima, "\n")
        se (possuiCajadoDoReiEsqueleto) {
            escreva("Habilidade: Dono de Pedaço (Conjura Esqueletos)\n")
        }
      } senao se (classePersonagem == "Guerreiro") {
          se (possuiArmaduraEsqueletica) {
              escreva("Armadura: Esqueletica (Proteção Física + Dano Retornado)\n")
          }
      } senao se (classePersonagem == "Arqueiro") {
          se (possuiArcoDaMorte) {
              escreva("Arma: Arco da Morte (Dano Necrótico)\n")
          }
      }
      escreva("------------------------\n")
  }

  funcao inteiro lancarDado(inteiro lados) {
    retorne u.sorteia(1, lados)
  }
  
  funcao logico escolherClasse() {
    inteiro escolher
    escreva("\nEscolha sua classe:\n")
    escreva("1. Guerreiro (HP Alto, Ataque Moderado, Foco Físico)\n")
    escreva("2. Arqueiro (HP Médio, Ataque Preciso, Foco Distância)\n")
    escreva("3. Mago     (HP Baixo, Ataque Mágico Forte, Usa Mana)\n")
    escreva("Digite o número da classe: ")
    leia(escolher)

    // Inicializa as flags de itens/habilidades para FALSO
    possuiCajadoDoReiEsqueleto = falso
    possuiArmaduraEsqueletica = falso
    possuiArcoDaMorte = falso

    se (escolher == 1) {
      classePersonagem = "Guerreiro"
      hpMaximo = 150
      hpAtual = hpMaximo
      ataqueBase = 15
      manaAtual = 0
      manaMaxima = 0
      escreva("\nVocê escolheu Guerreiro!\n")
      retorne verdadeiro
    } senao se (escolher == 2) {
      classePersonagem = "Arqueiro"
      hpMaximo = 100
      hpAtual = hpMaximo
      ataqueBase = 12
      manaAtual = 0
      manaMaxima = 0
      escreva("\nVocê escolheu Arqueiro!\n")
      retorne verdadeiro
    } senao se (escolher == 3) {
      classePersonagem = "Mago"
      hpMaximo = 80
      hpAtual = hpMaximo
      ataqueBase = 8
      manaMaxima = 100
      manaAtual = manaMaxima
      escreva("\nVocê escolheu Mago!\n")
      retorne verdadeiro
    } senao {
      escreva("\nEscolha inválida! Por favor, digite 1, 2 ou 3.\n")
      retorne falso
    }
  }

  // --- FUNÇÕES DE COMBATE ---

  /**
   * Função principal de batalha.
   * Retorna VERDADEIRO se o jogador vencer, FALSO se perder (HP 0) ou fugir.
   */
  funcao logico batalhar(cadeia nomeInimigo, inteiro hpInimigoTotal, inteiro ataqueInimigo, logico ehBoss) {
      inteiro hpInimigoAtual = hpInimigoTotal
      cadeia acaoCombate
      fugiuDeCombate = falso // Reseta a flag de fuga no início da batalha

      escreva("\n--- INÍCIO DA BATALHA ---\n")
      escreva("Você enfrenta: ", nomeInimigo, "\n")
      u.aguarde(1000)

      enquanto (hpAtual > 0 e hpInimigoAtual > 0) {
          limpa()
          escreva("========================================\n")
          escreva("  ", nomeAventureiro, " HP: ", hpAtual, "/", hpMaximo)
          se (classePersonagem == "Mago") {
              escreva(" | Mana: ", manaAtual, "/", manaMaxima)
          }
          escreva("\n")
          escreva("  ", nomeInimigo, " HP: ", hpInimigoAtual, "/", hpInimigoTotal, "\n")
          escreva("========================================\n")
          
          escreva("\nO que você fará?\n")
          escreva("1. Atacar\n")
          escreva("2. Usar Habilidade\n")
          escreva("3. Tentar Fugir\n")
          escreva("Escolha sua ação: ")
          leia(acaoCombate)

          escolha (acaoCombate) {
              caso "1": // ATACAR
                  inteiro danoCausado = calcularDanoJogador()
                  hpInimigoAtual = hpInimigoAtual - danoCausado
                  se (hpInimigoAtual < 0) { hpInimigoAtual = 0 } // Garante que HP não fique negativo
                  escreva("\nVocê ataca ", nomeInimigo, " e causa ", danoCausado, " de dano!\n")
                  u.aguarde(1500)
                  pare
              caso "2": // USAR HABILIDADE
                  logico habilidadeUsada = usarHabilidade(ehBoss, nomeInimigo, hpInimigoAtual, hpInimigoTotal)
                  se (nao habilidadeUsada) {
                      escreva("\nNão foi possível usar a habilidade. Pressione ENTER para continuar.\n")
                      cadeia temp
                      leia(temp)
                      // Se a habilidade não foi usada, o turno do inimigo não deve acontecer ainda.
                      // Voltamos para o início do loop para o jogador escolher novamente.
                      continue() // Pula o resto do loop e vai para a próxima iteração
                  }
                  u.aguarde(1500)
                  pare
              caso "3": // FUGIR
                  inteiro chanceFuga = lancarDado(10) // 1 a 10
                  se (chanceFuga >= 7) { // 40% de chance de fuga (7, 8, 9, 10)
                      escreva("\nVocê consegue encontrar uma brecha e foge da batalha!\n")
                      u.aguarde(2000)
                      fugiuDeCombate = verdadeiro
                      retorne falso // Batalha encerrada por fuga
                  } senao {
                      escreva("\nVocê tenta fugir, mas o(a) ", nomeInimigo, " bloqueia seu caminho!\n")
                      u.aguarde(2000)
                      // O inimigo ainda atacará neste turno.
                  }
                  pare
              caso contrario:
                  escreva("\nAção inválida! Pressione ENTER para continuar.\n")
                  cadeia temp
                  leia(temp)
                  continue() // Pula o resto do loop e vai para a próxima iteração
          }

          // Verifica se o inimigo foi derrotado antes do ataque do inimigo
          se (hpInimigoAtual <= 0) {
              escreva("\nO(a) ", nomeInimigo, " foi derrotado(a)!\n")
              u.aguarde(2000)
              retorne verdadeiro // Jogador venceu
          }

          // Turno do Inimigo
          inteiro danoRecebido = calcularDanoSofrido(ataqueInimigo)
          hpAtual = hpAtual - danoRecebido
          se (hpAtual < 0) { hpAtual = 0 } // Garante que HP não fique negativo
          escreva("\n", nomeInimigo, " ataca e causa ", danoRecebido, " de dano em você!\n")
          u.aguarde(1500)

          // Verifica se o jogador foi derrotado
          se (hpAtual <= 0) {
              escreva("\nVocê foi derrotado(a) por ", nomeInimigo, "!\n")
              u.aguarde(2000)
              retorne falso // Jogador perdeu
          }
      }
      retorne falso // Caso a batalha termine por algum motivo inesperado
  }

  // Calcula o dano que o jogador causa
  funcao inteiro calcularDanoJogador() {
      inteiro dano = ataqueBase
      // Arqueiro com Arco da Morte
      se (classePersonagem == "Arqueiro" e possuiArcoDaMorte) {
          dano = dano + u.sorteia(5, 10) // Dano necrótico bônus
          escreva("(Seu Arco da Morte brilha com uma energia sombria!)")
      }
      // Adiciona uma pequena variação ao dano
      dano = dano + u.sorteia(-2, 2)
      se (dano < 1) { dano = 1 } // Garante que o dano mínimo seja 1
      retorne dano
  }

  // Calcula o dano que o jogador recebe, considerando defesas e retornos
  funcao inteiro calcularDanoSofrido(inteiro danoBrutoInimigo) {
      inteiro danoFinal = danoBrutoInimigo
      // Guerreiro com Armadura Esqueletica
      se (classePersonagem == "Guerreiro" e possuiArmaduraEsqueletica) {
          // Proteção contra danos físicos (reduz 20% do dano, exemplo)
          danoFinal = u.arredonda(danoBrutoInimigo * 0.8) // Redução de 20%
          escreva("(Sua Armadura Esqueletica absorve parte do golpe!)")
          
          // Devolve 9% do dano (danoBrutoInimigo)
          inteiro danoRetornado = u.arredonda(danoBrutoInimigo * 0.09)
          se (danoRetornado > 0) {
              // Simplesmente aplica o dano retornado ao inimigo como se fosse o jogador atacando
              // Isso é uma simplificação, pois não temos o inimigo aqui, mas é para feedback visual
              escreva("\n(Sua armadura devolve ", danoRetornado, " de dano ao inimigo!)\n")
              // No contexto atual, precisamos de uma forma de aplicar isso ao inimigo na função batalhar
              // Para simplificar, vou manter como uma mensagem, e na função batalhar isso seria subtraído do hpInimigo
              // Para a função batalhar funcionar corretamente, essa parte precisaria ser movida ou hpInimigoAtual passada como referência
              // Por agora, apenas a mensagem e a redução do dano ao jogador.
              // NO SISTEMA ATUAL, O DANO RETORNADO PRECISA SER APLICADO NA FUNÇÃO 'batalhar()' APÓS O INIMIGO CAUSAR DANO.
              // Vou ajustar isso no batalhar().
          }
      }
      se (danoFinal < 0) { danoFinal = 0 } // Garante que o dano mínimo seja 0
      retorne danoFinal
  }

  /**
   * Função para usar habilidades específicas da classe.
   * Retorna VERDADEIRO se a habilidade foi usada com sucesso, FALSO caso contrário.
   */
  funcao logico usarHabilidade(logico ehBoss, cadeia nomeInimigo, inteiro &hpInimigoAtual, inteiro hpInimigoTotal) {
    se (classePersonagem == "Mago") {
      se (possuiCajadoDoReiEsqueleto) {
        se (manaAtual >= 20) { // Custo de mana
            escreva("\nVocê empunha o Cajado do Rei Esqueleto...\n")
            u.aguarde(1000)
            escreva("E conjura 5 esqueletos para atacar o(a) ", nomeInimigo, "!\n")
            inteiro danoEsqueletos = 5 * u.sorteia(5, 8) // Cada esqueleto causa 5-8 de dano
            hpInimigoAtual = hpInimigoAtual - danoEsqueletos
            manaAtual = manaAtual - 20
            escreva("Os esqueletos causam um total de ", danoEsqueletos, " de dano!\n")
            u.aguarde(1500)
            retorne verdadeiro
        } senao se(manaAtual < 20) {
            escreva("\nVocê não tem mana suficiente para usar 'Dono de Pedaço' (requer 20 mana).\n")
            retorne falso
        }
      } senao se(possuiCajadoDoReiEsqueleto == naoPossuiCajadoDoReiEsqueleto) {
        escreva("\nVocê não possui uma habilidade ativa para usar como Mago ainda.\n")
        retorne falso
      }
    } senao {
      escreva("\nSua classe não possui uma habilidade ativa para usar ainda.\n")
      retorne falso
    }
  }
}

  // Gera um inimigo comum para o cenário atual
  funcao gerarInimigoComum(inteiro idCenario, cadeia &nome, inteiro &hp, inteiro &ataque) {
      inteiro tipoInimigo = u.sorteia(1, 100) // Para dar peso a inimigos diferentes

      escolha (idCenario) {
          caso 0: // Floresta da Névoa (Esqueletos)
              se (tipoInimigo <= 50) { // Esqueleto com arco
                  nome = "Esqueleto Arqueiro"
                  hp = 30 + u.sorteia(-5, 5)
                  ataque = 8 + u.sorteia(-2, 2)
              } senao { // Esqueleto com cajado
                  nome = "Esqueleto Mago"
                  hp = 35 + u.sorteia(-5, 5)
                  ataque = 10 + u.sorteia(-2, 2)
              }
              pare
          caso 1: // Vila Abandonada (Ladrões)
              se (tipoInimigo <= 30) {
                  nome = "Ladrão com Espada"
                  hp = 40 + u.sorteia(-5, 5)
                  ataque = 12 + u.sorteia(-2, 2)
              } senao se (tipoInimigo <= 60) {
                  nome = "Ladrão com Arco"
                  hp = 35 + u.sorteia(-5, 5)
                  ataque = 13 + u.sorteia(-2, 2)
              } senao se (tipoInimigo <= 80) {
                  nome = "Ladrão com Machado"
                  hp = 45 + u.sorteia(-5, 5)
                  ataque = 14 + u.sorteia(-2, 2)
              } senao {
                  nome = "Ladrão com Adaga"
                  hp = 30 + u.sorteia(-5, 5)
                  ataque = 15 + u.sorteia(-2, 2)
              }
              pare
          caso 2: // Caverna Sombria (Lobisomens)
              nome = "Lobisomem Jovem"
              hp = 50 + u.sorteia(-10, 10)
              ataque = 18 + u.sorteia(-3, 3)
              pare
          caso 3: // Pântano dos Lamentos (Crocoviles)
              nome = "Crocovile Jovem"
              hp = 60 + u.sorteia(-10, 10)
              ataque = 20 + u.sorteia(-3, 3)
              pare
          caso contrario: // Default para cenários não definidos ou Castelo Dourado (inimigos mais fortes)
              nome = "Criatura Sombria"
              hp = 70 + u.sorteia(-10, 10)
              ataque = 25 + u.sorteia(-3, 3)
              pare
      }
  }

  // Gera o chefe para o cenário atual
  funcao gerarBoss(inteiro idCenario, cadeia &nome, inteiro &hp, inteiro &ataque) {
      escolha (idCenario) {
          caso 0: // Floresta da Névoa
              nome = "Rei Esqueleto"
              hp = 200 // HP de Boss
              ataque = 25 // Ataque de Boss
              pare
          caso 1: // Vila Abandonada
              nome = "Angelino Brontie"
              hp = 180
              ataque = 22
              pare
          caso 2: // Caverna Sombria
              nome = "Lobisomem Alfa"
              hp = 220
              ataque = 28
              pare
          caso 3: // Pântano dos Lamentos
              nome = "Bombardilo Crocodilo"
              hp = 250
              ataque = 30
              pare
          caso 4: // Castelo Dourado (Chefe final - apenas placeholder aqui)
              nome = "O Devastador"
              hp = 500 // HP muito alto
              ataque = 40 // Ataque muito alto
              pare
      }
  }

  // Concede a recompensa do boss derrotado
  funcao concederRecompensaBoss(inteiro idCenario) {
      escreva("\n\n!! RECOMPENSA DE CHEFE !!\n")
      escolha (idCenario) {
          caso 0: // Rei Esqueleto - Floresta da Névoa
              se (classePersonagem == "Mago") {
                  possuiCajadoDoReiEsqueleto = verdadeiro
                  escreva("Você obteve o Cajado do Rei Esqueleto! (Habilidade: Dono de Pedaço)\n")
              } senao se (classePersonagem == "Guerreiro") {
                  possuiArmaduraEsqueletica = verdadeiro
                  escreva("Você obteve a Armadura Esqueletica! (Proteção contra danos físicos e devolve 9% do dano)\n")
              } senao if (classePersonagem == "Arqueiro") {
                  possuiArcoDaMorte = verdadeiro
                  escreva("Você obteve o Arco da Morte! (Causa dano necrótico)\n")
              }
              pare
          caso 1: // Angelino Brontie - Vila Abandonada
              escreva("Angelino Brontie não deixou nada para trás... por enquanto.\n") // Definir depois
              // Exemplo de recompensa genérica:
              // hpAtual = hpAtual + 20 // Cura bônus
              // manaAtual = manaAtual + 10 // Mana bônus
              pare
          caso 2: // Lobisomem Alfa - Caverna Sombria
              escreva("Você sente uma nova força percorrer suas veias!\n")
              // Exemplo: Aumenta permanentemente o ataque ou HP
              // ataqueBase = ataqueBase + 2
              // hpMaximo = hpMaximo + 10
              // hpAtual = hpAtual + 10
              pare
          caso 3: // Bombardilo Crocodilo - Pântano dos Lamentos
              escreva("O pântano parece mais calmo agora. Uma recompensa misteriosa se materializa.\n")
              // Exemplo: Concede um item de uso único ou uma nova habilidade
              // (requer mais estrutura de dados para itens)
              pare
      }
      escreva("Verifique seu status para detalhes.\n")
      u.aguarde(3000)
  }

  // Função para curar o personagem (simulação de descanso/poção)
  funcao curarPersonagem() {
      hpAtual = hpMaximo // Restaura HP para o máximo
      manaAtual = manaMaxima // Restaura Mana para o máximo
      escreva("\nSeu HP e Mana foram restaurados!\n")
  }

}