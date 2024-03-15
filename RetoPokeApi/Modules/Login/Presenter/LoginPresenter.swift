//
//  LoginPresenter.swift
//  RetoPokeApi
//
//  Created by dvarillc on 15/03/24.
//

import Foundation

protocol LoginPresenterViewControllerProtocol{
    
}

protocol LoginPresenterInteractorProtocol{
    
}

protocol LoginPresenterRouterProtocol{
    
}

class LoginPresenter{
    var view: LoginViewControllerPresenterProtocol?
    var interactor: LoginInteractorPresenterProtocol?
    var router: LoginRouterPresenterProtocol?
}

extension LoginPresenter: LoginPresenterViewControllerProtocol{
    
}

extension LoginPresenter: LoginPresenterInteractorProtocol{
    
}

extension LoginPresenter: LoginPresenterRouterProtocol{
    
}
