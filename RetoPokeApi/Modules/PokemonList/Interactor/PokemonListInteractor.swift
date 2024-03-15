//
//  PokemonListInteractor.swift
//  RetoPokeApi
//
//  Created by dvarillc on 15/03/24.
//

import Foundation

protocol PokemonListInteractorPresenterProtocol{
    
}

class PokemonListInteractor{
    var presenter: PokemonListPresenterInteractorProtocol?
    
    init(presenter: PokemonListPresenterInteractorProtocol? = nil) {
        self.presenter = presenter
    }
}

extension PokemonListInteractor: PokemonListInteractorPresenterProtocol{
    
}
