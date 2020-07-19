//
//  ClienteMenuController.swift
//  MarketPlace
//
//  Created by Igor Lima Rocha Azevedo on 19/07/20.
//  Copyright © 2020 Igor Lima Rocha Azevedo. All rights reserved.
//

import UIKit

class ClienteMenuController: UIViewController {
    @IBOutlet weak var autorizarButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        autorizarButton
            .backgroundColor =
            UIColor(red: 228/255, green: 227/255, blue: 227/255, alpha: 0.7)
        
        //Looks for single or multiple taps.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
        view.addGestureRecognizer(tap)
        
    }
    
    //Calls this function when the tap is recognized.
    @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
    
    @IBAction func cadastrarButtonPressed(_ sender: UIButton) {
        autorizarButton.setTitle("Cadastrado!", for: .normal)
        autorizarButton.setTitleColor(.black, for: .normal)
        autorizarButton
            .backgroundColor =
            UIColor(red: 0/255, green: 255/255, blue: 0/255, alpha: 0.7)
    }
}
