//
//  Truant.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let truant = Truant.ability
}

enum Truant: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "truant")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "なまけ"
        default:
            "Truant"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "2ターンに1回しか行動できない。"
        case (.iii, _):
            "The Pokémon can act only every other turn."
        default:
            name(locale: locale)
        }
    }
}
