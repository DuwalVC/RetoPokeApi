//
//  PokemonsTableViewCell.swift
//  RetoPokeApi
//
//  Created by dvarillc on 15/03/24.
//

import UIKit
import Kingfisher

class PokemonsTableViewCell: UITableViewCell {

    @IBOutlet weak var pokemonImageView: UIImageView!
    @IBOutlet weak var NameLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setData(urlPokemon: String, title: String){
        let idPokemon = urlPokemon.extractNumberFromURL()
        NameLabel.text = title.capitalizeFirstLetter()
        pokemonImageView.kf.setImage(
            with:URL(string: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/\(idPokemon!).png")
        )
    }
    
    
}
