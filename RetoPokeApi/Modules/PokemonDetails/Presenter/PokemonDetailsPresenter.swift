//
//  PokemonDetailsPresenter.swift
//  RetoPokeApi
//
//  Created by dvarillc on 15/03/24.
//

import Foundation

protocol PokemonDetailsPresenterViewControllerProtocol{
    func getPokemonDetails(_ name: String)
}

protocol PokemonDetailsPresenterInteractorProtocol{
    func setPokeDetails(_ response: PokemonDetails)
}

protocol PokemonDetailsPresenterRouterProtocol{
    
}

class PokemonDetailsPresenter{
    var view: PokemonDetailsViewControllerPresenterProtocol?
    var interactor: PokemonDetailsInteractorPresenterProtocol?
    var router: PokemonDetailsRouterPresenterProtocol?
}

extension PokemonDetailsPresenter: PokemonDetailsPresenterViewControllerProtocol{
    func getPokemonDetails(_ name: String) {
        interactor?.getPokemonDetails(name)
    }
    
}

extension PokemonDetailsPresenter: PokemonDetailsPresenterInteractorProtocol{
    func setPokeDetails(_ response: PokemonDetails) {
        view?.setPokeDetails(response)
    }
    
}

extension PokemonDetailsPresenter: PokemonDetailsPresenterRouterProtocol{
    
}
