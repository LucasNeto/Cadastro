//
//  ContactTableViewCell.swift
//  Cadastro
//
//  Created by Capgemini on 30/08/2018.
//  Copyright © 2018 Lucas. All rights reserved.
//

import UIKit

class ContactTableViewCell: UITableViewCell {

    
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblPhone: UILabel!
    @IBOutlet weak var lblBirthDay: UILabel!
    @IBOutlet weak var lblMail: UILabel!
    
    
    var contact : Contact? {
        didSet {
            guard let c = contact else { return }
            lblName?.text       = c.fullname
            lblName?.textColor  = c.genre == .male ? UIColor.blue : UIColor.purple
            lblPhone?.text      = c.phone
            lblBirthDay?.text   = c.getDate()
            lblMail?.text       = c.mail
            
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
