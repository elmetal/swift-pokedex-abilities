//
//  GuardDog.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let guardDog = GuardDog.ability
}

enum GuardDog: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "guard-dog")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ばんけん"
        default:
            "Guard Dog"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.ix, .japanese):
            "いかくを受けるとこうげきが上がり、強制的に交代させられない。"
        case (.ix, _):
            "Intimidate raises Attack instead of lowering it, and the Pokémon cannot be forced to switch out."
        default:
            name(locale: locale)
        }
    }
}
