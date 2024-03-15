//
//  PokemonDetailsInteractor.swift
//  RetoPokeApi
//
//  Created by dvarillc on 15/03/24.
//

import Foundation

protocol PokemonDetailsInteractorPresenterProtocol{
    
}

class PokemonDetailsInteractor{
    var presenter: PokemonDetailsPresenterInteractorProtocol?
    
    init(presenter: PokemonDetailsPresenterInteractorProtocol? = nil) {
        self.presenter = presenter
    }
}

extension PokemonDetailsInteractor: PokemonDetailsInteractorPresenterProtocol{
    
}
