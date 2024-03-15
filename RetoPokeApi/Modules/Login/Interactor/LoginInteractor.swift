//
//  LoginInteractor.swift
//  RetoPokeApi
//
//  Created by dvarillc on 15/03/24.
//

import Foundation

protocol LoginInteractorPresenterProtocol{
    
}

class LoginInteractor{
    var presenter: LoginPresenterInteractorProtocol?
    
    init(presenter: LoginPresenterInteractorProtocol? = nil) {
        self.presenter = presenter
    }
}

extension LoginInteractor: LoginInteractorPresenterProtocol{
    
}
