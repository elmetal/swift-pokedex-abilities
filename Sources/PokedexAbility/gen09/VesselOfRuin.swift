//
//  VesselOfRuin.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let vesselOfRuin = VesselOfRuin.ability
}

enum VesselOfRuin: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "vessel-of-ruin")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "わざわいのうつわ"
        default:
            "Vessel of Ruin"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.ix, .japanese):
            "自分以外のポケモンのとくこうが0.75倍になる。"
        case (.ix, _):
            "The Special Attack of all other Pokémon is reduced to 0.75x."
        default:
            name(locale: locale)
        }
    }
}
