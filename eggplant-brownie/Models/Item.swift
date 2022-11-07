//
//  Item.swift
//  eggplant-brownie
//
//  Created by Guilherme França de Paula on 11/08/22.
//

import UIKit

class Item: NSObject {
    let nome: String
    let calorias: Double
    
    init(nome: String, calorias: Double) {
        self.nome = nome
        self.calorias = calorias
    }
}
