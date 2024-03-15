//
//  PokemonListRouter.swift
//  RetoPokeApi
//
//  Created by dvarillc on 15/03/24.
//

import Foundation
import UIKit

protocol PokemonListRouterPresenterProtocol{
    
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
    
}
