//
//  PokemonListRouter.swift
//  RetoPokeApi
//
//  Created by dvarillc on 15/03/24.
//

import Foundation
import UIKit

protocol PokemonListRouterPresenterProtocol{
    func showPokemonDetails(pokemon: PokemonElement)
}

class PokemonListRouter {
    var view: UIViewController?
    var presenter: PokemonListPresenterRouterProtocol?
    
    init(view: UIViewController? = nil, presenter: PokemonListPresenterRouterProtocol? = nil) {
        self.view = view
        self.presenter = presenter
    }
}

extension PokemonListRouter: PokemonListRouterPresenterProtocol{
    func showPokemonDetails(pokemon: PokemonElement) {
        view?.navigationController?.pushViewController(PokemonDetailsConfigurator.makeView(id:pokemon.url.extractNumberFromURL()), animated: true)
    }
    
}
