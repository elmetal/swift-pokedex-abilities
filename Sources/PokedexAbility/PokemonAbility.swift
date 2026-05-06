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
