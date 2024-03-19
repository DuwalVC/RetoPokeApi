//
//  PokemonDetailsInteractor.swift
//  RetoPokeApi
//
//  Created by dvarillc on 15/03/24.
//

import Foundation

protocol PokemonDetailsInteractorPresenterProtocol{
    func getPokemonDetails(_ name: String)
}

class PokemonDetailsInteractor{
    var presenter: PokemonDetailsPresenterInteractorProtocol?
    var api: ApiServicePokemonDetails?
    
    init(presenter: PokemonDetailsPresenterInteractorProtocol? = nil, api: ApiServicePokemonDetails? = nil) {
        self.presenter = presenter
        self.api = api
    }
}

extension PokemonDetailsInteractor: PokemonDetailsInteractorPresenterProtocol{
    func getPokemonDetails(_ name: String) {
        api?.getPokemonDetails(name: name, { response, error in
            if let response = response {
                print("response = \(response)")
                self.presenter?.setPokeDetails(response)
            } else {
                print("error \(error)" ?? "userAuthentication() error no encontrado")
                
            }
        })
    }
    
}
