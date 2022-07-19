import UIKit

var nome: String = "Macarrao"
var felicidade: String = "5"

let nome2: String = "Churros"
let felicidade2: String = "4"

class Refeicao {
    let nome: String = "Macarrao"
    let felicidade: String = "5"
}

let refeicao: Refeicao = Refeicao()

print(refeicao.nome)

class Refeicao2 {
    var nome = "Churros"
    var felicidade = "4"
}

var refeicao2 = Refeicao2()
print(refeicao2.nome)
