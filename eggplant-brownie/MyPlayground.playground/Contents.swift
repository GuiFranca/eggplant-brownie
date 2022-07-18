import UIKit

let nome: String = "churros"
let felicidade: Int = 5
let calorias: Double = 79.5
let vegetal: Bool = false

//func alimentoConsumido() {
//    print("o alimento consumido foi: \(nome)")
//}

//alimentoConsumido()


func alimentoConsumido(_ nome: String, _ caloria: Double) {
    print("O alimento consumido foi: \(nome), com calorias \(caloria)")
}

alimentoConsumido(nome, calorias)
