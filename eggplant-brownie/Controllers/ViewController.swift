//
//  ViewController.swift
//  eggplant-brownie
//
//  Created by Guilherme França de Paula on 07/07/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var nomeTextField: UITextField?
    @IBOutlet var felicidadeTextField: UITextField?

    @IBAction func adicionar(_ sender: Any) {
//        if let nomedaRefeicao = nomeTextField?.text, let felicidadeDaRefeicao = felicidadeTextField?.text {
//            let nome = nomedaRefeicao;
//            if let felicidade = Int(felicidadeDaRefeicao){
//                let refeicao = Refeicao(nome: nome, felicidade: felicidade);
//
//                print("Comi \(refeicao.nome) e fiquei com felicidade: \(refeicao.felicidade)")
//            } else {
//                print("erro ao tentar criar refeição")
//            }
//        }
        
        guard let nomeDaRefeicao = nomeTextField?.text else {
            return
        }
        
        guard let felicidadeDaRefeicao = felicidadeTextField?.text, let felicidade = Int(felicidadeDaRefeicao) else {
            return
        }
        
        let refeicao = Refeicao(nome: nomeDaRefeicao, felicidade: felicidade)
        print("Comi \(refeicao.nome) e fiquei com felicidade: \(refeicao.felicidade)")
        
        navigationController?.popViewController(animated: true)
    }
}

