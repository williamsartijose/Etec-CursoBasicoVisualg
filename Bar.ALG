Algoritmo "Bar"
Var
   sexo : caractere
   qtdeCerv, qtdeRefri, qtdeEsp : inteiro
   cerv, refri, espet, consumo, couvert, ingresso, total : real

Inicio

   escreva("Sexo: ")
   leia(sexo)
   escreva("Quantidade de cervejas: ")
   leia(qtdeCerv)
   escreva("Quantidade de refrigerantes: ")
   leia(qtdeRefri)
   escreva("Quantidade de espetinhos: ")
   leia(qtdeEsp)

   se (sexo = "F") ou (sexo = "f") entao
      ingresso <- 8.00
   senao
      se (sexo = "M") ou (sexo = "m") entao
         ingresso <- 10.00
      fimse
   fimse

   cerv <- 5.00
   refri <- 3.00
   espet <- 7.00

   consumo <- (qtdeCerv * cerv) + (qtdeRefri * refri) + (qtdeEsp * espet)

   escreval()

   escreval("RELATÓRIO: ")

   escreval("Consumo = ", " R$ ", consumo:4:2)

   se consumo >= 30.00 entao
      escreval("Insento de Couvert")
   senao
      couvert <- 4.00
      escreval("Couvert = ", " R$ ", couvert:4:2)
   fimse

   escreval("Ingresso = ", " R$ ", ingresso:4:2)

   total <- consumo + couvert + ingresso

   escreval()

   escreval("Valor a pagar = ", " R$ ", total:4:2)

Fimalgoritmo