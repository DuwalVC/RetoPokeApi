//
//  PokemonDetailsPresenter.swift
//  RetoPokeApi
//
//  Created by dvarillc on 15/03/24.
//

import Foundation

protocol PokemonDetailsPresenterViewControllerProtocol{
    
}

protocol PokemonDetailsPresenterInteractorProtocol{
    
}

protocol PokemonDetailsPresenterRouterProtocol{
    
}

class PokemonDetailsPresenter{
    var view: PokemonDetailsViewControllerPresenterProtocol?
    var interactor: PokemonDetailsInteractorPresenterProtocol?
    var router: PokemonDetailsRouterPresenterProtocol?
}

extension PokemonDetailsPresenter: PokemonDetailsPresenterViewControllerProtocol{
    
}

extension PokemonDetailsPresenter: PokemonDetailsPresenterInteractorProtocol{
    
}

extension PokemonDetailsPresenter: PokemonDetailsPresenterRouterProtocol{
    
}
