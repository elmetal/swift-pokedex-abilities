//
//  StrongJaw.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let strongJaw = StrongJaw.ability
}

enum StrongJaw: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "strong-jaw")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "がんじょうあご"
        default:
            "Strong Jaw"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vi, .japanese):
            "あごやキバでかみつく技の威力が1.5倍になる。"
        case (.vi, _):
            "Biting moves have 1.5x power."
        default:
            name(locale: locale)
        }
    }
}
