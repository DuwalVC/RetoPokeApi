//
//  PokemonDetailsViewController.swift
//  RetoPokeApi
//
//  Created by dvarillc on 15/03/24.
//

import UIKit

protocol PokemonDetailsViewControllerPresenterProtocol{
    
}

class PokemonDetailsViewController: UIViewController{
    
    var presenter: PokemonDetailsPresenterViewControllerProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
}

extension PokemonDetailsViewController: PokemonDetailsViewControllerPresenterProtocol{
    
}
