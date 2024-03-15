//
//  LoginRouter.swift
//  RetoPokeApi
//
//  Created by dvarillc on 15/03/24.
//

import Foundation
import UIKit

protocol LoginRouterPresenterProtocol{
    
}

class LoginRouter {
    var view: UIViewController?
    var presenter: LoginPresenterRouterProtocol?
    
    init(view: UIViewController? = nil, presenter: LoginPresenterRouterProtocol? = nil) {
        self.view = view
        self.presenter = presenter
    }
}

extension LoginRouter: LoginRouterPresenterProtocol{
    
}
