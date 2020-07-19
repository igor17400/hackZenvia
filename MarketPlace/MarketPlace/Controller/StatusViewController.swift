//
//  CategoriaViewController.swift
//  MarketPlace
//
//  Created by Igor Lima Rocha Azevedo on 18/07/20.
//  Copyright © 2020 Igor Lima Rocha Azevedo. All rights reserved.
//

import UIKit

class StatusViewController: UIViewController {

    @IBOutlet weak var sendButton: UIButton!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var valueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sendButton.backgroundColor = .clear
        sendButton.layer.cornerRadius = 25
        sendButton.layer.borderWidth = 1
        sendButton
        .backgroundColor =
        UIColor(red: 54/255, green: 54/255, blue: 54/255, alpha: 0.7)
        
        
        stepper.wraps = true
        stepper.autorepeat = true
        stepper.maximumValue = 100
        
    }
    
    @IBAction func sendButtonPressed(_ sender: Any) {
        sendButton.setTitle("Enviado!", for: .normal)
        sendButton.setTitleColor(.black, for: .normal)
        sendButton
        .backgroundColor =
        UIColor(red: 0/255, green: 255/255, blue: 0/255, alpha: 0.7)
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        valueLabel.text = Int(sender.value).description
    }
}

