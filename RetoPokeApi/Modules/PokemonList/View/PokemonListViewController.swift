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

        self.navigationItem.setHidesBackButton(true, animated: true)
    }
    
}

extension PokemonListViewController: PokemonListViewControllerPresenterProtocol{
    
}
