//
//  UIViewControllerExtension.swift
//  Cadastro
//
//  Created by Capgemini on 30/08/2018.
//  Copyright © 2018 Lucas. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    
    func alertDefault(title: String, msg: String, action: ((UIAlertAction) -> Void)?){
        
        let controller = UIAlertController(title: title, message: msg, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "OK", style: .default, handler: action)
        
        controller.addAction(action)
        
        present(controller, animated: true, completion: nil)
        
    }
}
