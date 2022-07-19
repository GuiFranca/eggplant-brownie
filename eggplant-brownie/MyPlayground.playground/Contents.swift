import UIKit

class Refeicao {
    var nome: String?
    var felicidade: String?
}

let refeicao: Refeicao = Refeicao()
refeicao.nome = "Macarrao"

if refeicao.nome != nil {
    print(refeicao.nome!)
}

//boas praticas extrair valores opcionais
if let nome = refeicao.nome {
    print(nome)
}

//guard let
func exibeNomeDaRefeicao() {
    if let nome = refeicao.nome {
        print(nome)
    }
    
    guard let nome = refeicao.nome else {
        return
    }
    
    print(nome)
}

exibeNomeDaRefeicao()
