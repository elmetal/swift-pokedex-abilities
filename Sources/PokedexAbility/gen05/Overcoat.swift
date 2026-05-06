//
//  Overcoat.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let overcoat = Overcoat.ability
}

enum Overcoat: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "overcoat")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ぼうじん"
        default:
            "Overcoat"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.v, .japanese):
            "天気によるダメージを受けない。"
        case (.v, _):
            "The Pokémon takes no damage from weather."
        default:
            name(locale: locale)
        }
    }
}
