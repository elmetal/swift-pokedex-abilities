//
//  QuickFeet.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let quickFeet = QuickFeet.ability
}

enum QuickFeet: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "quick-feet")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "はやあし"
        default:
            "Quick Feet"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iv, .japanese):
            "状態異常の時、すばやさが1.5倍になる。"
        case (.iv, _):
            "When affected by a status condition, Speed is 1.5x."
        default:
            name(locale: locale)
        }
    }
}
