programa {
	inclua biblioteca Util
	cadeia carros[] = {"hb20", "jetta", "cronos", "kiwid"}
	real precos[] = {80000.00, 300000.00, 75000.00, 60000.00}, caixa = 200000.00 , valor
	inteiro estoque [] = {1, 0, 1, 2}, opcao, carro
	
	
	
	funcao inicio() {
		inteiro sair = -1
		enquanto (sair != 0){
			escreva("Bem vindo ao sistema concessionária C&G\n")
			escreva("(1) para venda de carro\n")
			escreva("(2) para aluguel de carro\n")
			escreva("(3) para comprar um carro\n")
			leia(opcao)
			limpa()	
			
			escolha(opcao) {
				caso 0:
					sair = 0
				pare
				caso 1:
					menu()
				pare
				caso 2:
					menu()
				pare
				caso 3:
					menu()
				pare
			}
		}	
	}

		funcao menu(){
			escreva("nossas opções de carros são\n")
			escreva("0--> hb20\n 1--> jetta\n 2--> cronos\n 3--> kiwid")
			leia(carro)

			escolha(carro) {
				caso 0:
					se(opcao == 1){
						venda(0)
					} senao se(opcao == 2){
						aluguel(0)
					}senao se(opcao == 3){
						comprar(0)
					}
					
				pare
				caso 1:
					se(opcao == 1){
						venda(1)
					} senao se(opcao == 2){
						aluguel(1)
					}senao se(opcao == 3){
						comprar(1)
					}
				pare	
				caso 2:
					se(opcao == 1){
						venda(2)
					} senao se(opcao == 2){
						aluguel(2)
					}senao se(opcao == 3){
						comprar(2)
					}
				pare		
				caso 3:
					se(opcao == 1){
						venda(3)
					} senao se(opcao == 2){
						aluguel(3)
					}senao se(opcao == 3){
						comprar(3)
					}
					
				pare	
		}
	}

	funcao venda(inteiro carro) {
		limpa()
		escreva("qual é o seu valor?\n")
		leia(valor)
		real preco1 = precos[carro] * 0.84
		se(valor <= preco1){
			se(caixa < valor){
				escreva("caixa insuficiente")
			}senao{
			escreva("parabens,venda bem sucedida")
			caixa -= preco1
			
		}
		}
	}

	funcao aluguel(inteiro carro) {
		
	}

	funcao comprar(inteiro carro) {
		
	}
		
}	
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1478; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */