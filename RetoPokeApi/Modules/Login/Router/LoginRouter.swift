//
//  LoginRouter.swift
//  RetoPokeApi
//
//  Created by dvarillc on 15/03/24.
//

import Foundation
import UIKit

protocol LoginRouterPresenterProtocol{
    func showLogin()
    func showPokemonList()
    func showErrorAlert(error: String)
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
    func showLogin() {
        view?.navigationController?.popToRootViewController(animated: true)
    }
    
    func showErrorAlert(error: String) {
        let alert = UIAlertController(title: "Error", message: error, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Aceptar", style: .default, handler: nil))
        view?.present(alert, animated: true, completion: nil)
    }
    
    func showPokemonList() {
        view?.navigationController?.pushViewController(PokemonListConfigurator.makeView(), animated: true)
    }
}
