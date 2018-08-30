//
//  ContactService.swift
//  Cadastro
//
//  Created by Lucas on 30/08/2018.
//  Copyright © 2018 Lucas. All rights reserved.
//

import Foundation

class ContactService {
    
//    static var contatos : [Contact] = []
    static var contatos : [Contact] = [
        Contact(fullname: "Lucas Neto Santana", phone: "(11) 99880-8766", mail: "lucasnetoo@hotmail.com", birthDay: Date(), genre: .male),
        Contact(fullname: "Maria Silva Santos", phone: "(11) 99880-8766", mail: "maria@hotmail.com"     , birthDay: Date(), genre: .female),
        Contact(fullname: "João Souza da Silva", phone: "(11) 99880-8766", mail: "joao@hotmail.com", birthDay: Date(), genre: .male)
    ]
}
