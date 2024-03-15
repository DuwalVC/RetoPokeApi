//
//  PokemonListPresenter.swift
//  RetoPokeApi
//
//  Created by dvarillc on 15/03/24.
//

import Foundation

protocol PokemonListPresenterViewControllerProtocol{
    func getPokemonList(requestPage: String)
}

protocol PokemonListPresenterInteractorProtocol{
    func setData(_ response: PokemonList)
}

protocol PokemonListPresenterRouterProtocol{
    
}

class PokemonListPresenter{
    var view: PokemonListViewControllerPresenterProtocol?
    var interactor: PokemonListInteractorPresenterProtocol?
    var router: PokemonListRouterPresenterProtocol?
}

extension PokemonListPresenter: PokemonListPresenterViewControllerProtocol{
    func getPokemonList(requestPage: String) {
        interactor?.getPokemonList(requestPage: requestPage)
    }
    
}

extension PokemonListPresenter: PokemonListPresenterInteractorProtocol{
    func setData(_ response: PokemonList) {
        view?.setData(response)
    }
    
}

extension PokemonListPresenter: PokemonListPresenterRouterProtocol{
    
}
