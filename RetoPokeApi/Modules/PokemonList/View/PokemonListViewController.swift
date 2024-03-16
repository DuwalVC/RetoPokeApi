//
//  PokemonListViewController.swift
//  RetoPokeApi
//
//  Created by dvarillc on 15/03/24.
//

import UIKit

protocol PokemonListViewControllerPresenterProtocol{
    func setPokeList(_ response: PokemonList)
}

class PokemonListViewController: UIViewController{
    
    var presenter: PokemonListPresenterViewControllerProtocol?
    
    var loading = true
    var pokemonElements: [PokemonElement] = []
    var pokemonList: PokemonList?
    
    @IBOutlet weak var pokemonTableView: UITableView!
    
    override func viewDidLoad() {
        title = "Pokemons"
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated: true)
        
        pokemonTableView.dataSource = self
        pokemonTableView.delegate = self
        
        presenter?.getPokemonList(requestPage: "https://pokeapi.co/api/v2/pokemon/?offset=0&limit=20")
    }
    
}

extension PokemonListViewController: PokemonListViewControllerPresenterProtocol{
    
    func setPokeList(_ response: PokemonList) {
        pokemonElements.append(contentsOf: response.results)
        pokemonList = response
        self.pokemonTableView.reloadData()
        loading = false
    }
    
}

extension PokemonListViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        pokemonElements.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        guard let cell = tableView.dequeueReusableCell(withIdentifier: "pokemonCellIdentifier") as? PokemonsTableViewCell else {
            return PokemonsTableViewCell()
        }
        cell.setData(urlPokemon: pokemonElements[indexPath.row].url, title: pokemonElements[indexPath.row].name)
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter?.showPokemonDetails(pokemon: pokemonElements[indexPath.row])
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}

extension PokemonListViewController: UIScrollViewDelegate{
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let position = scrollView.contentOffset.y
        if position > (pokemonTableView.contentSize.height - 100 - scrollView.frame.size.height) {

            let requestPage = pokemonList?.next
            print("requestPage: " + (requestPage ?? ""))
            
            if requestPage != nil {
                if !loading {
                    loading = true
                    self.presenter?.getPokemonList(requestPage: requestPage!)
                    print("SOLICITANDO .... \(requestPage)")
                } else {
                    print("CARGANDO .... \(requestPage)")
                }
            } else {
                print("No hay mas paginas")
            }
           
            
        }
    }
}
