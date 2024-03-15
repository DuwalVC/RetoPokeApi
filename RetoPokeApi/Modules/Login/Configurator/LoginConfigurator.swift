//
//  LoginConfigurator.swift
//  RetoPokeApi
//
//  Created by dvarillc on 15/03/24.
//

import Foundation

class LoginConfigurator {
    static func makeView() -> UIViewController {
        let storyboardMain = UIStoryboard(name: "Main", bundle: nil)
        guard let view = storyboardMain.instantiateViewController(identifier: "loginIdentifier") as? LoginViewController else {
            return LoginViewController()
        }
        
        let presenter = LoginPresenter()
        
        view.presenter = presenter
        
        let interactor = LoginInteractor(presenter: presenter)
        
        let router = LoginRouter(view: view, presenter: presenter)
        
        presenter.interactor = interactor
        presenter.router = router
        presenter.view = view
        
        return view
    }
}
