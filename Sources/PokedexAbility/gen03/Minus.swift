//
//  Minus.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let minus = Minus.ability
}

enum Minus: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "minus")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "マイナス"
        default:
            "Minus"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "ダブルバトルで味方にプラスがいる時、とくこうが1.5倍になる。"
        case (.iii, _):
            "In Double Battles, Special Attack is 1.5x if an ally has Plus."
        default:
            name(locale: locale)
        }
    }
}
