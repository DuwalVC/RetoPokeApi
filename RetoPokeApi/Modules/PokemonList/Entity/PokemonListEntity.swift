//
//  PokemonListEntity.swift
//  RetoPokeApi
//
//  Created by dvarillc on 15/03/24.
//

import Foundation

// MARK: - PokemonList
struct PokemonList: Codable {
    let count: Int
    let next: String?
    let previous: String?
    let results: [PokemonElement]
}

// MARK: - Result
struct PokemonElement: Codable {
    let name: String
    let url: String
}
