//
//  LoginPresenter.swift
//  RetoPokeApi
//
//  Created by dvarillc on 15/03/24.
//

import Foundation

protocol LoginPresenterViewControllerProtocol{
    func validate(_ user: String, _ password: String)
}

protocol LoginPresenterInteractorProtocol{
    func showLogin()
    func showPokemonList()
    func showErrorAlert(error: String)
}

protocol LoginPresenterRouterProtocol{
    
}

class LoginPresenter{
    var view: LoginViewControllerPresenterProtocol?
    var interactor: LoginInteractorPresenterProtocol?
    var router: LoginRouterPresenterProtocol?
}

extension LoginPresenter: LoginPresenterViewControllerProtocol{
    func validate(_ user: String, _ password: String) {
        interactor?.validate(user, password)
    }
    
    
}

extension LoginPresenter: LoginPresenterInteractorProtocol{
    func showLogin() {
        router?.showLogin()
    }
    
    func showPokemonList() {
        router?.showPokemonList()
    }
    
    func showErrorAlert(error: String) {
        router?.showErrorAlert(error: error)
    }
    
}

extension LoginPresenter: LoginPresenterRouterProtocol{
    
}
