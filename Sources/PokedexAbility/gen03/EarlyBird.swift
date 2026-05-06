//
//  EarlyBird.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let earlyBird = EarlyBird.ability
}

enum EarlyBird: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "early-bird")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "はやおき"
        default:
            "Early Bird"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "ねむり状態から通常の半分のターンで目覚める。"
        case (.iii, _):
            "Sleep turns pass twice as quickly."
        default:
            name(locale: locale)
        }
    }
}
