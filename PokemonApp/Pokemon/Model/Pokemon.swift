//
//  Pokemon.swift
//  PokemonApp
//
//  Created by Caio Cesar on 26/02/23.
//

import Foundation

struct Pokemon: Decodable, Identifiable {
    let id: Int
    let name: String
    let imageUrl: String
    let type: String
    let description: String
    let height: Int
    let weight: Int
}
