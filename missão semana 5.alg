algoritmo "semnome"
var
   temp: vetor[1..4] de real
   tempConv: vetor[1..4] de real
   hora: vetor[1..4] de real
   i, j: inteiro
   opcao: caractere
   aux1, aux2, aux3: real
   
Funcao ConverterCF(TCel: real): real
inicio
   Retorne TCel*1.8 + 32
fimFuncao

Funcao ConverterFC(TFah: real): real
inicio
   Retorne (TFah-32)/1.8
fimFuncao

   
inicio
   Escreval("--------------------------")
   Escreval("SUPER CONVERSOR DE TEMPERATURA")
   Escreval("--------------------------")
   Escreval(" 1)Celsius para Fahrenheit")
   Escreval(" 2)Fahrenheit para Celsius")
   Leia(opcao)
   Escreval()
   Escreval("Digite a temperatura e seu respectivo horario: ")
   Para i de 1 ate 4 faca
      Escreva("T: ")
      Leia(temp[i])
      Escreva("H: ")
      Leia(hora[i])
      Escreval("--------")
   fimPara
   
   Para i de 1 ate 3 faca
      Para j <- i+1 ate 4 faca
         Se (temp[i] > temp[j]) entao
            aux1 <- temp[i]
            temp[i] <- temp[j]
            temp[j] <- aux1

            aux2 <- hora[i]
            hora[i] <- hora[j]
            hora[j] <- aux2
         fimSe
      fimPara
   fimPara
   
   Escolha opcao
      Caso "1"
         Para i de 1 ate 4 faca
            tempConv[i] <- ConverterCF(temp[i])
         fimPara
      Caso "2"
         Para i de 1 ate 4 faca
            tempConv[i] <- ConverterFC(temp[i])
         fimPara
   fimEscolha
   
   Se (opcao = "1") entao
      Para i de 1 ate 4 faca
         Escreval("Temperatura ", temp[i]:3:1, "°C, registrada as ", hora[i], "h, corresponde a ", tempConv[i]:3:1, "°F")
      fimPara
   senao
      Para i de 1 ate 4 faca
         Escreval("Temperatura ", temp[i]:3:1, "°F, registrada as ", hora[i], "h, corresponde a ", tempConv[i]:3:1, "°C")
      fimPara
   fimSe

fimalgoritmo
