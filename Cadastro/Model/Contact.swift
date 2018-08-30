//
//  Contato.swift
//  Cadastro
//
//  Created by Capgemini on 30/08/2018.
//  Copyright © 2018 Lucas. All rights reserved.
//

import UIKit

class Contact: NSObject {
    
    var fullname : String = ""
    var phone : String = ""
    var mail : String = ""
    var birthDay : Date?
    var genre : GenreEnum = .male
    
    override init() {
    }
    
    init(fullname _fullname: String,phone _phone:String,mail _mail: String,birthDay _birthDay : Date?, genre _genre: GenreEnum) {
        
        fullname    = _fullname
        phone       = _phone
        mail        = _mail
        birthDay    = _birthDay
        genre       = _genre
        
    }
    
    func getDate(_ format : String = "dd/MM/yyyy") -> String {
        let dtFormat = DateFormatter()
        dtFormat.dateFormat = format
        if let b = birthDay {
            return dtFormat.string(from: b)
        }
        return "-"
    }
}

enum GenreEnum {
    case male
    case female
}
