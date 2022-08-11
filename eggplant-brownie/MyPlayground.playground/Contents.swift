import UIKit

class Refeicao {
    //Atributos
    var nome: String
    var felicidade: String
    
    //construtor
    init(nome: String, felicidade: String) {
        self.nome = nome
        self.felicidade = felicidade
    }
}

let refeicao = Refeicao(nome: "Macarrao", felicidade: "5")

print(refeicao.nome)
print(refeicao.felicidade)
