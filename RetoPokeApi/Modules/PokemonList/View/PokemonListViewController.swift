//
//  PokemonListViewController.swift
//  RetoPokeApi
//
//  Created by dvarillc on 15/03/24.
//

import UIKit

protocol PokemonListViewControllerPresenterProtocol{
    
}

class PokemonListViewController: UIViewController{
    
    var presenter: PokemonListPresenterViewControllerProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
}

extension PokemonListViewController: PokemonListViewControllerPresenterProtocol{
    
}
