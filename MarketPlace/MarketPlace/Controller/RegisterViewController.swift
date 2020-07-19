//
//  RegisterViewController.swift
//  MarketPlace
//
//  Created by Igor Lima Rocha Azevedo on 18/07/20.
//  Copyright © 2020 Igor Lima Rocha Azevedo. All rights reserved.
//


import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var RegisterButton: UIButton!
     
    override func viewDidLoad() {
        super.viewDidLoad()
        
        RegisterButton
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


}
