//
//  ViewController.swift
//  eggplant-brownie
//
//  Created by Guilherme França de Paula on 07/07/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var nomeTextField: UITextField! // ! force unwrapp
    @IBOutlet var felicidadeTextField: UITextField!

    @IBAction func adicionar(_ sender: Any) {
        let nome = nomeTextField.text
        let felicidade = felicidadeTextField.text;
        print("Comi \(nome) e fiquei com felicidade: \(felicidade)")
    }
}

