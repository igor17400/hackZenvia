//
//  ClienteSelecaoController.swift
//  MarketPlace
//
//  Created by Igor Lima Rocha Azevedo on 19/07/20.
//  Copyright © 2020 Igor Lima Rocha Azevedo. All rights reserved.
//

import UIKit

class ClienteSelecaoController: UIViewController {
    
    @IBOutlet weak var button11: UIButton!
    @IBOutlet weak var button12: UIButton!
    @IBOutlet weak var button21: UIButton!
    @IBOutlet weak var button22: UIButton!
    @IBOutlet weak var button31: UIButton!
    @IBOutlet weak var button32: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func button11Pressed(_ sender: UIButton) {
        button11.setTitle("Tênis e sapatos foi Selecionado!", for: .normal)
        button11.setTitleColor(.green, for: .normal)
        button11
            .backgroundColor =
            UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 0.8)
    }
    
    @IBAction func button21Pressed(_ sender: UIButton) {
        button12.setTitle("Roupas masculinas foi Selecionado!", for: .normal)
        button12.setTitleColor(.green, for: .normal)
        button12
            .backgroundColor =
            UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 0.8)
    }

    
    @IBAction func button31Pressed(_ sender: Any) {
        button31.setTitle("Móveis foi Selecionado!", for: .normal)
        button31.setTitleColor(.green, for: .normal)
        button31
            .backgroundColor =
            UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 0.8)
    }
}
