Algoritmo "Imposto"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 26/03/2022
Var
 impSal, impServ, impCap, maxDedutivel, gastDedutivel : real
    impBruTotal, ImpostoDevido : real
    salMensal, salAnual, servAnual, capAnual, medGast, eduGast : real


Inicio
escreval("Renda anual com salário: ")
   leia(salAnual)
   escreval("Renda anual com prestação de serviço: ")
   leia(servAnual)
   escreval("Renda anual com ganho de capital: ")
   leia(capAnual)
   escreval("Gastos médicos: ")
   leia(medGast)
   escreval("Gastos educacionais: ")
   leia(eduGast)

   salMensal <- salAnual / 12

   se salMensal <= 3000.00 entao
      impSal <- 0.00
   senao
      se salMensal <= 5000.00 entao
         impSal <- (salAnual * 10) / 100
      senao
         impSal <- (salAnual * 20) / 100
      fimse
   fimse

   impServ <- (servAnual * 15) / 100
   impCap <- (capAnual * 20) / 100
   impBruTotal <- impSal + impServ + impCap
   maxDedutivel <- (impBruTotal * 30) / 100
   gastDedutivel <- medGast + eduGast


   escreval("RELATÓRIO DE IMPOSTO DE RENDA")

   escreval()

   escreval("CONSOLIDADO DE RENDA:")
   escreval("Imposto sobre salário: ", impSal:8:2)
   escreval("Imposto sobre serviços: ",impServ:8:2)
   escreval("Imposto sobre ganho de capital: ", impCap:8:2)

   escreval()

   escreval("DEDUÇÕES:")
   escreval("Máximo dedutível: ", maxDedutivel:8:2)
   escreval("Gastos dedutíveis: ", gastDedutivel:8:2)

   escreval()

   escreval("RESUMO: ")
   escreval("Imposto bruto total: ", impBruTotal:8:2)

   se maxDedutivel < gastDedutivel entao
      impostoDevido <- impBruTotal - maxDedutivel
      escreval("Abatimento: ", maxDedutivel:8:2)
   senao
      impostoDevido <- impBruTotal - gastDedutivel
      escreval("Abatimento: ", gastDedutivel:8:2)
   fimse

   escreval("Imposto devido: ", impostoDevido:8:2)


Fimalgoritmo