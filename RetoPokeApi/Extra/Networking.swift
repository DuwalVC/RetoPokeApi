//
//  Networking.swift
//  RetoPokeApi
//
//  Created by dvarillc on 15/03/24.
//

import Foundation
import Alamofire

protocol ApiServiceLogin{
    func getPokemonList(page: String, _ completion: @escaping(PokemonList?, String?) -> Void )
}

class ApiService {
    
}

extension ApiService: ApiServiceLogin{
    
    func getPokemonList(page: String, _ completion: @escaping(PokemonList?, String?) -> Void ){
        let requests = AF.request(page)
        
        requests.responseDecodable(of: PokemonList.self) { response in
            
            switch response.result {
            case .success(let pokemons):
                completion(pokemons, nil)
            case .failure(let failure):
                completion(nil, failure.localizedDescription)
            }
        }
    }
    
}

