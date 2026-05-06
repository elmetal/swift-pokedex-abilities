//
//  BeadsOfRuin.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let beadsOfRuin = BeadsOfRuin.ability
}

enum BeadsOfRuin: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "beads-of-ruin")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "わざわいのたま"
        default:
            "Beads of Ruin"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.ix, .japanese):
            "自分以外のポケモンのとくぼうが0.75倍になる。"
        case (.ix, _):
            "The Special Defense of all other Pokémon is reduced to 0.75x."
        default:
            name(locale: locale)
        }
    }
}
