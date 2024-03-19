//
//  PokemonDetailsConfigurator.swift
//  RetoPokeApi
//
//  Created by dvarillc on 15/03/24.
//

import Foundation
import UIKit

class PokemonDetailsConfigurator {
    static func makeView(name: String?) -> UIViewController {
        let storyboardMain = UIStoryboard(name: "Main", bundle: nil)
        guard let view = storyboardMain.instantiateViewController(identifier: "pokemonDetailsIdentifier") as? PokemonDetailsViewController else {
            return PokemonDetailsViewController()
        }
        
        let presenter = PokemonDetailsPresenter()
        
        view.presenter = presenter
        view.name = name
        
        let interactor = PokemonDetailsInteractor(presenter: presenter, api: ApiService())
        
        let router = PokemonDetailsRouter(view: view, presenter: presenter)
        
        presenter.interactor = interactor
        presenter.router = router
        presenter.view = view
        
        return view
    }
}
