//
//  PokemonListPresenter.swift
//  RetoPokeApi
//
//  Created by dvarillc on 15/03/24.
//

import Foundation

protocol PokemonListPresenterViewControllerProtocol{
    func getPokemonList(requestPage: String)
    func showPokemonDetails(pokemon: PokemonElement)
}

protocol PokemonListPresenterInteractorProtocol{
    func setPokeList(_ response: PokemonList)
}

protocol PokemonListPresenterRouterProtocol{
    
}

class PokemonListPresenter{
    var view: PokemonListViewControllerPresenterProtocol?
    var interactor: PokemonListInteractorPresenterProtocol?
    var router: PokemonListRouterPresenterProtocol?
}

extension PokemonListPresenter: PokemonListPresenterViewControllerProtocol{
    func showPokemonDetails(pokemon: PokemonElement) {
        router?.showPokemonDetails(pokemon: pokemon)
    }
    
    func getPokemonList(requestPage: String) {
        interactor?.getPokemonList(requestPage: requestPage)
    }
    
}

extension PokemonListPresenter: PokemonListPresenterInteractorProtocol{
    func setPokeList(_ response: PokemonList) {
        view?.setPokeList(response)
    }
    
}

extension PokemonListPresenter: PokemonListPresenterRouterProtocol{
    
}
