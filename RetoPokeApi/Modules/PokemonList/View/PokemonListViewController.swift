//
//  PokemonListViewController.swift
//  RetoPokeApi
//
//  Created by dvarillc on 15/03/24.
//

import UIKit

protocol PokemonListViewControllerPresenterProtocol{
    func setData(_ response: PokemonList)
}

class PokemonListViewController: UIViewController{
    
    var presenter: PokemonListPresenterViewControllerProtocol?
    
    var loading = false
    var pokemonData: [PokemonElement] = []
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
    func setData(_ response: PokemonList) {
        pokemonData.append(contentsOf: response.results)
        self.pokemonTableView.reloadData()
        loading = false
    }
    
}

extension PokemonListViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        pokemonData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        guard let cell = tableView.dequeueReusableCell(withIdentifier: "pokemonCellIdentifier") as? PokemonsTableViewCell else {
            return PokemonsTableViewCell()
        }
        cell.setData(urlPokemon: pokemonData[indexPath.row].url, title: pokemonData[indexPath.row].name)
        return cell
        
    }
    
    
}

extension PokemonListViewController: UIScrollViewDelegate{
//    func scrollViewDidScroll(_ scrollView: UIScrollView) {
//        let position = scrollView.contentOffset.y
//        if position > (pokemonTableView.contentSize.height - 100 - scrollView.frame.size.height) {
//            
//            let requestPage = pokemonList?.next
//            
//            if let requestPage = requestPage {
//                if !loading {
//                    loading = true
//                    self.presenter?.getPokemonList(requestPage: requestPage)
//                    print("SOLICITANDO .... \(requestPage)")
//                } else {
//                    print("CARGANDO .... \(requestPage)")
//                }
//            } else {
//                print("No hay mas paginas")
//            }
//           
//            
//        }
//    }
}
