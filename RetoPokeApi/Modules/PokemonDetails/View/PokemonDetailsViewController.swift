//
//  PokemonDetailsViewController.swift
//  RetoPokeApi
//
//  Created by dvarillc on 15/03/24.
//

import UIKit
import Kingfisher

protocol PokemonDetailsViewControllerPresenterProtocol{
    func setPokeDetails(_ response: PokemonDetails)
}

class PokemonDetailsViewController: UIViewController{
    
    var name: String?
    
    var presenter: PokemonDetailsPresenterViewControllerProtocol?
    @IBOutlet weak var pokemonImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var numAbilitiesLabel: UILabel!
    @IBOutlet weak var experienceBaseLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let name = name else { return }
        getPokemonDetails(name)
    }
    
    func getPokemonDetails(_ name: String){
        presenter?.getPokemonDetails(name)
    }
    
}

extension PokemonDetailsViewController: PokemonDetailsViewControllerPresenterProtocol{
    func setPokeDetails(_ response: PokemonDetails) {
        guard let image = response.sprites.other?.officialArtwork.frontDefault else { return }
        pokemonImage.kf.setImage(with: URL(string: image ))
        nameLabel.text = response.name.capitalizeFirstLetter()
        numAbilitiesLabel.text = String(response.abilities.count)
        experienceBaseLabel.text = String(response.baseExperience)
    }
    
    
    
}
