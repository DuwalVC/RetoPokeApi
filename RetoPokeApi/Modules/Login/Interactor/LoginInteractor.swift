//
//  LoginInteractor.swift
//  RetoPokeApi
//
//  Created by dvarillc on 15/03/24.
//

import Foundation

protocol LoginInteractorPresenterProtocol{
    func validate(_ user: String, _ password: String)
}

class LoginInteractor{
    
    var sessionTimer: Timer?
    let sessionDuration: TimeInterval = 1 * 60
        
    
    var presenter: LoginPresenterInteractorProtocol?
    
    init(presenter: LoginPresenterInteractorProtocol? = nil) {
        self.presenter = presenter
    }
}

extension LoginInteractor: LoginInteractorPresenterProtocol{
    func validate(_ user: String, _ password: String) {
        
        do {
            try ValidationsInputs.user(user)
            try ValidationsInputs.password(password)
            if (user == "Admin" && password == "Password*123") {
                print("usuario valido")
                presenter?.showPokemonList()
                startSessionTimer()
            } else {
                presenter?.showErrorAlert(error: "No valido")
            }
        } catch EvaluateError.isEmpty {
            presenter?.showErrorAlert(error: "No ingreso valores")
        } catch EvaluateError.isNotValidEmailAddress {
            presenter?.showErrorAlert(error: "No es valido el correo")
        } catch {
            presenter?.showErrorAlert(error: "No cumple con los criterios de seguridad")
        }
        
    }
    
    func startSessionTimer() {
        sessionTimer = Timer.scheduledTimer(withTimeInterval: sessionDuration, repeats: false) { [weak self] timer in
            self?.presenter?.showLogin()
        }
    }
    
}
