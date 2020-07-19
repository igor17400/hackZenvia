//
//  ViewController.swift
//  MarketPlace
//
//  Created by Igor Lima Rocha Azevedo on 18/07/20.
//  Copyright © 2020 Igor Lima Rocha Azevedo. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var RegisterButton: UIButton!
    @IBOutlet weak var LoginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        RegisterButton
        .backgroundColor =
        UIColor(red: 54/255, green: 54/255, blue: 54/255, alpha: 0.7)
        
        LoginButton
            .backgroundColor =
            UIColor(red: 54/255, green: 54/255, blue: 54/255, alpha: 0.7)
        
        
        self.navigationController!.navigationBar.barStyle = .black
        self.navigationController!.navigationBar.isTranslucent = true
        self.navigationController!.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        self.navigationController!.navigationBar.tintColor = #colorLiteral(red: 1, green: 0.99997437, blue: 0.9999912977, alpha: 1)
    }


}

