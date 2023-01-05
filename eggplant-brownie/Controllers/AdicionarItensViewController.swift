//
//  AdicionarItensViewController.swift
//  eggplant-brownie
//
//  Created by Guilherme França de Paula on 05/01/23.
//

import UIKit

protocol AdicionaItensDelegate {
    func add(_ item: Item)
}

class AdicionarItensViewController: UIViewController {
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var nomeTextField: UITextField!
    @IBOutlet weak var caloriasTextField: UITextField!
    
    // MARK: - Atributos
    
    var delegate: AdicionaItensDelegate?
    
    init(delegate: AdicionaItensDelegate) {
        super.init(nibName: "AdicionarItensViewController", bundle: nil)
        self.delegate = delegate
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    // MARK: - View life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: -IBAction
    
    

    @IBAction func adicionarItem(_ sender: Any) {
        guard let nome = nomeTextField.text,
              let calorias = caloriasTextField.text
            else { return }
        guard let numeroDeCalorias = Double(calorias) else { return }
        
        let item = Item(nome: nome, calorias: numeroDeCalorias)
        delegate?.add(item)
        // navegar para proxima tela: navigationController.push()
        // voltar tela anterior: navigationController.pop()
        navigationController?.popViewController(animated: true)
    }
    
}
