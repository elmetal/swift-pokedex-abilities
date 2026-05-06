//
//  SandVeil.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let sandVeil = SandVeil.ability
}

enum SandVeil: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "sand-veil")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "すながくれ"
        default:
            "Sand Veil"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "すなあらしの時、回避率が1.25倍になり、すなあらしのダメージを受けない。"
        case (.iii, _):
            "During a sandstorm, evasion is 1.25x and sandstorm damage is prevented."
        default:
            name(locale: locale)
        }
    }
}
