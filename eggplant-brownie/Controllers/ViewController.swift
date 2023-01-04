//
//  ViewController.swift
//  eggplant-brownie
//
//  Created by Guilherme França de Paula on 07/07/22.
//

import UIKit

protocol  AdicionaRefeicaoDelegate {
    func add(_ refeicao: Refeicao)
}

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // MARK: - Atributos
    
    var delegate: AdicionaRefeicaoDelegate?
    // var itens: [String] = ["Molho de Tomate", "Queijo", "Majeiricão", "Molho apimentado"]
    
    var itens: [Item] = [Item(nome: "Molho de Tomate", calorias: 40.0),
                         Item(nome: "Queijo", calorias: 4.0),
                         Item(nome: "Majeiricão", calorias: 58.3),
                         Item(nome: "Molho apimentado", calorias: 16.7),
                         Item(nome: "Azeitona", calorias: 0.8),]
    
    var itensSelecionados: [Item] = []
    
    // MARK: - IBOutlets
    
    @IBOutlet var nomeTextField: UITextField?
    @IBOutlet var felicidadeTextField: UITextField?
    
    // MARK: - UiTableViewDatasource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itens.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = UITableViewCell(style: .default, reuseIdentifier: nil)
        let linhaDaTabela = indexPath.row
        celula.textLabel?.text = itens[linhaDaTabela].nome
        
        return celula
    }
    
    // MARK: - UITableViewDelegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let celula = tableView.cellForRow(at: indexPath) else { return }
        
        if celula.accessoryType == .none {
            celula.accessoryType = .checkmark
            let linhaTabela = indexPath.row
            itensSelecionados.append(itens[linhaTabela])
        } else {
            celula.accessoryType = .none
            let item = itens[indexPath.row]
            if let position = itensSelecionados.index(of: item) {
            itensSelecionados.remove(at: position)
            }
        }
        
        
    }

    // MARK - IBActions
    
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
        
        let refeicao = Refeicao(nome: nomeDaRefeicao, felicidade: felicidade, itens: itensSelecionados)
        //refeicao.itens = itensSelecionados
        
        print("Comi \(refeicao.nome) e fiquei com felicidade: \(refeicao.felicidade)")
        
        delegate?.add(refeicao)
        navigationController?.popViewController(animated: true)
    }
}

