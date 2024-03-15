//
//  PokemonDetailsRouter.swift
//  RetoPokeApi
//
//  Created by dvarillc on 15/03/24.
//

import Foundation
import UIKit

protocol PokemonDetailsRouterPresenterProtocol{
    
}

class PokemonDetailsRouter {
    var view: UIViewController?
    var presenter: PokemonDetailsPresenterRouterProtocol?
    
    init(view: UIViewController? = nil, presenter: PokemonDetailsPresenterRouterProtocol? = nil) {
        self.view = view
        self.presenter = presenter
    }
}

extension PokemonDetailsRouter: PokemonDetailsRouterPresenterProtocol{
    
}
