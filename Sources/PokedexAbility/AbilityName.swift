//
//  PokemonAbility.swift
//  PokedexAbility
//  
//  Created by elmetal on 2026/05/06
//  
//

public extension PokemonAbility {
    struct Name: Hashable, Sendable {
        let ability: PokemonAbility

        init(ability: PokemonAbility) {
            self.ability = ability
        }
    }

    var name: Name {
        Name(ability: self)
    }
}
