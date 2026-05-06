//
//  PokemonAbility.swift
//  PokedexAbility
//  
//  Created by elmetal on 2026/05/06
//  
//

public struct PokemonAbility: Hashable, Codable, Sendable, RawRepresentable {
    public let rawValue: String

    public init(rawValue: String) {
        self.rawValue = rawValue
    }
}

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
