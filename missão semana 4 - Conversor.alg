algoritmo "SuperConversor"
var
   operac, continuacao: caractere
   temp, tempConv, valor, valorConv, cot: real
inicio
   Repita
      LimpaTela
      Escreval("---------------")
      EscrevaL("CONVERSOR GERAL")
      Escreval("---------------")
      Escreval()
      Escreval("1)Temperatura F para C ")
      Escreval("2)Temperatura C para F ")
      Escreval("3)Moeda US$ para R$ ")
      Escreval("4)Moeda R$ para US$ ")
      Escreva("Escolha o número referente à operação desejada: ")
      Leia(operac)
      Escreval()
      Escolha operac
         Caso "1"
            Escreva("Qual a temperatura(°F)? ")
            Leia(temp)
            tempConv <- (temp-32)/1.8
            Escreval(temp, "°F equivale a ", tempConv:2:1, "°C")
         Caso "2"
            Escreva("Qual a temperatura(°C)? ")
            Leia(temp)
            tempConv <- temp*1.8 + 32
            Escreval(temp, "°C equivale a ", tempConv:2:1, "°F")
         Caso "3"
            Escreva("Cotação do dolar: ")
            Leia(cot)
            Escreva("Valor que deseja converter: ")
            Leia(valor)
            valorConv <- valor*cot
            Escreval("US$", valor, " equivale a R$", valorConv:4:2)
         Caso "4"
            Escreva("Cotação do dolar: ")
            Leia(cot)
            Escreva("Valor que deseja converter: ")
            Leia(valor)
            valorConv <- valor/cot
            Escreval("R$", valor, " equivale a US$", valorConv:4:2)
      fimEscolha
      Escreval()
      Escreva("Deseja fazer outra operação? [S/N] ")
      Leia(continuacao)
   ate continuacao = "N"

fimalgoritmo
