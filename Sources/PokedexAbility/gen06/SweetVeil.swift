//
//  SweetVeil.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let sweetVeil = SweetVeil.ability
}

enum SweetVeil: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "sweet-veil")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "スイートベール"
        default:
            "Sweet Veil"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vi, .japanese):
            "自分と味方はねむり状態にならない。"
        case (.vi, _):
            "The Pokémon and its allies cannot fall asleep."
        default:
            name(locale: locale)
        }
    }
}
