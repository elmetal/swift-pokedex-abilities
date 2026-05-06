//
//  Cacophony.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let cacophony = Cacophony.ability
}

enum Cacophony: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "cacophony")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "そうおん"
        default:
            "Cacophony"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "第3世代に存在する未使用特性。バトル中の効果はない。"
        case (.iii, _):
            "An unused Generation III Ability. It has no effect in battle."
        default:
            name(locale: locale)
        }
    }
}
