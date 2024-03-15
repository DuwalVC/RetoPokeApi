//
//  PokemonListPresenter.swift
//  RetoPokeApi
//
//  Created by dvarillc on 15/03/24.
//

import Foundation

protocol PokemonListPresenterViewControllerProtocol{
    
}

protocol PokemonListPresenterInteractorProtocol{
    
}

protocol PokemonListPresenterRouterProtocol{
    
}

class PokemonListPresenter{
    var view: PokemonListViewControllerPresenterProtocol?
    var interactor: PokemonListInteractorPresenterProtocol?
    var router: PokemonListRouterPresenterProtocol?
}

extension PokemonListPresenter: PokemonListPresenterViewControllerProtocol{
    
}

extension PokemonListPresenter: PokemonListPresenterInteractorProtocol{
    
}

extension PokemonListPresenter: PokemonListPresenterRouterProtocol{
    
}
