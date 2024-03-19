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

protocol ApiServicePokemonDetails{
    func getPokemonDetails(name: String, _ completion: @escaping(PokemonDetails?, String?) -> Void )
}

class ApiService {
    var domain: String = "https://pokeapi.co/api/v2/"
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

extension ApiService: ApiServicePokemonDetails{
    
    func getPokemonDetails(name: String, _ completion: @escaping(PokemonDetails?, String?) -> Void ){
        let requests = AF.request(domain + "pokemon/\(name)")
        print(domain + "pokemon/\(name)")
        
        requests.responseDecodable(of: PokemonDetails.self) { response in
            
            switch response.result {
            case .success(let pokemons):
                completion(pokemons, nil)
            case .failure(let failure):
                completion(nil, failure.localizedDescription)
            }
        }
    }
    
}
