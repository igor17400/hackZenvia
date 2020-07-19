//
//  LoginViewController.swift
//  MarketPlace
//
//  Created by Igor Lima Rocha Azevedo on 18/07/20.
//  Copyright © 2020 Igor Lima Rocha Azevedo. All rights reserved.
//

import UIKit

class EmpreeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tabBarController?.navigationItem.hidesBackButton = true
        navigationItem.hidesBackButton = true
        
        UITabBar.appearance().barTintColor = UIColor.black
    }


    @IBAction func roupasBebeButton(_ sender: UIButton) {
        self.performSegue(withIdentifier: K.leadsSegue, sender: self)
    }
}
