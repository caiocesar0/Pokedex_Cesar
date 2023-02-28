//
//  PokemonView.swift
//  PokemonApp
//
//  Created by Caio Cesar on 26/02/23.
//

import SwiftUI

struct PokemonView: View {
    private let columns = [GridItem(.flexible()), GridItem(.flexible())]
    @ObservedObject var viewModel = PokemonviewModel()
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(viewModel.pokemon) {
                        pokemon in
                        NavigationLink(
                            destination: PokemonDetail( pokemon: pokemon),
                            label: {
                                PokemonCell(pokemon: pokemon, viewModel: viewModel)
                            })
                        .foregroundColor(.black)
                    }
                }
            }.navigationTitle("Pokemon")
        }
    }
}

struct BackButton: View {
    let action: () -> Void
    var body: some View {
        Button(action: action) {
            Image(systemName: "chevron.backward")
                .foregroundColor(.black)
                .padding(.all, 12)
                .background(Color.white)
                .cornerRadius(8.0)
        }
    }
}

struct PokemonView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonView()
    }
}
