//
//  Extension.swift
//  RetoPokeApi
//
//  Created by dvarillc on 15/03/24.
//

import Foundation

extension String {
    func capitalizeFirstLetter() -> String {
        guard let primerCaracter = self.first else {
            return self
        }
        return String(primerCaracter).capitalized + dropFirst()
    }
    
    func extractNumberFromURL() -> String? {
        let components = self.components(separatedBy: "/")
        
        if components.count >= 3 {
            let secondToLastComponent = components[components.count - 2]
            return secondToLastComponent
        } else {
            return nil
        }
    }
}
