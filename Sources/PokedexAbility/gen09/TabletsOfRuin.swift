//
//  TabletsOfRuin.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let tabletsOfRuin = TabletsOfRuin.ability
}

enum TabletsOfRuin: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "tablets-of-ruin")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "わざわいのおふだ"
        default:
            "Tablets of Ruin"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.ix, .japanese):
            "自分以外のポケモンのこうげきが0.75倍になる。"
        case (.ix, _):
            "The Attack of all other Pokémon is reduced to 0.75x."
        default:
            name(locale: locale)
        }
    }
}
