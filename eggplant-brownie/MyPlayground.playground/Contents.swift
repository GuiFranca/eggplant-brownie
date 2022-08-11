import UIKit

class Refeicao {
    //Atributos
    var nome: String
    var felicidade: String
    var itens: Array<Item> = []
    
    //construtor
    init(nome: String, felicidade: String) {
        self.nome = nome
        self.felicidade = felicidade
    }
    
    // métodos
    func totalDeCalorias() -> Double {
        var total = 0.0
        
        for item in itens {
            total += item.calorias
        }
        return total
    }
}

class Item {
    var nome: String
    var calorias: Double
    
    init(nome: String, calorias: Double) {
        self.nome = nome
        self.calorias = calorias
    }
}

let arroz = Item(nome: "arroz", calorias: 54.2)
let feijao = Item(nome: "feijao", calorias: 24.7)
let contraFile = Item(nome: "contra", calorias: 287.0)

let refeicao = Refeicao(nome: "Macarrao", felicidade: "5")
refeicao.itens.append(arroz)
refeicao.itens.append(feijao)
refeicao.itens.append(contraFile)

print(refeicao.itens.first?.nome)
print(refeicao.totalDeCalorias())

