//
//  AuthorizedContactsCell.swift
//  MarketPlace
//
//  Created by Igor Lima Rocha Azevedo on 18/07/20.
//  Copyright © 2020 Igor Lima Rocha Azevedo. All rights reserved.
//

import UIKit

class AuthorizedContactsCell: UITableViewCell {

    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userNumber: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
