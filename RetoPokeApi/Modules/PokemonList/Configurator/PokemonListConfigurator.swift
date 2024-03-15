//
//  PokemonListConfigurator.swift
//  RetoPokeApi
//
//  Created by dvarillc on 15/03/24.
//

import Foundation
import UIKit

class PokemonListConfigurator {
    static func makeView() -> UIViewController {
        let storyboardMain = UIStoryboard(name: "Main", bundle: nil)
        guard let view = storyboardMain.instantiateViewController(identifier: "PokemonListIdentifier") as? PokemonListViewController else {
            return PokemonListViewController()
        }
        
        let presenter = PokemonListPresenter()
        
        view.presenter = presenter
        
        let interactor = PokemonListInteractor(presenter: presenter)
        
        let router = PokemonListRouter(view: view, presenter: presenter)
        
        presenter.interactor = interactor
        presenter.router = router
        presenter.view = view
        
        return view
    }
}
