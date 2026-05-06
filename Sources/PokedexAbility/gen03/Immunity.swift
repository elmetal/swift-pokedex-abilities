//
//  Immunity.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let immunity = Immunity.ability
}

enum Immunity: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "immunity")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "めんえき"
        default:
            "Immunity"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "どく・もうどく状態にならない。"
        case (.iii, _):
            "The Pokémon cannot be poisoned."
        default:
            name(locale: locale)
        }
    }
}
