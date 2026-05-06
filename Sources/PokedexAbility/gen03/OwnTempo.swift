//
//  OwnTempo.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let ownTempo = OwnTempo.ability
}

enum OwnTempo: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "own-tempo")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "マイペース"
        default:
            "Own Tempo"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "こんらん状態にならない。"
        case (.iii, _):
            "The Pokémon cannot become confused."
        default:
            name(locale: locale)
        }
    }
}
