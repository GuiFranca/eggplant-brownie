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
    var itens: Array<Item> = []
    
    //construtor
    init(nome: String, felicidade: Int, itens: [Item] = []) {
        self.nome = nome
        self.felicidade = felicidade
        self.itens = itens
    }
    
    // métodos
    func totalDeCalorias() -> Double {
        var total = 0.0
        
        for item in itens {
            total += item.calorias
        }
        return total
    }
    
    func detalhes() -> String {
        var mensagem = "Felicidade: \(felicidade)"
        
        for item in itens {
            mensagem += ", \(item.nome) - calorias: \(item.calorias)"
        }
        
        return mensagem;
    }

}
