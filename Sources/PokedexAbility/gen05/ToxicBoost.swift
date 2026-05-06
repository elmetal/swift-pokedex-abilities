//
//  ToxicBoost.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let toxicBoost = ToxicBoost.ability
}

enum ToxicBoost: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "toxic-boost")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "どくぼうそう"
        default:
            "Toxic Boost"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.v, .japanese):
            "どく・もうどく状態の時、こうげきが1.5倍になる。"
        case (.v, _):
            "When poisoned, Attack is 1.5x."
        default:
            name(locale: locale)
        }
    }
}
