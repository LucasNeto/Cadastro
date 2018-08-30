//
//  NewContactViewController.swift
//  Cadastro
//
//  Created by Capgemini on 30/08/2018.
//  Copyright © 2018 Lucas. All rights reserved.
//

import UIKit

class NewContactViewController: UIViewController {

    
    @IBOutlet weak var tfFullName: UITextField!
    @IBOutlet weak var tfPhoneNumber: UITextField!
    @IBOutlet weak var tfMail: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var genreSegmented: UISegmentedControl!
    @IBOutlet weak var switchAgree: UISwitch!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onSaveClick(_ sender: Any) {
        if validarDados(){
            salvarDados()
            alertDefault(title: "Parábens", msg: "Seu cadastro foi salvo com sucesso!") { (action) in
                self.navigationController?.popViewController(animated: true)
            }
        }
    }
    
    func validarDados() -> Bool {
        let errorTitle = "Erro"
        if let name = tfFullName.text, name.isEmpty {
            alertDefault(title: errorTitle, msg: "Por favor, preencha seu nome.", action: nil)
            return false
        }else if let phone = tfPhoneNumber.text, phone.isEmpty {
            alertDefault(title: errorTitle, msg: "Por favor, preencha seu telefone.", action: nil)
            return false
        }else if let mail = tfMail.text, mail.isEmpty {
            alertDefault(title: errorTitle, msg: "Por favor, preencha seu email.", action: nil)
            return false
        }else if !switchAgree.isOn {
            alertDefault(title: errorTitle, msg: "Por favor, declare que as informações estão corretas.", action: nil)
            return false
        }
        return true
    }
    
    func salvarDados() {
        if let fullName = tfFullName.text,
            let phone = tfPhoneNumber.text,
            let mail = tfMail.text {
            ContactService.contatos.append(Contact(fullname: fullName, phone: phone, mail: mail, birthDay: datePicker.date, genre: getGenre()))
        }
    }
    
    func getGenre() -> GenreEnum {
        if genreSegmented.selectedSegmentIndex == 0{
            return .male
        }else{
            return .female
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension NewContactViewController : UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField.returnKeyType == .next {
            focusNext(textField)
        }
        return true
    }
    func focusNext(_ textField : UITextField){
        switch textField {
        case tfFullName:
            tfPhoneNumber.becomeFirstResponder()
        case tfPhoneNumber:
            tfMail.becomeFirstResponder()
        default:
            textField.resignFirstResponder()
        }
    }
}
