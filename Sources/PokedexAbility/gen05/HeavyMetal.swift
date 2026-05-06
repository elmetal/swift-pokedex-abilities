//
//  HeavyMetal.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let heavyMetal = HeavyMetal.ability
}

enum HeavyMetal: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "heavy-metal")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ヘヴィメタル"
        default:
            "Heavy Metal"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.v, .japanese):
            "自分の重さが2倍になる。"
        case (.v, _):
            "The Pokémon's weight is doubled."
        default:
            name(locale: locale)
        }
    }
}
