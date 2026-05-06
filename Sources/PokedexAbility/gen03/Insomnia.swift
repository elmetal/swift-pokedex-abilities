//
//  Insomnia.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let insomnia = Insomnia.ability
}

enum Insomnia: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "insomnia")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ふみん"
        default:
            "Insomnia"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "ねむり状態にならない。"
        case (.iii, _):
            "The Pokémon cannot fall asleep."
        default:
            name(locale: locale)
        }
    }
}
