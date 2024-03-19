//
//  LoginViewController.swift
//  RetoPokeApi
//
//  Created by dvarillc on 15/03/24.
//

import UIKit

protocol LoginViewControllerPresenterProtocol{
    
}

class LoginViewController: UIViewController{
    
    var presenter: LoginPresenterViewControllerProtocol?
    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!

    @IBAction func validatorButton(_ sender: Any) {
        presenter?.validate(userTextField.text ?? "", passwordTextField.text ?? "")
        userTextField.text = ""
        passwordTextField.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

extension LoginViewController: LoginViewControllerPresenterProtocol{
    
}
