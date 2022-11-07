//
//  Refeicao.swift
//  eggplant-brownie
//
//  Created by Guilherme França de Paula on 11/08/22.
//

import UIKit

class Refeicao: NSObject {
    
    //Atributos
    let nome: String
    let felicidade: Int
    let itens: Array<Item> = []
    
    //construtor
    init(nome: String, felicidade: Int) {
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
