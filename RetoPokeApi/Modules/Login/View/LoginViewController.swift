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

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
}

extension LoginViewController: LoginViewControllerPresenterProtocol{
    
}
