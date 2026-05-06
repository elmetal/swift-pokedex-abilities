//
//  SandRush.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let sandRush = SandRush.ability
}

enum SandRush: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "sand-rush")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "すなかき"
        default:
            "Sand Rush"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.v, .japanese):
            "すなあらしの時、すばやさが2倍になり、すなあらしのダメージを受けない。"
        case (.v, _):
            "During a sandstorm, Speed is doubled and sandstorm damage is prevented."
        default:
            name(locale: locale)
        }
    }
}
