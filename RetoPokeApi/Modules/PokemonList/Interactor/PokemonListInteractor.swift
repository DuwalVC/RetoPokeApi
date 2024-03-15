//
//  PokemonListInteractor.swift
//  RetoPokeApi
//
//  Created by dvarillc on 15/03/24.
//

import Foundation

protocol PokemonListInteractorPresenterProtocol{
    func getPokemonList(requestPage: String)
}

class PokemonListInteractor{
    var presenter: PokemonListPresenterInteractorProtocol?
    var api: ApiServiceLogin?
    
    init(presenter: PokemonListPresenterInteractorProtocol? = nil, api: ApiServiceLogin? = nil) {
        self.presenter = presenter
        self.api = api
    }
    
}

extension PokemonListInteractor: PokemonListInteractorPresenterProtocol{
    func getPokemonList(requestPage: String) {
        api?.getPokemonList(page: requestPage, { response, error in
            if let response = response {
                print("response = \(response)")
                self.presenter?.setData(response)
            } else {
                print("error \(error)" ?? "userAuthentication() error no encontrado")
                
//                self.presenter?.showAlert()
            }
        })
    }
    
}
